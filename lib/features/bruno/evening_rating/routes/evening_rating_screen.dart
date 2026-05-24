// Feature 5 (Bruno): Bewertung im Anschluss an den Termin.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../api/prisma_client.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';

/// Haupt-Widget für den Bewertungs-Screen.
class EveningRatingScreen extends StatefulWidget {
  const EveningRatingScreen({super.key});

  @override
  State<EveningRatingScreen> createState() => _EveningRatingScreenState();
}

class _EveningRatingScreenState extends State<EveningRatingScreen> {
  // Lokale Status-Variablen für die Sterne-Bewertungen (Standardwert 4).
  int host = 4, food = 4, evening = 4;
  // Controller für das Kommentar-Eingabefeld.
  final TextEditingController _commentController = TextEditingController();
  // Flag, um zu verhindern, dass geladene Daten bei jedem Widget-Rebuild die Nutzereingaben überschreiben.
  bool _initialLoadDone = false;

  // Formatiert ein DateTime-Objekt in das deutsche Format DD.MM.YYYY.
  String _formatDate(DateTime date) {
    return "${date.day}.${date.month}.${date.year}";
  }

  @override
  void dispose() {
    // Ressourcen des Controllers freigeben, wenn der Screen verlassen wird.
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Zugriff auf DB-Client (Datenbank-Instanz), die aktuelle aktive Gruppe und aktuellen Nutzer aus dem BLoC-Provider.
    final db = context.read<PrismaClient>();
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    final currentUser = context.read<AuthBloc>().state.currentUser;

    return FeaturePage(
      title: 'Abend bewerten',
      icon: Icons.star_outline_rounded,
      subtitle: 'Bewerte Gastgeber:in, Essen und den Abend insgesamt.',
      // FutureBuilder koordiniert das Laden der Session und einer eventuell vorhandenen Bewertung.
      child: FutureBuilder<({GameSession? session, EveningRating? existingRating})>(
        future: () async {
          // 1. Suche nach der zuletzt beendeten Spielsession in dieser Gruppe.
          final session = await db.gameSession.findFirst(
            where: GameSessionWhereInput(
              groupId: StringFilter(equals: groupId),
              finished: const BooleanFilter(equals: true),
            ),
            orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.desc),
          );
          if (session == null || currentUser == null) {
            return (session: session, existingRating: null);
          }
          // 2. Prüfen, ob der User für genau diese Session bereits eine Bewertung abgegeben hat.
          final rating = await db.eveningRating.findFirst(
            where: EveningRatingWhereInput(
              sessionId: StringFilter(equals: session.id),
              userId: StringFilter(equals: currentUser.id),
            ),
          );
          return (session: session, existingRating: rating);
        }(),
        builder: (context, snapshot) {
          // Lade-Indikator anzeigen, während auf die Datenbank gewartet wird:
          // Zeigt einen Ladekringel, solange die DB-Abfrage läuft.
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final session = snapshot.data?.session;
          final existingRating = snapshot.data?.existingRating;

          // Falls kein beendeter Termin gefunden wurde, wird ein Hinweistext angezeigt.
          if (session == null) {
            return const EmptyState(
              icon: Icons.event_busy_outlined,
              title: 'Kein beendeter Termin',
              message: 'Bewertungen können erst abgegeben werden, wenn ein Termin beendet wurde.',
            );
          }

          // Falls bereits eine Bewertung in der DB existiert, werden die lokalen Slider/Texte einmalig damit befüllt.
          if (existingRating != null && !_initialLoadDone) {
            host = existingRating.hostScore;
            food = existingRating.foodScore;
            evening = existingRating.eveningScore;
            _commentController.text = existingRating.comment;
            _initialLoadDone = true;
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Sektion 0: Anzeige von Datum und Ort des Termins, der bewertet wird.
                SectionCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _formatDate(session.scheduledAt),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 12),
                      _InfoRow(icon: Icons.location_on_outlined, text: session.location),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Sektion 1: Zusammenfassung der bereits gespeicherten Bewertung (falls vorhanden).
                if (existingRating != null) ...[
                  SectionCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Deine gespeicherte Bewertung:',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        _SummaryRow(label: 'Gastgeber:in', stars: existingRating.hostScore),
                        _SummaryRow(label: 'Essen', stars: existingRating.foodScore),
                        _SummaryRow(label: 'Abend', stars: existingRating.eveningScore),
                        if (existingRating.comment.isNotEmpty) ...[
                          const Divider(),
                          Text(
                            existingRating.comment,
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // Sektion 2: Interaktive Sterne-Bewertung für die drei Kategorien.
                _RatingRow(
                  label: 'Gastgeber:in',
                  value: host,
                  onChanged: (v) => setState(() => host = v),
                ),
                const SizedBox(height: 12),
                _RatingRow(
                  label: 'Essen',
                  value: food,
                  onChanged: (v) => setState(() => food = v),
                ),
                const SizedBox(height: 12),
                _RatingRow(
                  label: 'Abend insgesamt',
                  value: evening,
                  onChanged: (v) => setState(() => evening = v),
                ),
                const SizedBox(height: 16),
                // Sektion 3: Freitextfeld für zusätzliche Kommentare.
                SectionCard(
                  child: TextField(
                    controller: _commentController,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: 'Kommentar (optional)',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Sektion 4: Absende-Button. Führt entweder ein 'create' oder 'update' in der DB aus.
                FilledButton.icon(
                  icon: const Icon(Icons.send),
                  label: Text(existingRating == null ? 'Bewertung absenden' : 'Bewertung aktualisieren'),
                  onPressed: currentUser == null
                      ? null
                      : () => guard(context, () async {
                          if (existingRating == null) {
                            // Neue Bewertung erstellen.
                            await db.eveningRating.create(
                              data: CreateEveningRatingInput(
                                sessionId: session.id,
                                userId: currentUser.id,
                                hostScore: host,
                                foodScore: food,
                                eveningScore: evening,
                                comment: _commentController.text,
                              ),
                            );
                          } else {
                            // Bestehende Bewertung überschreiben.
                            await db.eveningRating.update(
                              where: EveningRatingWhereUniqueInput(id: existingRating.id),
                              data: UpdateEveningRatingInput(
                                hostScore: host,
                                foodScore: food,
                                eveningScore: evening,
                                comment: _commentController.text,
                              ),
                            );
                          }
                          if (context.mounted) {
                            // Feedback an den Nutzer: Erfolgsmeldung und UI-Refresh triggern.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Bewertung erfolgreich gespeichert!')),
                            );
                            setState(() {
                              _initialLoadDone = false; // Ermöglicht Neuladen beim nächsten Build
                            });
                          }
                        }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// Hilfs-Widget für eine Bewertungs-Zeile mit 5 interaktiven Sternen.
class _RatingRow extends StatelessWidget {
  final String label;
  final int value;
  final ValueChanged<int> onChanged;
  const _RatingRow({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Row(
            children: [
              // Erzeugt 5 IconButtons, die beim Klicken den Wert ändern.
              for (var i = 1; i <= 5; i++)
                IconButton(
                  onPressed: () => onChanged(i),
                  icon: Icon(
                    i <= value ? Icons.star_rounded : Icons.star_border_rounded,
                    color: Colors.amber,
                    size: 32,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Einfache Zeile zur Darstellung von Icon und Text (z.B. Ort).
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoRow({required this.icon, required this.text});

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

/// Zeile für die Zusammenfassung, die Sterne als statische Icons anzeigt.
class _SummaryRow extends StatelessWidget {
  final String label;
  final int stars;
  const _SummaryRow({required this.label, required this.stars});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Expanded(child: Text(label)),
          // Zeigt gefüllte oder leere Sterne basierend auf der Punktzahl.
          for (var i = 0; i < 5; i++)
            Icon(
              i < stars ? Icons.star_rounded : Icons.star_outline_rounded,
              size: 16,
              color: Colors.amber,
            ),
        ],
      ),
    );
  }
}
