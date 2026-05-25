import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

// Basisklasse für alle möglichen Zustände
sealed class CuisineSummaryState extends Equatable {
  const CuisineSummaryState();

  @override
  List<Object?> get props => [];
}

// Zustand, während Daten geladen werden (wird bspw. beim Öffnen des Screens gesetzt)
class CuisineSummaryLoading extends CuisineSummaryState {
  const CuisineSummaryLoading();
}

// Zustand, wenn Daten erfolgreich geladen wurden
class CuisineSummaryLoaded extends CuisineSummaryState {
  // Aktiver Spieltermin
  final GameSession? session;
  // Map für Anzahl der Stimmen pro Essensrichtung
  final Map<CuisineType, int> counts;
  // Gesamtzahl aller abgegebenen Stimmen
  final int total;
  // Mehrheitswahl (Essensrichtung mit meisten Stimmen)
  final CuisineType? majorityCuisine;

  const CuisineSummaryLoaded({
    required this.session,
    required this.counts,
    required this.total,
    required this.majorityCuisine,
  });
  // Felder, die aktualisiert werden müssen
  @override
  List<Object?> get props => [session?.id, counts, total, majorityCuisine];
}

// Wenn bei der Abfrage in der Datenbank, bei der Abspeicherung in der Datenbak oder bei der Auswertung der Daten ein Fehler auftritt, so wird dieser State genutzt
class CuisineSummaryError extends CuisineSummaryState {
  final String message;

  const CuisineSummaryError(this.message);

  @override
  List<Object?> get props => [message];
}

class CuisineSummaryBloc
    extends Bloc<CuisineSummaryEvent, CuisineSummaryState> {
  // PrismaClient für alle Zugriffe auf die lokale Datenbank
  final PrismaClient db;

  // Konstuktor
  CuisineSummaryBloc({required this.db})
    : super(const CuisineSummaryLoading()) {
    on<CuisineSummaryLoadRequested>(_onLoad);
  }

  // Methode für das Laden der Essenrichtungen und Auswertungen der abgegebenen Stimmen
  Future<void> _onLoad(
    CuisineSummaryLoadRequested event,
    Emitter<CuisineSummaryState> emit,
  ) async {
    try {
      emit(const CuisineSummaryLoading());

      // Existieren mehrere Sessions wird die nächst frühste ausgewählt (abhängig vom Eintrag scheduledAt in der lokalen Datenbank)
      final session = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: false),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
      );

      // Existiert keine Session, so kann auch keine Essensrichtung durch den Nutzer gewählt werden
      if (session == null) {
        emit(
          const CuisineSummaryLoaded(
            session: null,
            counts: {},
            total: 0,
            majorityCuisine: null,
          ),
        );
        return;
      }

      // Alle gespeicherten Preferences (Essensrichtungen) der Session laden
      final preferences = await db.cuisinePreference.findMany(
        where: CuisinePreferenceWhereInput(
          sessionId: StringFilter(equals: session.id),
        ),
      );

      // Map für das Zählen der Stimmen pro Essensrichtung
      final counts = <CuisineType, int>{};

      // Jede gespeicherte Preference (gewünschte Essensrichtung) wird gezählt
      for (final preference in preferences) {
        counts.update(
          preference.preferred,
          (value) => value + 1,
          ifAbsent: () => 1,
        );
      }

      // Map der Stimmenzahlen (diese wird in _sortCountsDescending sortiert)
      final sortedCounts = _sortCountsDescending(counts);
      // Gesamtzahl aller abgegebenen Stimmen berechnen
      final total = sortedCounts.values.fold<int>(
        0,
        (sum, value) => sum + value,
      );

      // Ergebnis an UI übergeben
      emit(
        CuisineSummaryLoaded(
          session: session,
          counts: sortedCounts,
          total: total,
          majorityCuisine: sortedCounts.isEmpty
              ? null
              : sortedCounts.keys.first,
        ),
      );
    } catch (e) {
      // Fehler soll dem Nutzer ausgegeben werden (direkt die Exception ausgeben)
      emit(CuisineSummaryError(e.toString()));
    }
  }

  // Einträge der Map werden in Liste umgewandelt, damit sich diese sortieren lassen
  Map<CuisineType, int> _sortCountsDescending(Map<CuisineType, int> counts) {
    final entries = counts.entries.toList()
      // Absteigend nach abgegebenen Stimmen sortieren
      ..sort((a, b) => b.value.compareTo(a.value));

    // Sortierte Liste wieder als Map zurückgegeben
    return Map<CuisineType, int>.fromEntries(entries);
  }
}
