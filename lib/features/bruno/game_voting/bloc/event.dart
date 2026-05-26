import 'package:equatable/equatable.dart'; // Import für den einfachen Vergleich von Objekten.
import '../../../../models/game_type.dart'; // Import des Enums für Spieltypen.

sealed class GameVotingEvent extends Equatable {
  // Basisklasse für alle Abstimmungs-Events.
  const GameVotingEvent(); // Konstanter Konstruktor.
  @override
  List<Object?> get props => []; // Eigenschaften für den Equatable-Vergleich (hier leer).
}

class GameVotingLoadRequested extends GameVotingEvent {
  // Event: Anforderung zum Laden der Session und Vorschläge.
  final String groupId; // Die ID der Gruppe, für die Daten geladen werden.
  const GameVotingLoadRequested(
    this.groupId,
  ); // Konstruktor mit Pflichtparameter.
  @override
  List<Object?> get props => [groupId]; // Vergleich basiert auf der Gruppen-ID.
}

class GameVotingTypeToggled extends GameVotingEvent {
  // Event: Ein Spieltyp wurde in der Auswahl an- oder abgewählt.
  final GameType type; // Der betroffene Spieltyp.
  const GameVotingTypeToggled(this.type); // Konstruktor mit dem gewählten Typ.
  @override
  List<Object?> get props => [type]; // Vergleich basiert auf dem Spieltyp.
}

class GameVotingDeleteRequested extends GameVotingEvent {
  // Event: Ein existierender Vorschlag soll gelöscht werden.
  final String proposalId; // Die eindeutige ID des Vorschlags in der Datenbank.
  const GameVotingDeleteRequested(this.proposalId); // Konstruktor mit der ID.
  @override
  List<Object?> get props => [proposalId]; // Vergleich basiert auf der Vorschlags-ID.
}

class GameVotingSaveRequested extends GameVotingEvent {
  // Event: Die lokale Auswahl soll permanent gespeichert werden.
  const GameVotingSaveRequested(); // Einfacher konstanter Konstruktor ohne Parameter.
}
