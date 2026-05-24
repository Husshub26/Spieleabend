import 'package:equatable/equatable.dart';

// Grundsätzlich beschreiben die Events, was im UI passiert ist oder welche Aktionen ausgelöst werden sollen. Die .bloc verarbeitet diese Events, führt die Logik aus und erzeugt basierend darauf neue States.

// Basisklasse für alle Events
sealed class MenuOrderEvent extends Equatable {
  const MenuOrderEvent();

  @override
  List<Object?> get props => [];
}

// Event zum Laden des Menü-/Bestellscreens
// Event wird direkt beim Aufrufen des Screens ausgeführt
class MenuOrderLoadRequested extends MenuOrderEvent {
  // ID der Gruppe wird benötigt
  // basierend auf der ID kann der Spieletermin gefunden werden
  final String groupId;

  const MenuOrderLoadRequested(this.groupId);

  @override
  List<Object?> get props => [groupId];
}

// Event für Auswahl der Menüeinträge (wenn ein Gericht aus- oder auch abgewählt wird)
class MenuOrderItemToggled extends MenuOrderEvent {
  // ID des Menüeintrags
  final String menuItemId;
  // bool gibt an, ob aus- oder abgewählt wurde
  final bool selected;

  const MenuOrderItemToggled(this.menuItemId, this.selected);

  @override
  List<Object?> get props => [menuItemId, selected];
}

// Event für die Übermittelung der Bestellung (Abspeicherung in der lokalen Datenbank)
class MenuOrderSubmitRequested extends MenuOrderEvent {
  const MenuOrderSubmitRequested();
}
