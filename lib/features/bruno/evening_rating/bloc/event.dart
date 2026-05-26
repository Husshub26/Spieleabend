import 'package:equatable/equatable.dart'; // Paket für den Vergleich von Objekten importieren

sealed class EveningRatingEvent extends Equatable {
  // Basisklasse für alle Bewertungs-Events
  const EveningRatingEvent(); // Konstanter Konstruktor für Unterklassen
  @override
  List<Object?> get props => []; // Liste der Eigenschaften für den Equatable-Vergleich (hier leer)
}

class EveningRatingLoadRequested extends EveningRatingEvent {
  // Event: Anforderung zum Laden der Daten
  final String groupId; // ID der Gruppe, für die Daten geladen werden sollen
  const EveningRatingLoadRequested(
    this.groupId,
  ); // Konstruktor mit Pflichtparameter Gruppen-ID
  @override
  List<Object?> get props => [groupId]; // Vergleich erfolgt über die Gruppen-ID
}

class EveningRatingHostScoreChanged extends EveningRatingEvent {
  // Event: Gastgeber-Punkte wurden im UI geändert
  final int score; // Der neu gesetzte Punktwert (1 bis 5)
  const EveningRatingHostScoreChanged(this.score); // Konstruktor mit Punktezahl
  @override
  List<Object?> get props => [score]; // Vergleich erfolgt über die Punktzahl
}

class EveningRatingFoodScoreChanged extends EveningRatingEvent {
  // Event: Essen-Punkte wurden im UI geändert
  final int score; // Der neu gesetzte Punktwert (1 bis 5)
  const EveningRatingFoodScoreChanged(this.score); // Konstruktor mit Punktezahl
  @override
  List<Object?> get props => [score]; // Vergleich erfolgt über die Punktzahl
}

class EveningRatingEveningScoreChanged extends EveningRatingEvent {
  // Event: Allgemeine Abend-Punkte wurden geändert
  final int score; // Der neu gesetzte Punktwert (1 bis 5)
  const EveningRatingEveningScoreChanged(
    this.score,
  ); // Konstruktor mit Punktezahl
  @override
  List<Object?> get props => [score]; // Vergleich erfolgt über die Punktzahl
}

class EveningRatingCommentChanged extends EveningRatingEvent {
  // Event: Kommentar-Text wurde im UI geändert
  final String comment; // Der neue Kommentar-Text
  const EveningRatingCommentChanged(this.comment); // Konstruktor mit Kommentar
  @override
  List<Object?> get props => [comment]; // Vergleich erfolgt über den Text
}

class EveningRatingSaveRequested extends EveningRatingEvent {
  // Event: Speichern der Bewertung in DB angefordert
  const EveningRatingSaveRequested(); // Konstanter Konstruktor
}
