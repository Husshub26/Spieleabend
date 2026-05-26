import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import '../data/delivery_services.dart';
import 'event.dart';

export 'event.dart';

// Basisklasse für alle möglichen Zustände
sealed class MenuOrderState extends Equatable {
  const MenuOrderState();

  @override
  List<Object?> get props => [];
}

// Zustand, während Daten geladen werden (wird bspw. beim Öffnen des Screens gesetzt)
class MenuOrderLoading extends MenuOrderState {
  const MenuOrderLoading();
}

// Zustand, wenn Daten erfolgreich geladen wurden
class MenuOrderLoaded extends MenuOrderState {
  // Aktiver Spieltermin
  final GameSession? session;
  // Lieferdienst (passend zur mehrheitlich gewünschte Essensrichtung)
  final DeliveryService? service;
  // Liste der Gerichte des Lieferdienstes
  final List<MenuItem> items;
  // IDs der Gerichte, die vom Nutzer ausgewählt wurden
  final Set<String> selectedIds;
  // Messages (Hinweise und/oder Fehler)
  final String? message;
  // bool gibt an, ob Bestellung gespeichert wurde
  final bool saving;

  const MenuOrderLoaded({
    required this.session,
    required this.service,
    required this.items,
    required this.selectedIds,
    this.message,
    this.saving = false,
  });

  // Erstellt neue Version des aktuellen States (ersetzt Werte mit neuen und die anderen bleiben bestehen)
  MenuOrderLoaded copyWith({
    Set<String>? selectedIds,
    String? message,
    bool? saving,
  }) {
    return MenuOrderLoaded(
      session: session,
      service: service,
      items: items,
      selectedIds: selectedIds ?? this.selectedIds,
      message: message,
      saving: saving ?? this.saving,
    );
  }

  // Felder, die aktualisiert werden müssen
  @override
  List<Object?> get props => [
    session?.id,
    service?.id,
    items,
    selectedIds,
    message,
    saving,
  ];
}

// Wenn bei der Abfrage in der Datenbank oder bei der Abspeicherung in der Datenbak ein Fehler auftritt, so wird dieser State genutzt
class MenuOrderError extends MenuOrderState {
  // Fehlermeldung, die dem Nutzer hinterher ausgeeben werden soll
  final String message;

  const MenuOrderError(this.message);

  @override
  List<Object?> get props => [message];
}

class MenuOrderBloc extends Bloc<MenuOrderEvent, MenuOrderState> {
  // PrismaClient für alle Zugriffe auf die lokale Datenbank
  final PrismaClient db;
  // ID vom akutellen Nutzer
  final String currentUserId;
  // ID der Gruppe
  String? _groupId;

  // Konstruktor der Klasse (startet im Ladezustand und dann werden die Event-Handler registriert aus event.dart)
  MenuOrderBloc({required this.db, required this.currentUserId})
    : super(const MenuOrderLoading()) {
    on<MenuOrderLoadRequested>(_onLoad);
    on<MenuOrderItemToggled>(_onToggleItem);
    on<MenuOrderSubmitRequested>(_onSubmit);
  }
  // Diese Methode lädt alle Daten, die der Screen benötigt
  Future<void> _onLoad(
    MenuOrderLoadRequested event,
    Emitter<MenuOrderState> emit,
  ) async {
    _groupId = event.groupId;

    try {
      emit(const MenuOrderLoading());

      // In diese Projekt wird kein wirklicher Lieferdienst angebunden, sondern nur Einträge in der lokalen Datenbank für möglichte Lieferdiesnte und Menüs erstellt (siehe delivery_services.dart für die erfundenen Einträge)
      await seedDeliveryServicesIfNeeded(db);
      // Aktive Session laden
      final session = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: false),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
      );
      // Sofern noch keine Session vorliegt, soll das UI leer bleiben
      if (session == null) {
        emit(
          const MenuOrderLoaded(
            session: null,
            service: null,
            items: [],
            selectedIds: {},
          ),
        );
        return;
      }
      // Mehrheitlich gewünschte Essensrichtung bestimmten
      final cuisine = await _majorityCuisine(session.id);
      // Wenn noch keine Stimmen abgegeben wurden, kann auch kein Menü geladen werden (bei der Wahl wird nicht auf alle Spieler der Gruppe gewartet)
      if (cuisine == null) {
        emit(
          MenuOrderLoaded(
            session: session,
            service: null,
            items: const [],
            selectedIds: const {},
            message: 'Noch keine Essensrichtung gewählt.',
          ),
        );
        return;
      }
      // Lieferdienst soll basierend auf der mehrheitlich gewünschte Essensrichtung geladen werden
      final service = await _findServiceByCuisine(cuisine);
      // Existiert kein Lieferdiesnt, kann auch kein Menü geladen werden
      if (service == null) {
        emit(
          MenuOrderLoaded(
            session: session,
            service: null,
            items: const [],
            selectedIds: const {},
            message: 'Kein passender Lieferdienst gefunden.',
          ),
        );
        return;
      }
      // Menüeintrage des zutreffenden Lieferdienstes laden
      final items = await db.menuItem.findMany(
        where: MenuItemWhereInput(
          deliveryServiceId: StringFilter(equals: service.id),
        ),
      );
      // Beim erfolgreichen Laden kann der Lieferdienst und die Gerichte ausgegeben werden
      emit(
        MenuOrderLoaded(
          session: session,
          service: service,
          items: items,
          selectedIds: const {},
        ),
      );
    } catch (e) {
      // Fehler beim Laden soll dem Nutzer ausgegeben werden (direkt die Exception ausgeben)
      emit(MenuOrderError(e.toString()));
    }
  }

  // Methode für Änderungen der Auswahl im State (es wird in dieser Methode noch nichts in der Datenbank gespeichert)
  void _onToggleItem(MenuOrderItemToggled event, Emitter<MenuOrderState> emit) {
    final current = state;
    if (current is! MenuOrderLoaded) return;

    // Die akutelle Auswahl wird kopiret, damit der alte State nicht verändert wird
    final selected = Set<String>.from(current.selectedIds);
    // Je nach Aushwalszustand durch den Nutzer wird es hinzugefügt oder entfernt
    if (event.selected) {
      selected.add(event.menuItemId);
    } else {
      selected.remove(event.menuItemId);
    }
    // Neuen Sate speichernn mit der aktualisierten Auswahl
    emit(current.copyWith(selectedIds: selected));
  }

  // Methode für die Speicherung der Bestellungen in der Datenbank
  Future<void> _onSubmit(
    MenuOrderSubmitRequested event,
    Emitter<MenuOrderState> emit,
  ) async {
    final groupId = _groupId;
    final current = state;

    if (groupId == null || current is! MenuOrderLoaded) return;
    // Bestellung ist nur möglich, wenn auch ein Spieltermin existiert und ein Lieferdienst in der Datenbank vorhanden ist
    if (current.session == null || current.service == null) {
      emit(current.copyWith(message: 'Es ist keine Bestellung möglich.'));
      return;
    }
    // Sicherstellen, dass mindestens ein Gericht vom Nutzer ausgewählt wurde
    if (current.selectedIds.isEmpty) {
      emit(
        current.copyWith(message: 'Bitte wähle mindestens ein Gericht aus.'),
      );
      return;
    }

    emit(current.copyWith(saving: true, message: null));

    // Im Schema (die lokale Datenbank) ist FoodOrder.menuItemIds als String definiert
    // Daher müssen die Menü-IDs als JSON-Array gespeichert werden
    try {
      await db.foodOrder.create(
        data: CreateFoodOrderInput(
          sessionId: current.session!.id,
          userId: currentUserId,
          menuItemIds: jsonEncode(current.selectedIds.toList()),
        ),
      );

      // Nach erfolreichem Spiechern muss der Screen erneut geladen werden
      await _onLoad(MenuOrderLoadRequested(groupId), emit);

      // Dem Nutzer soll angezeigt werden, dass die Bestellung erfolgreich war
      final latest = state;
      if (latest is MenuOrderLoaded) {
        emit(latest.copyWith(message: 'Bestellung übermittelt.'));
      }
    } catch (e) {
      // Fehler beim Bestellvorgang soll dem Nutzer ausgegeben werden
      emit(
        current.copyWith(
          saving: false,
          message: 'Bestellung fehlgeschlagen: $e',
        ),
      );
    }
  }

  // Methode, die die mehrheitlich gewünschte Essenrichtung für einen Spieltermin bestimmt
  Future<CuisineType?> _majorityCuisine(String sessionId) async {
    // Ale möglichen Essensrichtungen laden
    final preferences = await db.cuisinePreference.findMany(
      where: CuisinePreferenceWhereInput(
        sessionId: StringFilter(equals: sessionId),
      ),
    );
    // Sicherstellen, dass preferences nicht leer ist, sonst null zurückgeben
    if (preferences.isEmpty) return null;

    // Map zum Zählen der Stimmen der Nutzer erstellen (bspw. 3 Stimmen für Burger und 2 Stimmen für Pizza)
    final counts = <CuisineType, int>{};
    // Die Wünsche der Spieler zählen
    for (final preference in preferences) {
      counts.update(
        preference.preferred,
        (value) => value + 1,
        ifAbsent: () => 1,
      );
    }
    // Die Anzahl der Stimmen je Essensirchtung sortieren (absteigende Sortierung)
    // Oberster Eintrag nach Sortierung als Mehrheitswahl verwenden (ist somit bei Gleichstand trotzdem der erste Eintrag)
    final sorted = counts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    // Mehrheitlich gewünschte Essensrichtung zurückgeben
    return sorted.first.key;
  }

  // Methode, die einen Lieferdienst aus der lokalen Datenbank für eine bestimmte Essensrichtung sucht
  Future<DeliveryService?> _findServiceByCuisine(CuisineType cuisine) async {
    // Dafür müssen alle gespeicherten Lieferdienste geladen werden (aus der delivery_services.dart)
    final services = await db.deliveryService.findMany();
    // Der erste zutreffende Lieferdienst soll ausgegeben werden (pro Essensrichtung existiert in der Datenbank momentan nur einer)
    for (final service in services) {
      if (service.cuisine == cuisine) {
        return service;
      }
    }

    // Gibt null zurück, wenn kein Lieferdienst gefunden wurde.
    return null;
  }
}
