import 'package:equatable/equatable.dart'; // Import für den einfachen Vergleich von Objekten
import 'package:flutter_bloc/flutter_bloc.dart'; // Import für die BLoC-Basisklassen
import '../../../../api/prisma_client.dart'; // Import des Prisma-Datenbank-Clients
import 'event.dart'; // Import der definierten Events

export 'event.dart'; // Macht Events auch beim Importieren der bloc.dart verfügbar

sealed class EveningRatingState extends Equatable {
  // Abstrakte Basisklasse für alle Zustände
  const EveningRatingState(); // Konstanter Konstruktor
  @override
  List<Object?> get props => []; // Liste der Eigenschaften für den Equatable-Vergleich
}

class EveningRatingLoading extends EveningRatingState {
  // Zustand: Daten werden gerade aus der DB geladen
  const EveningRatingLoading(); // Konstanter Konstruktor
}

class EveningRatingLoaded extends EveningRatingState {
  // Zustand: Daten erfolgreich geladen und bereit zur Anzeige
  final GameSession? session; // Die gefundene Spielsession, die bewertet wird
  final EveningRating?
  existingRating; // Eine evtl. schon vorhandene Bewertung des Nutzers
  final int hostScore; // Die aktuell im UI ausgewählte Gastgeber-Punktzahl
  final int foodScore; // Die aktuell im UI ausgewählte Essen-Punktzahl
  final int eveningScore; // Die aktuell im UI ausgewählte Abend-Punktzahl
  final String comment; // Der aktuell eingegebene Kommentar-Text
  final String? errorMessage; // Temporäre Fehlermeldung (z.B. Speicherfehler)
  final String? infoMessage; // Temporäre Erfolgsmeldung

  const EveningRatingLoaded({
    // Konstruktor zum Erzeugen des geladenen Zustands
    required this.session, // Session ist Pflichtfeld (kann null sein, wenn kein beendeter Termin da)
    this.existingRating, // Optionale existierende Bewertung aus DB
    this.hostScore = 4, // Standardwert für Sterne im UI ist 4
    this.foodScore = 4, // Standardwert für Sterne im UI ist 4
    this.eveningScore = 4, // Standardwert für Sterne im UI ist 4
    this.comment = '', // Initial leeres Kommentarfeld
    this.errorMessage, // Initial keine Nachricht
    this.infoMessage, // Initial keine Nachricht
  });

  EveningRatingLoaded copyWith({
    // Hilfsmethode, um den Zustand bei Teiländerungen neu zu erzeugen
    GameSession? session, // Neues Session-Objekt
    EveningRating? existingRating, // Neue Bewertungs-Daten aus DB
    int? hostScore, // Neuer vom User gewählter Score
    int? foodScore, // Neuer vom User gewählter Score
    int? eveningScore, // Neuer vom User gewählter Score
    String? comment, // Neue Kommentar-Eingabe
    String? errorMessage, // Neue anzuzeigende Fehlermeldung
    String? infoMessage, // Neue anzuzeigende Info
    bool clearMessages = false, // Flag, um alte Meldungen gezielt zu löschen
  }) {
    return EveningRatingLoaded(
      // Gibt neue Instanz mit aktualisierten Werten zurück
      session: session ?? this.session,
      existingRating: existingRating ?? this.existingRating,
      hostScore: hostScore ?? this.hostScore,
      foodScore: foodScore ?? this.foodScore,
      eveningScore: eveningScore ?? this.eveningScore,
      comment: comment ?? this.comment,
      errorMessage: clearMessages ? null : (errorMessage ?? this.errorMessage),
      infoMessage: clearMessages ? null : (infoMessage ?? this.infoMessage),
    );
  }

  @override
  List<Object?> get props => [
    // Felder für den Werte-Vergleich definieren
    session?.id,
    existingRating?.id,
    hostScore,
    foodScore,
    eveningScore,
    comment,
    errorMessage,
    infoMessage,
  ];
}

class EveningRatingError extends EveningRatingState {
  // Zustand: Es gab einen kritischen Fehler beim Initialladen
  final String message; // Die Fehlernachricht
  const EveningRatingError(this.message); // Konstruktor mit Nachricht
  @override
  List<Object?> get props => [message]; // Vergleich basiert auf der Nachricht
}

class EveningRatingBloc extends Bloc<EveningRatingEvent, EveningRatingState> {
  // Die eigentliche Logik-Klasse
  final PrismaClient db; // Instanz des Datenbank-Clients
  final String currentUserId; // ID des aktuell eingeloggten Benutzers

  EveningRatingBloc({
    required this.db,
    required this.currentUserId,
  }) // Konstruktor mit Dependency Injection
  : super(const EveningRatingLoading()) {
    // Startzustand ist "Lädt..."
    on<EveningRatingLoadRequested>(
      _onLoad,
    ); // Verknüpft Lade-Event mit Handler-Funktion
    on<EveningRatingHostScoreChanged>(
      _onHostChanged,
    ); // Verknüpft Gastgeber-Änderung
    on<EveningRatingFoodScoreChanged>(
      _onFoodChanged,
    ); // Verknüpft Essen-Änderung
    on<EveningRatingEveningScoreChanged>(
      _onEveningChanged,
    ); // Verknüpft Abend-Änderung
    on<EveningRatingCommentChanged>(
      _onCommentChanged,
    ); // Verknüpft Kommentar-Text-Änderung
    on<EveningRatingSaveRequested>(
      _onSave,
    ); // Verknüpft Speichern-Aktion mit Handler
  }

  Future<void> _onLoad(
    EveningRatingLoadRequested event,
    Emitter<EveningRatingState> emit,
  ) async {
    // Handler für das Laden
    try {
      emit(const EveningRatingLoading()); // Zuerst Ladekreis in UI triggern
      final session = await db.gameSession.findFirst(
        // Suche letzte beendete Session der Gruppe
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: true),
        ),
        orderBy: const GameSessionOrderByInput(
          scheduledAt: SortOrder.desc,
        ), // Jüngste Session zuerst
      );
      if (session == null) {
        // Falls kein Termin zum Bewerten gefunden wurde
        emit(
          const EveningRatingLoaded(session: null),
        ); // "Loaded" Zustand mit null-Session senden
        return;
      }
      final rating = await db.eveningRating.findFirst(
        // Prüfe, ob User diese Session schon bewertet hat
        where: EveningRatingWhereInput(
          sessionId: StringFilter(equals: session.id),
          userId: StringFilter(equals: currentUserId),
        ),
      );
      emit(
        EveningRatingLoaded(
          // Erfolgreich geladenen Zustand mit Session und evtl. Rating senden
          session: session,
          existingRating: rating,
          hostScore:
              rating?.hostScore ??
              4, // Vorhandenen Score nehmen oder Standard 4
          foodScore: rating?.foodScore ?? 4,
          eveningScore: rating?.eveningScore ?? 4,
          comment:
              rating?.comment ?? '', // Vorhandenen Kommentar nehmen oder leer
        ),
      );
    } catch (e) {
      emit(
        EveningRatingError(e.toString()),
      ); // Bei Datenbank-Fehlern Error-Zustand senden
    }
  }

  // Die Handler für Score-Änderungen aktualisieren jeweils nur das betreffende Feld im aktuellen State
  void _onHostChanged(
    EveningRatingHostScoreChanged event,
    Emitter<EveningRatingState> emit,
  ) {
    if (state is EveningRatingLoaded)
      emit(
        (state as EveningRatingLoaded).copyWith(
          hostScore: event.score,
          clearMessages: true,
        ),
      );
  }

  void _onFoodChanged(
    EveningRatingFoodScoreChanged event,
    Emitter<EveningRatingState> emit,
  ) {
    if (state is EveningRatingLoaded)
      emit(
        (state as EveningRatingLoaded).copyWith(
          foodScore: event.score,
          clearMessages: true,
        ),
      );
  }

  void _onEveningChanged(
    EveningRatingEveningScoreChanged event,
    Emitter<EveningRatingState> emit,
  ) {
    if (state is EveningRatingLoaded)
      emit(
        (state as EveningRatingLoaded).copyWith(
          eveningScore: event.score,
          clearMessages: true,
        ),
      );
  }

  void _onCommentChanged(
    EveningRatingCommentChanged event,
    Emitter<EveningRatingState> emit,
  ) {
    if (state is EveningRatingLoaded)
      emit(
        (state as EveningRatingLoaded).copyWith(
          comment: event.comment,
          clearMessages: true,
        ),
      );
  }

  Future<void> _onSave(
    EveningRatingSaveRequested event,
    Emitter<EveningRatingState> emit,
  ) async {
    // Handler zum Speichern
    final current = state; // Momentanen State sichern
    if (current is! EveningRatingLoaded || current.session == null)
      return; // Nur speichern, wenn Session da ist
    try {
      if (current.existingRating == null) {
        // Falls noch nie bewertet wurde: Eintrag in DB neu erstellen
        final r = await db.eveningRating.create(
          data: CreateEveningRatingInput(
            sessionId: current.session!.id,
            userId: currentUserId,
            hostScore: current.hostScore,
            foodScore: current.foodScore,
            eveningScore: current.eveningScore,
            comment: current.comment,
          ),
        );
        emit(
          current.copyWith(
            existingRating: r,
            infoMessage: 'Bewertung gespeichert!',
          ),
        ); // UI mit neuem DB-Objekt updaten
      } else {
        // Falls bereits eine Bewertung vorlag: Bestehenden Eintrag in DB aktualisieren
        final r = await db.eveningRating.update(
          where: EveningRatingWhereUniqueInput(id: current.existingRating!.id),
          data: UpdateEveningRatingInput(
            hostScore: current.hostScore,
            foodScore: current.foodScore,
            eveningScore: current.eveningScore,
            comment: current.comment,
          ),
        );
        emit(
          current.copyWith(
            existingRating: r,
            infoMessage: 'Bewertung aktualisiert!',
          ),
        ); // UI mit geänderten DB-Daten updaten
      }
    } catch (e) {
      emit(
        current.copyWith(errorMessage: 'Speichern fehlgeschlagen: $e'),
      ); // Bei Fehlern Meldung im Banner anzeigen
    }
  }
}
