// Feature 5 (Bruno): Bewertung im Anschluss an den Termin.
import 'package:flutter/material.dart'; // Importiert die Flutter-Material-Komponenten.
import 'package:flutter_bloc/flutter_bloc.dart'; // Importiert die BLoC-Widgets für das Zustandsmanagement.

import '../../../../api/prisma_client.dart'; // Importiert den Datenbank-Client.
import '../../../../components/feature_page.dart'; // Importiert das allgemeine Seiten-Grundgerüst.
import '../../../auth/bloc.dart'; // Importiert den Auth-BLoC (für den aktuellen User).
import '../../../groups/bloc.dart'; // Importiert den Gruppen-BLoC (für die aktive Gruppe).
import '../bloc/bloc.dart'; // Importiert den Logik-Teil (BLoC) für die Bewertung.

/// Haupt-Widget für den Bewertungs-Screen.
/// Es stellt den BlocProvider bereit, damit untergeordnete Widgets auf den EveningRatingBloc zugreifen können.
class EveningRatingScreen extends StatelessWidget {
  const EveningRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Holt die ID der aktuell aktiven Gruppe.
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    // Holt den aktuell angemeldeten Benutzer.
    final me = context.read<AuthBloc>().state.currentUser!;

    // Initialisiert den BlocProvider für diesen Screen.
    return BlocProvider(
      create: (ctx) =>
          EveningRatingBloc(db: ctx.read<PrismaClient>(), currentUserId: me.id)
            ..add(
              EveningRatingLoadRequested(groupId),
            ), // Triggert sofort das Laden der Daten.
      child: const _RatingView(),
    );
  }
}

/// Die eigentliche Ansicht des Screens.
/// Nutzt einen BlocBuilder, um auf Zustandsänderungen des EveningRatingBloc zu reagieren.
class _RatingView extends StatelessWidget {
  const _RatingView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Abend bewerten',
      icon: Icons.star_outline_rounded,
      subtitle: 'Bewerte Gastgeber:in, Essen und den Abend insgesamt.',
      // Baut die UI basierend auf dem aktuellen Zustand des BLoCs auf.
      child: BlocBuilder<EveningRatingBloc, EveningRatingState>(
        builder: (context, state) {
          return switch (state) {
            EveningRatingLoading() => const Center(
              // Zeigt einen Ladeindikator an.
              child: CircularProgressIndicator(),
            ),
            EveningRatingError(message: final m) => EmptyState(
              // Zeigt eine Fehlermeldung an.
              icon: Icons.error_outline,
              title: 'Fehler',
              message: m,
            ),
            EveningRatingLoaded loaded => _Body(
              state: loaded,
            ), // Zeigt das Formular an.
          };
        },
      ),
    );
  }
}

/// Das Formular für die Bewertung.
/// Als StatefulWidget implementiert, um den TextEditingController für das Kommentarfeld zu verwalten.
class _Body extends StatefulWidget {
  final EveningRatingLoaded state;
  const _Body({required this.state});

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  // Controller für das Texteingabefeld des Kommentars.
  late final TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    // Initialisiert den Controller mit dem Kommentar aus dem aktuellen Zustand.
    _commentController = TextEditingController(text: widget.state.comment);
  }

  @override
  void dispose() {
    // Gibt die Ressourcen des Controllers frei.
    _commentController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(_Body oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Aktualisiert das Textfeld, wenn sich der Zustand im BLoC ändert (z.B. nach dem Speichern).
    if (oldWidget.state.existingRating != widget.state.existingRating ||
        (oldWidget.state.comment != widget.state.comment &&
            _commentController.text != widget.state.comment)) {
      _commentController.text = widget.state.comment;
    }
  }

  // Hilfsmethode zur Formatierung des Datums (DD.MM.YYYY).
  String _formatDate(DateTime date) {
    return "${date.day}.${date.month}.${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    final session = widget.state.session;
    final existingRating = widget.state.existingRating;

    // Falls kein Termin gefunden wurde, der bewertet werden kann.
    if (session == null) {
      return const EmptyState(
        icon: Icons.event_busy_outlined,
        title: 'Kein beendeter Termin',
        message:
            'Bewertungen können erst abgegeben werden, wenn ein Termin beendet wurde.',
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Zeigt ein Fehlerbanner an, wenn eine Fehlermeldung vorliegt.
          if (widget.state.errorMessage != null) ...[
            _Banner(widget.state.errorMessage!, error: true),
            const SizedBox(height: 8),
          ],
          // Zeigt ein Infobanner an (z.B. Erfolgsmeldung).
          if (widget.state.infoMessage != null) ...[
            _Banner(widget.state.infoMessage!, error: false),
            const SizedBox(height: 8),
          ],
          // Karte mit den Details zum Termin (Datum und Ort).
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _formatDate(session.scheduledAt),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12),
                _InfoRow(
                  icon: Icons.location_on_outlined,
                  text: session.location,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Falls der User diesen Termin bereits bewertet hat, wird die alte Bewertung zur Info angezeigt.
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
                  _SummaryRow(
                    label: 'Gastgeber:in',
                    stars: existingRating.hostScore,
                  ),
                  _SummaryRow(label: 'Essen', stars: existingRating.foodScore),
                  _SummaryRow(
                    label: 'Abend',
                    stars: existingRating.eveningScore,
                  ),
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
          // Zeilen für die Sterne-Bewertung in verschiedenen Kategorien.
          _RatingRow(
            label: 'Gastgeber:in',
            value: widget.state.hostScore,
            onChanged: (v) =>
                context // Schickt Event an den BLoC bei Änderung.
                    .read<EveningRatingBloc>()
                    .add(EveningRatingHostScoreChanged(v)),
          ),
          const SizedBox(height: 12),
          _RatingRow(
            label: 'Essen',
            value: widget.state.foodScore,
            onChanged: (v) =>
                context // Schickt Event an den BLoC bei Änderung.
                    .read<EveningRatingBloc>()
                    .add(EveningRatingFoodScoreChanged(v)),
          ),
          const SizedBox(height: 12),
          _RatingRow(
            label: 'Abend insgesamt',
            value: widget.state.eveningScore,
            onChanged: (v) =>
                context // Schickt Event an den BLoC bei Änderung.
                    .read<EveningRatingBloc>()
                    .add(EveningRatingEveningScoreChanged(v)),
          ),
          const SizedBox(height: 16),
          // Eingabefeld für den optionalen Freitext-Kommentar.
          SectionCard(
            child: TextField(
              controller: _commentController,
              maxLines: 4,
              onChanged: (v) => context.read<EveningRatingBloc>().add(
                EveningRatingCommentChanged(v),
              ),
              decoration: const InputDecoration(
                hintText: 'Kommentar (optional)',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Button zum Absenden oder Aktualisieren der Bewertung.
          FilledButton.icon(
            icon: const Icon(Icons.send),
            label: Text(
              existingRating == null
                  ? 'Bewertung absenden'
                  : 'Bewertung aktualisieren',
            ), // Dynamischer Button-Text.
            onPressed: () => context.read<EveningRatingBloc>().add(
              const EveningRatingSaveRequested(),
            ),
          ),
          const SizedBox(height: 24),
          if (widget.state.history.isNotEmpty) ...[
            Text(
              'Vergangene Bewertungen',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            ...widget.state.history.map((item) {
              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: const Icon(Icons.history),
                  title: Text(_formatDate(item.session.scheduledAt)),
                  subtitle: Text(item.session.location),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.avg.toStringAsFixed(1),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.star_rounded,
                            size: 16,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      Text(
                        '${item.count} Stimmen',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ],
      ),
    );
  }
}

/// Hilfs-Widget für Info- oder Fehlerbanner am oberen Rand des Inhalts.
class _Banner extends StatelessWidget {
  final String text;
  final bool error;
  const _Banner(this.text, {required this.error});
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    // Wählt die Farben basierend darauf aus, ob es ein Fehler ist oder nicht.
    final color = error ? scheme.errorContainer : scheme.secondaryContainer;
    final on = error ? scheme.onErrorContainer : scheme.onSecondaryContainer;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(error ? Icons.error_outline : Icons.info_outline, color: on),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: TextStyle(color: on)),
          ),
        ],
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
