// Feature 6 (Bruno): Schnelle Nachricht an alle Spieler:innen. // Feature-Kennzeichnung.
import 'package:flutter/material.dart'; // Standard-Material-Bibliothek.
import 'package:flutter_bloc/flutter_bloc.dart'; // BLoC-Integration für Flutter.

import '../../../../api/prisma_client.dart'; // Datenbank-Typen.
import '../../../../components/feature_page.dart'; // Gemeinsame UI-Komponenten.
import '../../../auth/bloc.dart'; // Authentifizierungs-Daten.
import '../../../groups/bloc.dart'; // Gruppen-Daten.
import '../bloc/bloc.dart'; // Lokaler BLoC.

// Vordefinierte Texte für den schnellen Versand ohne Tippen. // Liste von Presets.
const _quickReplies = [
  'Ich verspäte mich um 10 Minuten.',
  'Ich verspäte mich um 30 Minuten.',
  'Ich kann heute leider nicht kommen.',
  'Bin schon unterwegs!',
  'Bin gleich da!',
];

/// Screen zum Versenden von Kurzmitteilungen an die Gruppe. // Dokumentation der Klasse.
class QuickMessageScreen extends StatelessWidget {
  // Oberstes Widget des Features.
  const QuickMessageScreen({super.key}); // Konstruktor.

  @override
  Widget build(BuildContext context) {
    // Erstellt den BLoC-Provider.
    final groupId = context
        .read<GroupsBloc>()
        .state
        .activeGroup
        ?.id; // Holt ID der aktiven Gruppe.
    final me = context
        .read<AuthBloc>()
        .state
        .currentUser!; // Holt aktuellen Benutzer.

    if (groupId == null) {
      // Fallback, falls keine Gruppe gewählt wurde.
      return const FeaturePage(
        // Zeigt Hinweisseite.
        title: 'Schnellnachricht',
        icon: Icons.flash_on_outlined,
        child: Center(child: Text('Keine aktive Gruppe ausgewählt.')),
      );
    }

    return BlocProvider(
      // BLoC für den Feature-Zweig bereitstellen.
      create: (ctx) => QuickMessageBloc(
        // BLoC erstellen.
        db: ctx.read<PrismaClient>(),
        currentDisplayName: me.displayName,
      )..add(QuickMessageLoadRequested(groupId)), // Initiales Laden anfordern.
      child: const _QuickMessageView(), // Untergeordnete Ansicht anzeigen.
    );
  }
}

class _QuickMessageView extends StatelessWidget {
  // Widget zur Reaktion auf Zustände.
  const _QuickMessageView(); // Konstruktor.

  @override
  Widget build(BuildContext context) {
    // Baut UI basierend auf BLoC-Status.
    return FeaturePage(
      // Scaffold mit Titel und Icon.
      title: 'Schnellnachricht',
      icon: Icons.flash_on_outlined,
      subtitle: 'Sende allen anderen Spieler:innen eine kurze Notiz.',
      child: BlocBuilder<QuickMessageBloc, QuickMessageState>(
        // Baut UI bei Status-Änderung neu.
        builder: (context, state) {
          // Builder-Funktion.
          return switch (state) {
            // Switch über die Zustands-Typen.
            QuickMessageLoading() => const Center(
              // Ladekreis anzeigen.
              child: CircularProgressIndicator(),
            ),
            QuickMessageError(:final message) => EmptyState(
              // Fehlerseite anzeigen.
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            QuickMessageLoaded loaded => _Body(
              state: loaded,
            ), // Eigentlichen Inhalt anzeigen.
          };
        },
      ),
    );
  }
}

class _Body extends StatefulWidget {
  // Der Formular-Bereich (Stateful für TextController).
  final QuickMessageLoaded state; // Aktuelle Daten aus dem BLoC.
  const _Body({required this.state}); // Konstruktor.

  @override
  State<_Body> createState() => _BodyState(); // Erzeugt den internen Status.
}

class _BodyState extends State<_Body> {
  // Interner Status für den Screen-Inhalt.
  final TextEditingController _customMessageController =
      TextEditingController(); // Controller für das Textfeld.

  @override
  void dispose() {
    // Aufräumarbeiten.
    _customMessageController.dispose(); // Controller freigeben.
    super.dispose();
  }

  String _formatDate(DateTime date) {
    // Datum formatiert ausgeben.
    return "${date.day}.${date.month}.${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    // Layout des Körpers.
    final session = widget.state.session; // Nächste Session zur Info.

    return BlocListener<QuickMessageBloc, QuickMessageState>(
      // Reagiert auf einmalige Ereignisse (Side-Effects).
      listenWhen: (prev, curr) =>
          curr is QuickMessageLoaded &&
          curr.messageSent, // Nur bei Versand reagieren.
      listener: (context, state) {
        // Listener-Aktion.
        _customMessageController.clear(); // Textfeld nach Senden leeren.
        if (state is QuickMessageLoaded && state.infoMessage != null) {
          // Falls Erfolgsmeldung da...
          ScaffoldMessenger.of(context).showSnackBar(
            // ...Snackbar anzeigen.
            SnackBar(content: Text(state.infoMessage!)),
          );
        }
      },
      child: SingleChildScrollView(
        // Scrollbar machen.
        padding: const EdgeInsets.all(16), // Außenabstand.
        child: Column(
          // Vertikale Anordnung.
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Volle Breite nutzen.
          children: [
            if (widget.state.errorMessage != null) ...[
              // Fehler-Banner bei Bedarf anzeigen.
              _Banner(widget.state.errorMessage!, error: true),
              const SizedBox(height: 8),
            ],
            if (session != null) ...[
              // Session-Info anzeigen, falls vorhanden.
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anstehender Termin: ${_formatDate(session.scheduledAt)}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Ort: ${session.location}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
            const Text(
              // Sektions-Titel.
              'Schnellantworten:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (final preset in _quickReplies) ...[
              // Schleife über die vordefinierten Texte.
              SectionCard(
                child: ListTile(
                  // Klickbare Zeile.
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.bolt_outlined),
                  title: Text(preset),
                  trailing: const Icon(Icons.send_outlined),
                  onTap: () =>
                      context // Bei Klick senden.
                          .read<QuickMessageBloc>()
                          .add(QuickMessageSendRequested(preset)),
                ),
              ),
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 8),
            const Divider(), // Trennlinie.
            const SizedBox(height: 8),
            const Text(
              // Sektions-Titel für eigenes Tippen.
              'Eigene Nachricht verfassen:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SectionCard(
              // Karte für das Eingabefeld.
              child: TextField(
                controller: _customMessageController, // Bindung an Controller.
                decoration: const InputDecoration(
                  hintText: 'Eigene Nachricht eingeben…',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              // Absende-Button.
              icon: const Icon(Icons.send),
              label: const Text('An alle senden'),
              onPressed: () {
                // Validierung vor Versand.
                final text = _customMessageController.text.trim();
                if (text.isNotEmpty) {
                  // Falls nicht leer...
                  context // ...Sende-Event an BLoC.
                      .read<QuickMessageBloc>()
                      .add(QuickMessageSendRequested(text));
                } else {
                  // Falls leer...
                  ScaffoldMessenger.of(context).showSnackBar(
                    // ...Hinweis anzeigen.
                    const SnackBar(
                      content: Text('Bitte gib zuerst einen Text ein.'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  // Hilfs-Widget für Feedback-Meldungen.
  final String text; // Inhalt der Nachricht.
  final bool error; // Flag für Fehler-Styling.
  const _Banner(this.text, {required this.error}); // Konstruktor.
  @override
  Widget build(BuildContext context) {
    // Aufbau des Banners.
    final scheme = Theme.of(context).colorScheme; // Farbschema holen.
    final color = error
        ? scheme.errorContainer
        : scheme.secondaryContainer; // Farbe wählen.
    final on = error
        ? scheme.onErrorContainer
        : scheme.onSecondaryContainer; // Textfarbe wählen.
    return Container(
      // Container mit Hintergrund und Abrundung.
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        // Icon und Text nebeneinander.
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
