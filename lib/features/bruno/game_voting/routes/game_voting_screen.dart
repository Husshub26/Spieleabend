// Feature 4 (Bruno): Im Vorfeld über Spiele abstimmen.
import 'package:flutter/material.dart'; // Import der Flutter-Material-Design-Bibliothek.
import 'package:flutter_bloc/flutter_bloc.dart'; // Import für das BLoC-System (Provider, Builder).

import '../../../../api/prisma_client.dart'; // Datenbank-Definitionen (GameSession, etc.).
import '../../../../components/feature_page.dart'; // Basis-Layout für Features.
import '../../../../components/game_label.dart'; // Umrechnung von Enums in Text.
import '../../../../models/game_type.dart'; // Das GameType-Enum Modell.
import '../../../auth/bloc.dart'; // Zugriff auf Informationen zum angemeldeten User.
import '../../../groups/bloc.dart'; // Zugriff auf Informationen zur aktiven Gruppe.
import '../bloc/bloc.dart'; // Import der lokalen BLoC-Logik.

/// Screen für die Abstimmung über Spiele.
/// Ermöglicht es Benutzern, Spielvorschläge für einen geplanten Termin einzusehen und eigene einzureichen.
class GameVotingScreen extends StatelessWidget {
  // Als StatelessWidget definiert, da der Zustand im BLoC lebt.
  const GameVotingScreen({super.key}); // Standard-Konstruktor.

  @override
  Widget build(BuildContext context) {
    // Aufbau des Widgets.
    final groupId = context
        .read<GroupsBloc>()
        .state
        .activeGroup!
        .id; // ID der aktiven Gruppe aus dem Gruppen-BLoC holen.
    final me = context
        .read<AuthBloc>()
        .state
        .currentUser!; // Eigene User-ID aus dem Auth-BLoC holen.

    return BlocProvider(
      // BLoC für diesen Teilbaum bereitstellen.
      create:
          (ctx) => // Erstellung der BLoC-Instanz.
              GameVotingBloc(
                  db: ctx.read<PrismaClient>(),
                  currentUserId: me.id,
                ) // DB und User-ID injizieren.
                ..add(
                  GameVotingLoadRequested(groupId),
                ), // Sofortiges Laden der Daten anstoßen.
      child: const _VotingView(), // Unter-Widget für die eigentliche Ansicht.
    );
  }
}

class _VotingView extends StatelessWidget {
  // Ansicht, die auf BLoC-Zustände reagiert.
  const _VotingView(); // Konstruktor.

  @override
  Widget build(BuildContext context) {
    // Aufbau der UI-Struktur.
    return FeaturePage(
      // Konsistenter Seiten-Scaffold.
      title: 'Spiele-Abstimmung', // Titel der Seite.
      icon: Icons.how_to_vote_outlined, // Passendes Icon.
      subtitle: 'Stimme über die vorgeschlagenen Spiele ab!', // Hilfstext.

      child: BlocBuilder<GameVotingBloc, GameVotingState>(
        // Reagiert auf Zustandsänderungen des GameVotingBloc.
        builder: (context, state) {
          // Builder-Funktion mit aktuellem State.
          return switch (state) {
            // Auswahl der UI basierend auf dem State-Typ.
            GameVotingLoading() => const Center(
              // Fall: Daten werden noch geladen.
              child: CircularProgressIndicator(), // Ladekreis anzeigen.
            ),
            GameVotingError(:final message) => EmptyState(
              // Fall: Ein Fehler ist aufgetreten.
              icon: Icons.error_outline, // Fehler-Icon.
              title: 'Fehler', // Überschrift.
              message: message, // Fehlermeldung anzeigen.
            ),
            GameVotingLoaded() => _Body(
              state: state,
            ), // Fall: Daten erfolgreich geladen -> Inhalt anzeigen.
          };
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  // Der Hauptinhalt der Seite bei geladenen Daten.
  final GameVotingLoaded state; // Der aktuelle Zustand mit den Daten.
  const _Body({required this.state}); // Konstruktor.

  @override
  Widget build(BuildContext context) {
    // Aufbau des Inhalts.
    final session = state.session; // Referenz auf die geladene Session.

    if (session == null) {
      // Falls keine Session für die Gruppe existiert.
      return const EmptyState(
        // Platzhalter anzeigen.
        icon: Icons.event_busy_outlined, // "Kein Event" Icon.
        title: 'Kein aktiver Termin', // Überschrift.
        message:
            'Es ist aktuell kein Termin für eine Abstimmung geplant.', // Textnachricht.
      );
    }

    return SingleChildScrollView(
      // Ermöglicht Scrollen bei viel Inhalt.
      child: Column(
        // Vertikale Anordnung der Elemente.
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Nutzt die volle Breite.
        children: [
          if (state.errorMessage != null) ...[
            // Falls eine Fehlermeldung im State vorliegt...
            _Banner(
              state.errorMessage!,
              error: true,
            ), // ...Fehlerbanner anzeigen.
            const SizedBox(height: 8), // Abstand.
          ],
          if (state.infoMessage != null) ...[
            // Falls eine Infomeldung vorliegt...
            _Banner(
              state.infoMessage!,
              error: false,
            ), // ...Infobanner anzeigen.
            const SizedBox(height: 8), // Abstand.
          ],
          SessionDetailsCard(
            // Karte mit Datum und Ort der Session.
            session: session, // Die Session-Daten.
            canFinish: false, // Hier kann nicht beendet werden.
            host: null, // Gastgeber hier nicht relevant.
          ),
          const SizedBox(height: 16), // Abstand.
          SectionCard(
            // Karte für die Übersicht der Vorschläge.
            child: Column(
              // Vertikale Anordnung innerhalb der Karte.
              crossAxisAlignment: CrossAxisAlignment.start, // Linksbündig.
              children: [
                const Text(
                  // Überschrift der Sektion.
                  'Vorgeschlagene Spiele für diesen Termin:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8), // Abstand.
                if (state.selectedTypes.isEmpty &&
                    state.proposals.isEmpty) // Fall: Gar nichts gewählt.
                  const Text(
                    // Hinweistext.
                    'Noch keine Spiele ausgewählt. Wähle unten welche aus!',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  )
                else // Sonst...
                  Wrap(
                    // Fließ-Layout für die Chips.
                    spacing: 8, // Horizontaler Abstand.
                    runSpacing: 8, // Vertikaler Abstand bei Zeilenumbruch.
                    children: [
                      for (final p
                          in state
                              .proposals) // Schleife über existierende DB-Vorschläge.
                        Chip(
                          // Chip für das Spiel.
                          label: Text(p.title), // Name des Spiels.
                          avatar: const Icon(
                            Icons.check,
                            size: 16,
                          ), // Haken als Status "gespeichert".
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer, // Dezente Farbe.
                          onDeleted: () =>
                              context // Callback zum Löschen.
                                  .read<GameVotingBloc>() // BLoC-Zugriff.
                                  .add(
                                    GameVotingDeleteRequested(p.id),
                                  ), // Event an BLoC senden.
                        ),
                      for (final game
                          in state
                              .selectedTypes) // Schleife über lokale (ungespeicherte) Auswahl.
                        Chip(
                          // Chip für das Spiel.
                          label: Text(game.label), // Name aus Enum konvertiert.
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primaryContainer, // Kräftigere Farbe für "Neu".
                          onDeleted: () =>
                              context // Callback zum Abwählen.
                                  .read<GameVotingBloc>() // BLoC-Zugriff.
                                  .add(
                                    GameVotingTypeToggled(game),
                                  ), // Event an BLoC senden.
                        ),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20), // Großer Abstand.
          const Text(
            // Überschrift für den Auswahlbereich.
            'Welche Spiele interessieren dich?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8), // Abstand.
          SectionCard(
            // Karte mit allen verfügbaren Spieltypen.
            child: Wrap(
              // Fließ-Layout für FilterChips.
              spacing: 8, // Horizontaler Abstand.
              runSpacing: 8, // Vertikaler Abstand.
              children: [
                for (final g
                    in GameType
                        .values) // Schleife über alle Enums des GameType Modells.
                  FilterChip(
                    // Interaktiver Chip.
                    label: Text(g.label), // Deutscher Name des Spiels.
                    selected: state.selectedTypes.contains(
                      g,
                    ), // Selektionsstatus aus BLoC-Zustand.
                    onSelected: (_) =>
                        context // Klick-Event.
                            .read<GameVotingBloc>() // BLoC-Zugriff.
                            .add(
                              GameVotingTypeToggled(g),
                            ), // Auswahl-Event senden.
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16), // Abstand.
          FilledButton.icon(
            // Haupt-Aktionsbutton zum Speichern.
            icon: const Icon(Icons.save_outlined), // Speicher-Icon.
            label: const Text('Auswahl speichern'), // Beschriftung.
            onPressed:
                state
                    .selectedTypes
                    .isEmpty // Falls nichts gewählt ist...
                ? null // ...Button deaktivieren.
                : () =>
                      context // Sonst klickbar.
                          .read<GameVotingBloc>() // BLoC-Zugriff.
                          .add(
                            const GameVotingSaveRequested(),
                          ), // Speicher-Event senden.
          ),
        ],
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  // Hilfs-Widget für Kurzmitteilungen am oberen Rand.
  final String text; // Die Nachricht.
  final bool error; // Ob es sich um einen Fehler handelt.
  const _Banner(this.text, {required this.error}); // Konstruktor.
  @override
  Widget build(BuildContext context) {
    // Aufbau des Banners.
    final scheme = Theme.of(context).colorScheme; // Aktuelles Farbschema.
    final color = error
        ? scheme.errorContainer
        : scheme.secondaryContainer; // Hintergrundfarbe wählen.
    final on = error
        ? scheme.onErrorContainer
        : scheme.onSecondaryContainer; // Textfarbe wählen.
    return Container(
      // Container für Styling.
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ), // Innenabstand.
      decoration: BoxDecoration(
        // Hintergrund-Design.
        color: color, // Die gewählte Farbe.
        borderRadius: BorderRadius.circular(12), // Abgerundete Ecken.
      ),
      child: Row(
        // Horizontale Anordnung.
        children: [
          Icon(
            error ? Icons.error_outline : Icons.info_outline,
            color: on,
          ), // Passendes Status-Icon.
          const SizedBox(width: 8), // Kleiner Abstand zum Text.
          Expanded(
            // Text nutzt den restlichen Platz.
            child: Text(
              text,
              style: TextStyle(color: on),
            ), // Die Nachricht selbst.
          ),
        ],
      ),
    );
  }
}

// --- Hilfs-Widget für die Session-Card ---

class SessionDetailsCard extends StatelessWidget {
  // Karte zur Anzeige der Session-Metadaten.
  final GameSession session; // Die Session-Daten aus der DB.
  final bool canFinish; // Flag für Abschluss-Logik (hier ungenutzt).
  final User? host; // Das User-Objekt des Gastgebers (optional).

  const SessionDetailsCard({
    // Konstruktor.
    super.key,
    required this.session,
    required this.canFinish,
    this.host,
  });

  @override
  Widget build(BuildContext context) {
    // Aufbau der Karte.
    final date = session.scheduledAt; // Termin-Datum.
    return SectionCard(
      // Standard-Containerkarte.
      child: Column(
        // Vertikaler Stapel.
        crossAxisAlignment: CrossAxisAlignment.start, // Linksbündig.
        children: [
          Text(
            // Zeile mit dem Datum.
            'Nächster Termin: ${date.day}.${date.month}.${date.year}', // Formatiertes Datum.
            style: Theme.of(
              context,
            ).textTheme.titleMedium, // Theme-Schriftstil nutzen.
          ),
          const SizedBox(height: 8), // Abstand.
          Row(
            // Zeile mit Ortsangabe.
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 20,
              ), // Standort-Icon.
              const SizedBox(width: 8), // Kleiner Abstand.
              Expanded(child: Text(session.location)), // Ortsname.
            ],
          ),
          if (host != null) ...[
            // Falls ein Gastgeber mitgegeben wurde...
            const SizedBox(height: 8), // Abstand.
            Text('Gastgeber:in: ${host!.displayName}'), // Name des Gastgebers.
          ],
        ],
      ),
    );
  }
}
