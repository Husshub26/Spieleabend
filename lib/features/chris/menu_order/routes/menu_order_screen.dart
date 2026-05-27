import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import '../../../../components/cuisine_label.dart';
import '../../../../components/feature_page.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';
import '../bloc/bloc.dart';

// UI/Screen für die Auswahl der Lieferdienste, Gerichte und Übermittelung der Bestellung (9. Userstory)
class MenuOrderScreen extends StatelessWidget {
  const MenuOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Gruppe für Spielertermin benötigt
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    // Aktueller Nutzer (User-ID) benötigt
    final me = context.read<AuthBloc>().state.currentUser!;
    // Direkt nach Erstellung wird mit MenuOrderLoadRequested(groupId) das Laden der Daten gestartet
    return BlocProvider(
      create: (ctx) =>
          MenuOrderBloc(db: ctx.read<PrismaClient>(), currentUserId: me.id)
            ..add(MenuOrderLoadRequested(groupId)),
      child: const _MenuOrderView(),
    );
  }
}

// View des Menü-/Bestellscreens
class _MenuOrderView extends StatelessWidget {
  const _MenuOrderView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Menü & Bestellung',
      icon: Icons.menu_book_outlined,
      subtitle: 'Wähle Gerichte aus und übermittle deine Bestellung.',
      // Sobald Änderungen vom State vorliegen, soll das UI neu gebaut werden
      // Abhängig vom State wird ein unterschiedliches UI angezeigt
      child: BlocBuilder<MenuOrderBloc, MenuOrderState>(
        builder: (context, state) {
          return switch (state) {
            // Daten werden geladen
            MenuOrderLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            // Fehler beim Laden liegt vor
            MenuOrderError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            // Daten wurden erfolgreich geladen und können somit angezeigt werden
            MenuOrderLoaded() => _Body(state: state),
          };
        },
      ),
    );
  }
}

// Inhalt des Screens, nachdem alle Daten geladen wurden
class _Body extends StatelessWidget {
  // Geladener Zustand
  final MenuOrderLoaded state;

  const _Body({required this.state});

  @override
  Widget build(BuildContext context) {
    // Exisitert noch keine Session, so darf auch noch nichts bestellt werden
    if (state.session == null) {
      return const EmptyState(
        icon: Icons.event_busy_outlined,
        title: 'Kein aktiver Spieltermin',
        message: 'Du kannst erst bestellen, wenn ein Termin geplant ist.',
      );
    }
    // Existiert kein Lieferdiesnt für die gewünschte Essensrichtung, kann auch kein Menü angezeigt werden
    if (state.service == null) {
      return EmptyState(
        icon: Icons.no_meals_outlined,
        title: 'Kein Menü verfügbar',
        message:
            state.message ??
            'Sobald eine Essensrichtung gewählt wurde, erscheint hier ein Menü.',
      );
    }
    // Sofern Session und Lieferdienst existieren, kann Menü angezeigt werden
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Sofern eine Meldung vorliegt, kann diese hier angezeigt werden (bspw. korrektes übermitteln oder ein aufgetretener Fehler)
        if (state.message != null) ...[
          Text(state.message!),
          const SizedBox(height: 12),
        ],
        // Lieferdienst mit Name und Essensrichtung anzeigen
        SectionCard(
          child: ListTile(
            leading: const Icon(Icons.storefront_outlined),
            title: Text(state.service!.name),
            subtitle: Text('Küche: ${state.service!.cuisine.label}'),
          ),
        ),
        // Aufgegebene Bestellung ausgeben
        const SizedBox(height: 12),
        if (state.order != null && state.selectedIds.isNotEmpty) ...[
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deine aktuelle Bestellung',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                for (final item in state.items.where(
                  (item) => state.selectedIds.contains(item.id),
                ))
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Text('${item.priceEur.toStringAsFixed(2)} €'),
                      ],
                    ),
                  ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Bestellung löschen'),
                    onPressed: state.saving
                        ? null
                        : () {
                            context.read<MenuOrderBloc>().add(
                              const MenuOrderDeleteRequested(),
                            );
                          },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
        // Liste der Gerichte des Lieferdienstes ausgeben
        Expanded(
          child: ListView.separated(
            itemCount: state.items.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            // Jeder Menüeintrag soll als Checkbox fungieren (damit aus- oder abgewählt werden kann)
            itemBuilder: (_, i) {
              final item = state.items[i];
              final selected = state.selectedIds.contains(item.id);

              return SectionCard(
                child: CheckboxListTile(
                  value: selected,
                  onChanged: state.saving
                      ? null
                      : (value) {
                          // Bei jeder Änderung (Aus- und Abwahl) wird ein Event an .bloc übergeben
                          context.read<MenuOrderBloc>().add(
                            MenuOrderItemToggled(item.id, value ?? false),
                          );
                        },
                  // Name, Beschreibung und Preis des Menüeintrags
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(item.name),
                  subtitle: Text(item.description),
                  secondary: Text('${item.priceEur.toStringAsFixed(2)} €'),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 12),

        //Buttom zum Absenden der Bestellung
        FilledButton.icon(
          icon: const Icon(Icons.send),
          label: Text(
            state.saving ? 'Wird übermittelt...' : 'Bestellung übermitteln',
          ),
          onPressed: state.saving
              ? null
              : () {
                  // Event an .bloc übergeben
                  context.read<MenuOrderBloc>().add(
                    const MenuOrderSubmitRequested(),
                  );
                },
        ),
      ],
    );
  }
}
