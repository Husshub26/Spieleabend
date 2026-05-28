import 'package:equatable/equatable.dart'; // Import für Wert-basierten Objektvergleich.
import 'package:flutter_bloc/flutter_bloc.dart'; // Core BLoC Bibliothek.
import '../../../../api/prisma_client.dart'; // Prisma Datenbank Client.
import '../../../../models/game_type.dart'; // Modell der Spieltypen.
import '../../../../components/game_label.dart'; // Extension für deutsche Labels.
import 'event.dart'; // Import der Events dieses Features.

export 'event.dart'; // Exportiert Events für einfacheren Import in der UI.

sealed class GameVotingState extends Equatable {
  // Basisklasse für den Zustand des Voting-Features.
  const GameVotingState(); // Konstanter Konstruktor.
  @override
  List<Object?> get props => []; // Standardmäßig leere Vergleichsliste.
}

class GameVotingLoading extends GameVotingState {
  // Zustand: Daten werden geladen.
  const GameVotingLoading(); // Konstruktor.
}

class GameVotingLoaded extends GameVotingState {
  // Zustand: Daten sind bereit zur Anzeige.
  final GameSession? session; // Die aktuell aktive Spiel-Session.
  final List<GameProposal> proposals; // Vorhandene Vorschläge in der DB.
  final Set<GameType> selectedTypes; // Aktuelle lokale Auswahl des Benutzers.
  final String? errorMessage; // Optionale Fehlermeldung für die UI.
  final String? infoMessage; // Optionale Erfolgsmeldung für die UI.

  const GameVotingLoaded({
    // Konstruktor für den geladenen Zustand.
    required this.session, // Session ist erforderlich.
    required this.proposals, // Liste der Vorschläge ist erforderlich.
    this.selectedTypes = const <GameType>{}, // Standardmäßig leeres Set.
    this.errorMessage, // Initial null.
    this.infoMessage, // Initial null.
  });

  GameVotingLoaded copyWith({
    // Hilfsmethode zur Erstellung einer Kopie mit geänderten Werten.
    GameSession? session, // Neues Session-Objekt.
    List<GameProposal>? proposals, // Neue Liste von Vorschlägen.
    Set<GameType>? selectedTypes, // Neue lokale Auswahl.
    String? errorMessage, // Neue Fehlermeldung.
    String? infoMessage, // Neue Erfolgsmeldung.
    bool clearMessages = false, // Flag zum Zurücksetzen von Nachrichten.
  }) {
    return GameVotingLoaded(
      // Rückgabe einer neuen Instanz.
      session: session ?? this.session, // Behalte alten Wert oder nimm neuen.
      proposals:
          proposals ?? this.proposals, // Behalte alten Wert oder nimm neuen.
      selectedTypes:
          selectedTypes ??
          this.selectedTypes, // Behalte alten Wert oder nimm neuen.
      errorMessage: clearMessages
          ? null
          : (errorMessage ??
                this.errorMessage), // Logik zum Leeren von Fehlern.
      infoMessage: clearMessages
          ? null
          : (infoMessage ?? this.infoMessage), // Logik zum Leeren von Infos.
    );
  }

  @override
  List<Object?> get props => [
    // Felder für den Zustandsvergleich.
    session?.id, // ID reicht für Vergleich.
    proposals, // Volle Liste vergleichen.
    selectedTypes, // Volles Set vergleichen.
    errorMessage, // Fehlermeldung vergleichen.
    infoMessage, // Infomeldung vergleichen.
  ];
}

class GameVotingError extends GameVotingState {
  // Zustand: Ein kritischer Fehler ist aufgetreten.
  final String message; // Die Fehlernachricht.
  const GameVotingError(this.message); // Konstruktor.
  @override
  List<Object?> get props => [message]; // Vergleich basiert auf der Nachricht.
}

class GameVotingBloc extends Bloc<GameVotingEvent, GameVotingState> {
  // Die BLoC-Klasse für das Voting.
  final PrismaClient db; // DB-Zugriff.
  final String currentUserId; // ID des aktuellen Benutzers.
  String? _groupId; // Interne Speicherung der Gruppen-ID für Refresh.

  GameVotingBloc({
    required this.db,
    required this.currentUserId,
  }) // Konstruktor mit Dependency Injection.
  : super(const GameVotingLoading()) {
    // Start mit Ladezustand.
    on<GameVotingLoadRequested>(
      (event, emit) => _onLoad(event, emit),
    ); // Handler für Lade-Event.
    on<GameVotingTypeToggled>(_onToggle); // Handler für Auswahl-Toggles.
    on<GameVotingDeleteRequested>(_onDelete); // Handler für Löschungen.
    on<GameVotingSaveRequested>(_onSave); // Handler für Speichervorgänge.
  }

  Future<void> _onLoad(
    // Interne Logik zum Laden der Daten.
    GameVotingLoadRequested event, // Das Event-Objekt.
    Emitter<GameVotingState> emit, { // Werkzeug zum Aussenden von Zuständen.
    String? errorMessage, // Optionale Fehlermeldung nach Aktion.
    String? infoMessage, // Optionale Erfolgsmeldung nach Aktion.
  }) async {
    _groupId = event.groupId; // Merken der Gruppen-ID.
    try {
      emit(const GameVotingLoading()); // Zeige Ladekreis.
      final session = await db.gameSession.findFirst(
        // Suche nach der nächsten Session.
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId), // Für diese Gruppe.
          finished: const BooleanFilter(equals: false), // Noch nicht beendet.
        ),
        orderBy: const GameSessionOrderByInput(
          scheduledAt: SortOrder.asc,
        ), // Nächste zuerst.
      );

      if (session == null) {
        // Falls kein Termin existiert.
        emit(
          GameVotingLoaded(
            // Sende Zustand "Geaden", aber ohne Session.
            session: null, // Keine Session gefunden.
            proposals: const [], // Leere Vorschlagsliste.
            errorMessage: errorMessage, // Evtl. vorhandene Fehler durchreichen.
            infoMessage: infoMessage, // Evtl. vorhandene Infos durchreichen.
          ),
        );
        return; // Ende des Handlers.
      }

      final proposals = await db.gameProposal.findMany(
        // Lade alle Vorschläge für die Session.
        where: GameProposalWhereInput(
          sessionId: StringFilter(equals: session.id), // Filter auf Session-ID.
        ),
      );

      emit(
        GameVotingLoaded(
          // Sende vollständigen Daten-Zustand.
          session: session, // Gefundene Session.
          proposals: proposals, // Geladene Vorschläge.
          selectedTypes:
              state
                  is GameVotingLoaded // Behalte lokale Auswahl bei Refresh bei.
              ? (state as GameVotingLoaded).selectedTypes
              : const <GameType>{}, // Oder starte leer.
          errorMessage: errorMessage, // Nachrichten durchreichen.
          infoMessage: infoMessage, // Nachrichten durchreichen.
        ),
      );
    } catch (e) {
      emit(GameVotingError(e.toString())); // Bei DB-Fehlern Error-State.
    }
  }

  void _onToggle(GameVotingTypeToggled event, Emitter<GameVotingState> emit) {
    // Handhabt Klicks auf FilterChips.
    final current = state; // Momentaner Zustand.
    if (current is! GameVotingLoaded) return; // Nur im Loaded-Zustand möglich.
    final newSelected = Set<GameType>.from(
      current.selectedTypes,
    ); // Kopie des Sets erstellen.
    if (newSelected.contains(event.type)) {
      // Falls schon gewählt...
      newSelected.remove(event.type); // ...entfernen.
    } else {
      // Sonst...
      newSelected.add(event.type); // ...hinzufügen.
    }
    emit(
      current.copyWith(selectedTypes: newSelected, clearMessages: true),
    ); // Neuen State mit Auswahl senden.
  }

  Future<void> _onDelete(
    // Handhabt das Entfernen von Vorschlägen.
    GameVotingDeleteRequested event,
    Emitter<GameVotingState> emit,
  ) async {
    final current = state; // Momentaner Zustand.
    if (current is! GameVotingLoaded) return; // Plausibilitätscheck.
    try {
      await db.gameProposal.delete(
        // DB-Löschbefehl.
        where: GameProposalWhereUniqueInput(
          id: event.proposalId,
        ), // Identifizierung über ID.
      );
      await _onLoad(
        GameVotingLoadRequested(_groupId!),
        emit, // Daten neu laden nach Löschung.
        infoMessage: 'Spielvorschlag entfernt.',
      ); // Erfolg bestätigen.
    } catch (e) {
      emit(
        current.copyWith(errorMessage: 'Löschen fehlgeschlagen: $e'),
      ); // Fehler anzeigen.
    }
  }

  Future<void> _onSave(
    // Handhabt das Speichern der lokalen Auswahl.
    GameVotingSaveRequested event,
    Emitter<GameVotingState> emit,
  ) async {
    final current = state; // Momentaner Zustand.
    if (current is! GameVotingLoaded || current.session == null)
      return; // Plausibilitätscheck.
    final session = current.session!; // Lokale Referenz.

    try {
      final existingTitles = current.proposals
          .map((p) => p.title)
          .toSet(); // Liste vorhandener Titel zur Dublettenvermeidung.

      for (final game in current.selectedTypes) {
        // Iteration über die lokale Auswahl.
        if (existingTitles.contains(game.label)) {
          // Falls Spiel schon existiert...
          continue; // ...überspringen.
        }

        await db.gameProposal.create(
          // DB-Create Befehl.
          data: CreateGameProposalInput(
            title: game.label, // Name des Spiels.
            description: 'Vorgeschlagen via App', // Standardbeschreibung.
            proposedById: currentUserId, // Absender-ID.
            sessionId: session.id, // Verknüpfung zur Session.
          ),
        );
      }

      emit(
        current.copyWith(selectedTypes: const <GameType>{}),
      ); // Lokale Auswahl nach Erfolg leeren.
      await _onLoad(
        GameVotingLoadRequested(_groupId!),
        emit, // UI-Refresh triggern.
        infoMessage: 'Spiele erfolgreich gespeichert!',
      ); // Erfolg bestätigen.
    } catch (e) {
      emit(
        current.copyWith(errorMessage: 'Speichern fehlgeschlagen: $e'),
      ); // Fehler anzeigen.
    }
  }
}
