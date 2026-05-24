import 'package:equatable/equatable.dart';

import '../../../../api/prisma_client.dart';

// Grundsätzlich beschreiben die Events, was im UI passiert ist oder welche Aktionen ausgelöst werden sollen. Die .bloc verarbeitet diese Events, führt die Logik aus und erzeugt basierend darauf neue States.

// Basisklasse für alle Events
sealed class CuisineReminderEvent extends Equatable {
  const CuisineReminderEvent();

  @override
  List<Object?> get props => [];
}

// Event für das Laden der gespeicherten Essensrichtungen
class CuisineReminderLoadRequested extends CuisineReminderEvent {
  // ID der Gruppe wird benötigt
  final String groupId;

  const CuisineReminderLoadRequested(this.groupId);

  @override
  List<Object?> get props => [groupId];
}

// Event für das Aus- und Abwählen einer Essensrichtung
class CuisineReminderCuisineToggled extends CuisineReminderEvent {
  // Die Essesnrichtung die geklickt wurde
  final CuisineType cuisine;

  const CuisineReminderCuisineToggled(this.cuisine);

  @override
  List<Object?> get props => [cuisine];
}

// Event zum Speichern der Auswahl des Nutzers
class CuisineReminderSaveRequested extends CuisineReminderEvent {
  const CuisineReminderSaveRequested();
}
