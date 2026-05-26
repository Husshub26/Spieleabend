import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

// Basisklasse für alle möglichen Zustände
sealed class CuisineReminderState extends Equatable {
  const CuisineReminderState();

  @override
  List<Object?> get props => [];
}

// Zustand, während Daten geladen werden (wird bspw. beim Öffnen des Screens gesetzt)
class CuisineReminderLoading extends CuisineReminderState {
  const CuisineReminderLoading();
}

// Zustand, wenn Daten erfolgreich geladen wurden
class CuisineReminderLoaded extends CuisineReminderState {
  final GameSession? session;
  final Set<CuisineType> selected;
  final String? message;
  final bool saving;

  const CuisineReminderLoaded({
    required this.session,
    required this.selected,
    this.message,
    this.saving = false,
  });

  // Erstellt neue Version des aktuellen States (ersetzt Werte mit neuen und die anderen bleiben bestehen)
  CuisineReminderLoaded copyWith({
    GameSession? session,
    Set<CuisineType>? selected,
    String? message,
    bool? saving,
  }) {
    return CuisineReminderLoaded(
      session: session ?? this.session,
      selected: selected ?? this.selected,
      message: message,
      saving: saving ?? this.saving,
    );
  }

  // Felder, die aktualisiert werden müssen
  @override
  List<Object?> get props => [session?.id, selected, message, saving];
}

// Wenn bei der Abfrage in der Datenbank oder bei der Abspeicherung in der Datenbak ein Fehler auftritt, so wird dieser State genutzt
class CuisineReminderError extends CuisineReminderState {
  // Fehlermeldung, die dem Nutzer hinterher ausgegeben werden soll
  final String message;

  const CuisineReminderError(this.message);

  @override
  List<Object?> get props => [message];
}

class CuisineReminderBloc
    extends Bloc<CuisineReminderEvent, CuisineReminderState> {
  // PrismaClient für alle Zugriffe auf die lokale Datenbank
  final PrismaClient db;
  // ID vom akutellen Nutzer
  final String currentUserId;

  // ID der Gruppe
  String? _groupId;
  // Bereits gespeicherte Einträge des aktuellen Nutzers
  List<CuisinePreference> _savedPreferences = [];

  // Konstruktor der Klasse (startet im Ladezustand und dann werden die Event-Handler registriert aus event.dart)
  CuisineReminderBloc({required this.db, required this.currentUserId})
    : super(const CuisineReminderLoading()) {
    on<CuisineReminderLoadRequested>(_onLoad);
    on<CuisineReminderCuisineToggled>(_onToggle);
    on<CuisineReminderSaveRequested>(_onSave);
  }

  // Methode, die den aktuellen Spielertermin und die bereits gespeicherte Auswahl lädt
  Future<void> _onLoad(
    CuisineReminderLoadRequested event,
    Emitter<CuisineReminderState> emit, {
    String? message,
  }) async {
    _groupId = event.groupId;

    try {
      emit(const CuisineReminderLoading());

      // Session der Gruppe finden
      final session = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: false),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
      );

      // Sicherstellen, dass eine Session existiert
      if (session == null) {
        emit(
          CuisineReminderLoaded(
            session: null,
            selected: const {},
            message: message,
          ),
        );
        return;
      }

      // Bereits gespeicherte Essensrichtungen des Nutzers laden
      _savedPreferences = await db.cuisinePreference.findMany(
        where: CuisinePreferenceWhereInput(
          sessionId: StringFilter(equals: session.id),
          userId: StringFilter(equals: currentUserId),
        ),
      );
      emit(
        CuisineReminderLoaded(
          session: session,
          selected: _savedPreferences
              .map((p) => p.preferred)
              .whereType<CuisineType>()
              .toSet(),
          message: message,
        ),
      );
    } catch (e) {
      // Fehler sollen dem Nutzer ausgegeben werden (direkt die Exception ausgeben)
      emit(CuisineReminderError(e.toString()));
    }
  }

  // Methode für das Klicken eines FilterChips (einer Essensrichtung)
  void _onToggle(
    CuisineReminderCuisineToggled event,
    Emitter<CuisineReminderState> emit,
  ) {
    final current = state;
    if (current is! CuisineReminderLoaded) return;

    final selected = Set<CuisineType>.from(current.selected);

    // Beim Klicken muss getoggelt werden zwischen Auswahl und Abwahl
    // Denn ist die Essensrichtung bereits ausgewählt, so muss diese wieder abgewählt werden (und umgekehrt)
    if (selected.contains(event.cuisine)) {
      selected.remove(event.cuisine);
    } else {
      selected.add(event.cuisine);
    }
    // Neuen State mit der aktualisierten Auswahl ausgeben
    emit(current.copyWith(selected: selected, message: null));
  }

  // Methode für die Speicherung der Auswahl der Essensrichtungen durch den Nutzer in der Datenbank
  Future<void> _onSave(
    CuisineReminderSaveRequested event,
    Emitter<CuisineReminderState> emit,
  ) async {
    final groupId = _groupId;
    final current = state;

    if (groupId == null || current is! CuisineReminderLoaded) return;

    // Sicherstellen, dass eine aktive Session existiert
    if (current.session == null) {
      emit(current.copyWith(message: 'Es gibt keinen aktiven Spieltermin.'));
      return;
    }

    // Sicherstellen, dass mindestens eine Essensrichtung ausgewählt wurde
    if (current.selected.isEmpty) {
      emit(
        current.copyWith(
          message: 'Bitte wähle mindestens eine Essensrichtung aus.',
        ),
      );
      return;
    }

    emit(current.copyWith(saving: true, message: null));

    try {
      // Alte Auswahl des Nutzers löschen (alle bestehenden Datensätze in der lokalen Datenbank)
      for (final preference in _savedPreferences) {
        await db.cuisinePreference.delete(
          where: CuisinePreferenceWhereUniqueInput(id: preference.id),
        );
      }
      // Neue Auswahl des Nutzers absepichern
      // Dabei wird für jede ausgewählte Essensrichtung ein eigener Datensatz erstellt
      for (final cuisine in current.selected) {
        await db.cuisinePreference.create(
          data: CreateCuisinePreferenceInput(
            sessionId: current.session!.id,
            userId: currentUserId,
            preferred: cuisine,
          ),
        );
      }
      // Nach Speicherung erneut laden
      await _onLoad(
        CuisineReminderLoadRequested(groupId),
        emit,
        message: 'Auswahl gespeichert.',
      );
    } catch (e) {
      // Fehler beim Speichern soll dem Nutzer ausgegeben werden (direkt die Exception ausgeben)
      emit(
        current.copyWith(
          saving: false,
          message: 'Speichern fehlgeschlagen: $e',
        ),
      );
    }
  }
}
