import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import '../../../../components/feature_page.dart';
import '../../../../components/cuisine_label.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';
import '../bloc/bloc.dart';

// UI/Screen für die Auwahl der Lieblingsessensrichtung (7. Userstory)
class CuisineReminderScreen extends StatelessWidget {
  const CuisineReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Gruppe für Spielertermin benötigt
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    // Aktueller Nutzer (User-ID) benötigt
    final me = context.read<AuthBloc>().state.currentUser!;

    // Direkt nach Erstellung wird mit CuisineReminderLoadRequested(groupId) das Laden der Daten gestartet
    return BlocProvider(
      create: (ctx) => CuisineReminderBloc(
        db: ctx.read<PrismaClient>(),
        currentUserId: me.id,
      )..add(CuisineReminderLoadRequested(groupId)),
      child: const _CuisineReminderView(),
    );
  }
}

// View des Screens
class _CuisineReminderView extends StatelessWidget {
  const _CuisineReminderView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Lieblingsessen wählen',
      icon: Icons.restaurant_menu_outlined,
      subtitle: 'Welche Essensrichtungen kommen für dich in Frage?',
      // Sobald Änderungen vom State vorliegen, soll das UI neu gebaut werden
      // Abhängig vom State wird ein unterschiedliches UI angezeigt
      child: BlocBuilder<CuisineReminderBloc, CuisineReminderState>(
        builder: (context, state) {
          return switch (state) {
            // Daten werden geladen
            CuisineReminderLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            // Fehler beim Laden liegt vor
            CuisineReminderError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            // Daten wurden erfolgreich geladen und können somit angezeigt werden
            CuisineReminderLoaded() => _Body(state: state),
          };
        },
      ),
    );
  }
}

// Inhalte des Screens, wenn Auswertung geladen wurde
class _Body extends StatelessWidget {
  final CuisineReminderLoaded state;

  const _Body({required this.state});

  @override
  Widget build(BuildContext context) {
    // Wenn keine Session existiert, kann auch keine Essensrichtung ausgwählt werden
    if (state.session == null) {
      return const EmptyState(
        icon: Icons.event_busy_outlined,
        title: 'Kein aktiver Spieltermin',
        message:
            'Du kannst deine Essensrichtung erst wählen, wenn ein Spieltermin geplant ist.',
      );
    }
    // Exisitert eine Session, so wird die Auswahl angezeigt
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Message die ausgegeben werden soll (bspw. bei Fehlern oder bei erfolgreicher Speicherung)
        if (state.message != null) ...[
          SectionCard(child: Text(state.message!)),
          const SizedBox(height: 12),
        ],
        // Karte mit allen Essensrichtung, die der Nutzer auswählen kann
        SectionCard(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              // Für jede gespeicherte Essensrichtung in der lokalen Datenbank wird ein FilterChip erstellt
              for (final cuisine in CuisineType.values)
                FilterChip(
                  label: Text(cuisine.label),
                  selected: state.selected.contains(cuisine),
                  onSelected: state.saving
                      ? null
                      : (_) {
                          // Beim Klicken auf die Essensrichtung wird das Event an .bloc übergeben
                          context.read<CuisineReminderBloc>().add(
                            CuisineReminderCuisineToggled(cuisine),
                          );
                        },
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),

        //Button zum Speichern der Auswahl
        FilledButton.icon(
          icon: const Icon(Icons.save_outlined),
          label: Text(
            state.saving ? 'Wird gespeichert...' : 'Auswahl speichern',
          ),
          onPressed: state.saving
              ? null
              : () {
                  // Beim Klicken auf den Speichern Button wird das Event an .bloc übergeben
                  context.read<CuisineReminderBloc>().add(
                    const CuisineReminderSaveRequested(),
                  );
                },
        ),
      ],
    );
  }
}
