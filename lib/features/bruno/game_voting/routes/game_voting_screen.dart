// Feature 4 (Bruno): Im Vorfeld über Spiele abstimmen.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spieleabend/components/game_label.dart';
import 'package:spieleabend/models/game_type.dart';
import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../api/prisma_client.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';

/// Screen für die Abstimmung über Spiele.
/// Ermöglicht es Benutzern, Spielvorschläge für einen geplanten Termin einzusehen und eigene einzureichen.
class GameVotingScreen extends StatefulWidget {//StatelessWidget {
  const GameVotingScreen({super.key});

@override
State<GameVotingScreen> createState() => _GameVotingScreenState();
}

class _GameVotingScreenState extends State<GameVotingScreen> {
  /// Set der aktuell lokal ausgewählten Spieltypen, die noch nicht gespeichert wurden.
  final Set<GameType> _selected = {};

  @override
  Widget build(BuildContext context) {
    // Zugriff auf DB-Client (Datenbank-Instanz) und die aktuell aktive Gruppe aus dem BLoC-Provider
    final db = context.read<PrismaClient>();
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;

    return FeaturePage(
      title: 'Spiele-Abstimmung',
      icon: Icons.how_to_vote_outlined,
      subtitle: 'Stimme über die vorgeschlagenen Spiele ab!',
      // Lädt asynchron die Session-Daten und bestehende Vorschläge aus der Datenbank.
      child: FutureBuilder<({GameSession? session, List<GameProposal> proposals})>(
        future: () async {
          // 1. Suche nach der nächsten anstehenden (nicht beendeten) Session für diese Gruppe.
          final session = await db.gameSession.findFirst(
            where: GameSessionWhereInput(
              groupId: StringFilter(equals: groupId),
              finished: const BooleanFilter(equals: false),
            ),
            orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
          );
          if (session == null) {
            return (session: null, proposals: <GameProposal>[]);
          }
          // 2. Lade alle Spielvorschläge, die bereits für diese Session existieren.
          final proposals = await db.gameProposal.findMany(
            where: GameProposalWhereInput(
              sessionId: StringFilter(equals: session.id),
            ),
          );
          return (session: session, proposals: proposals);
        }(),
          builder: (context, snapshot) {
            // Lade-Indikator anzeigen, während auf die Datenbank gewartet wird:
            // Zeigt einen Ladekringel, solange die DB-Abfrage läuft.
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            final data = snapshot.data;
            final session = data?.session;
            final existingProposals = data?.proposals ?? [];

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 1. Die Session-Card: Zeigt Details zum nächsten Termin an.
                  if (session != null) ...[
                    SessionDetailsCard(
                      session: session,
                      canFinish: false,
                      host: null,
                    ),
                    const SizedBox(height: 16),
                  ],

                  // 2. Anzeige der Vorschläge: Bereits in der DB gespeichert + Aktuelle lokale Auswahl.
                  SectionCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Vorgeschlagene Spiele für diesen Termin:',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        if (_selected.isEmpty && existingProposals.isEmpty)
                          const Text(
                            'Noch keine Spiele ausgewählt. Wähle unten welche aus!',
                            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                          )
                        else
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              // Liste der bereits in der DB gespeicherten Vorschläge.
                              for (final p in existingProposals)
                                Chip(
                                  label: Text(p.title),
                                  avatar: const Icon(Icons.check, size: 16),
                                  backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                                  onDeleted: () => guard(context, () async {
                                    // Löscht den Vorschlag direkt aus der Datenbank.
                                    await db.gameProposal.delete(
                                      where: GameProposalWhereUniqueInput(id: p.id),
                                    );
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Vorgeschlagene Spiele upgedatet!')),
                                      );
                                      setState(() {}); // UI neu laden.
                                    }
                                  }),
                                ),
                              // Liste der lokal ausgewählten Spiele (noch nicht in DB).
                              for (final game in _selected)
                                Chip(
                                  label: Text(game.label),
                                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                                  onDeleted: () => setState(() {
                                    _selected.remove(game); // Aus lokaler Auswahl entfernen.
                                  }),
                                ),
                            ],
                          ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 3. Auswahlbereich: FilterChips für verfügbare Spieltypen.
                  const Text(
                    'Welche Spiele interessieren dich?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SectionCard(
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        // Erstellt für jeden verfügbaren Spieltyp einen anklickbaren Chip.
                        for (final g in GameType.values)
                          FilterChip(
                            label: Text(g.label),
                            selected: _selected.contains(g),
                            onSelected: (v) => setState(() {
                              if (v) {
                                _selected.add(g);
                              } else {
                                _selected.remove(g);
                              }
                            }),
                          ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 4. Speicher-Button: Schreibt die lokale Auswahl in die Datenbank.
                  FilledButton.icon(
                    icon: const Icon(Icons.save_outlined),
                    label: const Text('Auswahl speichern'),
                    onPressed: _selected.isEmpty || session == null
                        ? null // Deaktiviert, wenn nichts gewählt oder keine Session da ist
                        : () => guard(context, () async {
                      final currentUser = context.read<AuthBloc>().state.currentUser;

                      if (currentUser == null) return;

                      // Titel der bereits vorhandenen Vorschläge sammeln.
                      final existingTitles = existingProposals.map((p) => p.title).toSet();

                      for (final game in _selected) {
                        // Nur speichern, wenn das Spiel nicht bereits vorgeschlagen wurde.
                        if (existingTitles.contains(game.label)) {
                          continue;
                        }

                        await db.gameProposal.create(
                          data: CreateGameProposalInput(
                            title: game.label,
                            description: 'Vorgeschlagen via App',
                            proposedById: currentUser.id,
                            sessionId: session.id,
                          ),
                        );
                      }

                      if (context.mounted) {
                        // Feedback an den Nutzer: Erfolgsmeldung
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Spiele erfolgreich gespeichert!')),
                        );
                        setState(() {
                          _selected.clear(); // Lokale Auswahl nach Erfolg leeren.
                        });
                      }
                    }),
                  ),
                ],
              ),
            );
          }


      ),
    );
  }
}

// --- Hilfs-Widget für die Session-Card ---
/// Zeigt Informationen zu einem Spieltermin an.
/// Enthält Datum und Ort der geplanten Session.
class SessionDetailsCard extends StatelessWidget {
  final dynamic session;
  final dynamic host;
  final bool canFinish;

  const SessionDetailsCard({
    super.key,
    required this.session,
    required this.host,
    required this.canFinish,
  });

  /// Formatiert das Datum für die Anzeige.
  String _formatDate(DateTime date) {
    return "${date.day}.${date.month}.${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _formatDate(session.scheduledAt),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          _Row(icon: Icons.location_on_outlined, text: session.location),
          const SizedBox(height: 8),
//          _Row(
//            icon: Icons.person_outline,
//            text: 'Gastgeber:in: ${host?.displayName ?? '—'}',
//          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

/// Einfache Zeile mit Icon und Text für die Detailansicht.
class _Row extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Row({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20),
        const SizedBox(width: 8),
        Expanded(child: Text(text)),
      ],
    );
  }
}
