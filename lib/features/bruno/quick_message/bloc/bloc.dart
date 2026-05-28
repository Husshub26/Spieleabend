import 'package:equatable/equatable.dart'; // Import für den Werte-Vergleich von Objekten.
import 'package:flutter_bloc/flutter_bloc.dart'; // Import der BLoC-Bibliothek für Flutter.
import '../../../../api/prisma_client.dart'; // Import des Datenbank-Clients.
import 'event.dart'; // Import der lokalen Events.

export 'event.dart'; // Re-Export der Events für einfacheren Zugriff.

sealed class QuickMessageState extends Equatable {
  // Basisklasse für alle Zustände dieses Features.
  const QuickMessageState(); // Konstanter Konstruktor.
  @override
  List<Object?> get props => []; // Standardmäßig leere Liste für Vergleiche.
}

class QuickMessageLoading extends QuickMessageState {
  // Zustand: Daten werden geladen.
  const QuickMessageLoading(); // Konstruktor.
}

class QuickMessageLoaded extends QuickMessageState {
  // Zustand: Daten geladen und bereit zur Anzeige.
  final GameSession? session; // Die nächste anstehende Spiel-Session.
  final String? errorMessage; // Mögliche Fehlermeldung nach einer Aktion.
  final String? infoMessage; // Erfolgsmeldung nach Versand.
  final bool messageSent; // Flag, ob gerade erfolgreich gesendet wurde.

  const QuickMessageLoaded({
    // Konstruktor für den geladenen Zustand.
    required this.session, // Session ist erforderlich (kann aber null sein).
    this.errorMessage, // Optionaler Fehlertext.
    this.infoMessage, // Optionaler Infotext.
    this.messageSent = false, // Standardmäßig wurde noch nichts gesendet.
  });

  QuickMessageLoaded copyWith({
    // Hilfsmethode zur Aktualisierung einzelner Felder im Zustand.
    GameSession? session, // Neue Session-Daten.
    String? errorMessage, // Neuer Fehlertext.
    String? infoMessage, // Neuer Infotext.
    bool? messageSent, // Neuer Sende-Status.
    bool clearMessages = false, // Flag zum gezielten Löschen von Nachrichten.
  }) {
    return QuickMessageLoaded(
      // Gibt eine neue Instanz mit den aktualisierten Werten zurück.
      session: session ?? this.session, // Nimm neuen Wert oder behalte alten.
      errorMessage: clearMessages
          ? null
          : (errorMessage ??
                this.errorMessage), // Logik zum Leeren von Meldungen.
      infoMessage: clearMessages
          ? null
          : (infoMessage ??
                this.infoMessage), // Logik zum Leeren von Meldungen.
      messageSent:
          messageSent ??
          false, // Setze Status zurück, wenn nicht explizit gesetzt.
    );
  }

  @override
  List<Object?> get props => [
    session?.id,
    errorMessage,
    infoMessage,
    messageSent,
  ]; // Felder für den Zustandsvergleich.
}

class QuickMessageError extends QuickMessageState {
  // Zustand: Ein kritischer Fehler ist aufgetreten.
  final String message; // Die Fehlernachricht.
  const QuickMessageError(this.message); // Konstruktor mit Nachricht.
  @override
  List<Object?> get props => [message]; // Vergleich basiert auf der Nachricht.
}

class QuickMessageBloc extends Bloc<QuickMessageEvent, QuickMessageState> {
  // Die Logik-Zentrale für Schnellnachrichten.
  final PrismaClient db; // Referenz auf die Datenbank.
  final String currentDisplayName; // Name des Absenders für die Nachricht.

  QuickMessageBloc({
    required this.db,
    required this.currentDisplayName,
  }) // Initialisierung mit DB und Nutzername.
  : super(const QuickMessageLoading()) {
    // Startzustand setzen.
    on<QuickMessageLoadRequested>(
      _onLoad,
    ); // Registriere Handler für das Laden.
    on<QuickMessageSendRequested>(
      _onSend,
    ); // Registriere Handler für das Senden.
  }

  Future<void> _onLoad(
    // Logik zum Laden der nächsten Session.
    QuickMessageLoadRequested event, // Das Event.
    Emitter<QuickMessageState> emit, // Werkzeug zum Senden neuer Zustände.
  ) async {
    try {
      emit(const QuickMessageLoading()); // UI in Ladezustand versetzen.
      final session = await db.gameSession.findFirst(
        // Datenbank abfragen.
        where: GameSessionWhereInput(
          groupId: StringFilter(
            equals: event.groupId,
          ), // Für die aktuelle Gruppe.
          finished: const BooleanFilter(equals: false), // Nur offene Termine.
        ),
        orderBy: const GameSessionOrderByInput(
          scheduledAt: SortOrder.asc,
        ), // Nächster Termin zuerst.
      );
      emit(
        QuickMessageLoaded(session: session),
      ); // Erfolgreich geladenen Zustand senden.
    } catch (e) {
      emit(
        QuickMessageError(e.toString()),
      ); // Bei Fehlern Error-Zustand senden.
    }
  }

  Future<void> _onSend(
    // Logik zum "Versenden" der Nachricht.
    QuickMessageSendRequested event, // Das Event mit dem Text.
    Emitter<QuickMessageState> emit, // Emitter.
  ) async {
    final current = state; // Momentanen Zustand sichern.
    if (current is! QuickMessageLoaded)
      return; // Nur senden, wenn Daten geladen sind.

    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      ); // Simuliere Netzwerk-Verzögerung.
      final fullMessage =
          "$currentDisplayName: ${event.message}"; // Nachricht mit Absender formatieren.
      emit(
        current.copyWith(
          // Zustand mit Erfolgsmeldung senden.
          infoMessage: 'Push-Nachricht gesendet: $fullMessage',
          messageSent: true,
        ),
      );
    } catch (e) {
      emit(
        current.copyWith(errorMessage: 'Versand fehlgeschlagen: $e'),
      ); // Bei Fehlern Fehlermeldung setzen.
    }
  }
}
