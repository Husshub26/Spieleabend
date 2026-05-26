import 'package:equatable/equatable.dart'; // Import für den einfachen Vergleich von Objekten.

sealed class QuickMessageEvent extends Equatable {
  // Basisklasse für alle Events dieses Features.
  const QuickMessageEvent(); // Konstanter Konstruktor.
  @override
  List<Object?> get props => []; // Standardmäßig leere Vergleichsliste.
}

class QuickMessageLoadRequested extends QuickMessageEvent {
  // Event: Anforderung zum Laden der Session-Daten.
  final String
  groupId; // Die ID der Gruppe, für die nach Terminen gesucht wird.
  const QuickMessageLoadRequested(this.groupId); // Konstruktor mit Gruppen-ID.
  @override
  List<Object?> get props => [groupId]; // Vergleich basiert auf der Gruppen-ID.
}

class QuickMessageSendRequested extends QuickMessageEvent {
  // Event: Eine Nachricht soll versendet werden.
  final String message; // Der Text der Nachricht.
  const QuickMessageSendRequested(
    this.message,
  ); // Konstruktor mit Nachrichtentext.
  @override
  List<Object?> get props => [message]; // Vergleich basiert auf dem Text.
}
