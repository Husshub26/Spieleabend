import 'package:equatable/equatable.dart';

// Grundsätzlich beschreiben die Events, was im UI passiert ist oder welche Aktionen ausgelöst werden sollen. Die .bloc verarbeitet diese Events, führt die Logik aus und erzeugt basierend darauf neue States.

// Basisklasse für alle Events
sealed class CuisineSummaryEvent extends Equatable {
  const CuisineSummaryEvent();

  @override
  List<Object?> get props => [];
}

// Event für das Laden der Auswertungen der Essensrichtungen (wie viele Stimmen je Essensrichtung abgegben wurden)
class CuisineSummaryLoadRequested extends CuisineSummaryEvent {
  // ID der Gruppe wird benötigt
  // basierend auf der ID kann der Spieletermin gefunden werden
  final String groupId;

  const CuisineSummaryLoadRequested(this.groupId);

  @override
  List<Object?> get props => [groupId];
}
