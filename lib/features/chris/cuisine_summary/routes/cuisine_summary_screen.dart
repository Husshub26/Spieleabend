import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/feature_page.dart';
import '../../../../components/cuisine_label.dart';
import '../../../../api/prisma_client.dart';
import '../../../groups/bloc.dart';
import '../bloc/bloc.dart';

// UI/Screen für die Darstellung der Resulatete der Mehrheitswahl (8. Userstory)
class CuisineSummaryScreen extends StatelessWidget {
  const CuisineSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Gruppe für Spielertermin benötigt
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;

    // Direkt nach Erstellung wird mit CuisineSummaryLoadRequested(groupId) das Laden der Daten gestartet
    return BlocProvider(
      create: (ctx) =>
          CuisineSummaryBloc(db: ctx.read<PrismaClient>())
            ..add(CuisineSummaryLoadRequested(groupId)),
      child: const _CuisineSummaryView(),
    );
  }
}

// View des Screens
class _CuisineSummaryView extends StatelessWidget {
  const _CuisineSummaryView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Gewünschte Essensrichtung',
      icon: Icons.poll_outlined,
      subtitle: 'Übersicht für die Gastgeberin / den Gastgeber.',
      // Sobald Änderungen vom State vorliegen, soll das UI neu gebaut werden
      // Abhängig vom State wird ein unterschiedliches UI angezeigt
      child: BlocBuilder<CuisineSummaryBloc, CuisineSummaryState>(
        builder: (context, state) {
          return switch (state) {
            // Daten werden geladen
            CuisineSummaryLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            // Fehler beim Laden liegt vor
            CuisineSummaryError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            // Daten wurden erfolgreich geladen und können somit angezeigt werden
            CuisineSummaryLoaded() => _Body(state: state),
          };
        },
      ),
    );
  }
}

// Inhalte des Screens, wenn Auswertung geladen wurde
class _Body extends StatelessWidget {
  final CuisineSummaryLoaded state;

  const _Body({required this.state});

  @override
  Widget build(BuildContext context) {
    // Sicherstellen, dass eine Session exisitert, sonst kann auch keine Auswertung angezeigt werden
    if (state.session == null) {
      return const EmptyState(
        icon: Icons.event_busy_outlined,
        title: 'Kein aktiver Spieltermin',
        message:
            'Eine Essensrichtung kann erst ausgewertet werden, wenn ein Spieltermin geplant ist.',
      );
    }

    // Sicherstellen, dass Stimmen vorliegen, sonst kann auch keine Auswertung angezeigt werden
    if (state.total == 0 || state.majorityCuisine == null) {
      return const EmptyState(
        icon: Icons.poll_outlined,
        title: 'Noch keine Auswahl',
        message:
            'Es hat noch niemand eine Essensrichtung für diesen Spieltermin ausgewählt.',
      );
    }

    // Sofern aktive Session und Stimmen existieren, kann Auswertung angezeigt werden
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Die oberste Karte zeigt die mehrheitlich gewünsche Essensrichtung an
          SectionCard(
            child: Row(
              children: [
                const Icon(Icons.emoji_events_outlined),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Mehrheitlich gewünscht: ${state.majorityCuisine!.label}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // Für jede Essenrichtung wird jeweils eine eigene Karte angezeigt (diese werden absteigend angezeigt)
          for (final entry in state.counts.entries) ...[
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name der Essensrichtung und Anzahl der Stimmen soll ausgegeben werden
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          entry.key.label,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Text('${entry.value} / ${state.total}'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Ein Fortschrittsbalken wird für jede Essensrichtung angezeigt, sodass die Verhälntiss der Stimmen besser visualisier sind
                  LinearProgressIndicator(
                    value: entry.value / state.total,
                    minHeight: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}
