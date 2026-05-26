// Tests für die drei User Stories aus features/Chris:
//   * CuisineReminderBloc - Essensrichtungen laden, toggeln und speichern.
//   * CuisineSummaryBloc  - Stimmen zählen und Mehrheitsrichtung bestimmen.
//   * MenuOrderBloc       - passenden Lieferdienst laden, Gericht auswählen und Bestellung speichern.

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:spieleabend/api/prisma_client.dart';
import 'package:spieleabend/features/chris/cuisine_reminder/bloc/bloc.dart';
import 'package:spieleabend/features/chris/cuisine_summary/bloc/bloc.dart';
import 'package:spieleabend/features/chris/menu_order/bloc/bloc.dart';

import '_helpers.dart';

Future<
  ({PrismaClient db, Group group, User owner, User other, GameSession session})
>
_setup() async {
  final db = await openInMemoryPrismaClient();
  final tag = 'chris_${DateTime.now().microsecondsSinceEpoch}';

  final owner = await db.user.create(
    data: CreateUserInput(username: 'owner_$tag', displayName: 'Owner'),
  );

  final other = await db.user.create(
    data: CreateUserInput(username: 'other_$tag', displayName: 'Other'),
  );

  final group = await db.group.create(
    data: CreateGroupInput(name: 'Gruppe_$tag', createdById: owner.id),
  );

  await db.groupMembership.create(
    data: CreateGroupMembershipInput(
      groupId: group.id,
      userId: owner.id,
      rotationOrder: 1,
    ),
  );

  await db.groupMembership.create(
    data: CreateGroupMembershipInput(
      groupId: group.id,
      userId: other.id,
      rotationOrder: 2,
    ),
  );

  final session = await db.gameSession.create(
    data: CreateGameSessionInput(
      groupId: group.id,
      scheduledAt: DateTime.utc(2030, 5, 1, 19),
      hostId: owner.id,
      location: 'Zuhause',
    ),
  );

  return (db: db, group: group, owner: owner, other: other, session: session);
}

void main() {
  initSqfliteFfi();

  group('CuisineReminderBloc', () {
    test('lädt aktive Session und startet mit leerer Auswahl', () async {
      final s = await _setup();

      final bloc = CuisineReminderBloc(db: s.db, currentUserId: s.owner.id);

      final loaded = bloc.stream.firstWhere(
        (state) => state is CuisineReminderLoaded,
      );

      bloc.add(CuisineReminderLoadRequested(s.group.id));

      final state = await loaded as CuisineReminderLoaded;

      expect(state.session?.id, s.session.id);
      expect(state.selected, isEmpty);

      await bloc.close();
    });

    test('toggeln fügt Essensrichtung hinzu und entfernt sie wieder', () async {
      final s = await _setup();

      final bloc = CuisineReminderBloc(db: s.db, currentUserId: s.owner.id);

      final firstLoad = bloc.stream.firstWhere(
        (state) => state is CuisineReminderLoaded,
      );

      bloc.add(CuisineReminderLoadRequested(s.group.id));
      await firstLoad;

      final selectedItalian = bloc.stream.firstWhere(
        (state) =>
            state is CuisineReminderLoaded &&
            state.selected.contains(CuisineType.italian),
      );

      bloc.add(const CuisineReminderCuisineToggled(CuisineType.italian));

      final afterSelect = await selectedItalian as CuisineReminderLoaded;

      expect(afterSelect.selected, contains(CuisineType.italian));

      final unselectedItalian = bloc.stream.firstWhere(
        (state) =>
            state is CuisineReminderLoaded &&
            !state.selected.contains(CuisineType.italian),
      );

      bloc.add(const CuisineReminderCuisineToggled(CuisineType.italian));

      final afterUnselect = await unselectedItalian as CuisineReminderLoaded;

      expect(afterUnselect.selected, isNot(contains(CuisineType.italian)));

      await bloc.close();
    });

    test(
      'speichern erzeugt CuisinePreference-Einträge in der Datenbank',
      () async {
        final s = await _setup();

        final bloc = CuisineReminderBloc(db: s.db, currentUserId: s.owner.id);

        final firstLoad = bloc.stream.firstWhere(
          (state) => state is CuisineReminderLoaded,
        );

        bloc.add(CuisineReminderLoadRequested(s.group.id));
        await firstLoad;

        final selectedItalian = bloc.stream.firstWhere(
          (state) =>
              state is CuisineReminderLoaded &&
              state.selected.contains(CuisineType.italian),
        );

        bloc.add(const CuisineReminderCuisineToggled(CuisineType.italian));
        await selectedItalian;

        final selectedBurger = bloc.stream.firstWhere(
          (state) =>
              state is CuisineReminderLoaded &&
              state.selected.contains(CuisineType.burger),
        );

        bloc.add(const CuisineReminderCuisineToggled(CuisineType.burger));
        await selectedBurger;

        bloc.add(const CuisineReminderSaveRequested());

        await Future<void>.delayed(const Duration(milliseconds: 300));

        final preferences = await s.db.cuisinePreference.findMany(
          where: CuisinePreferenceWhereInput(
            sessionId: StringFilter(equals: s.session.id),
            userId: StringFilter(equals: s.owner.id),
          ),
        );

        expect(preferences, hasLength(2));
        expect(
          preferences.map((p) => p.preferred).toSet(),
          equals({CuisineType.italian, CuisineType.burger}),
        );

        await bloc.close();
      },
    );
  });

  group('CuisineSummaryBloc', () {
    test(
      'ohne gespeicherte Essensrichtungen ist keine Mehrheit vorhanden',
      () async {
        final s = await _setup();

        final bloc = CuisineSummaryBloc(db: s.db);

        final loaded = bloc.stream.firstWhere(
          (state) => state is CuisineSummaryLoaded,
        );

        bloc.add(CuisineSummaryLoadRequested(s.group.id));

        final state = await loaded as CuisineSummaryLoaded;

        expect(state.session?.id, s.session.id);
        expect(state.total, 0);
        expect(state.counts, isEmpty);
        expect(state.majorityCuisine, isNull);

        await bloc.close();
      },
    );

    test(
      'zählt CuisinePreference-Einträge und bestimmt die Mehrheit',
      () async {
        final s = await _setup();

        await s.db.cuisinePreference.create(
          data: CreateCuisinePreferenceInput(
            sessionId: s.session.id,
            userId: s.owner.id,
            preferred: CuisineType.italian,
          ),
        );

        await s.db.cuisinePreference.create(
          data: CreateCuisinePreferenceInput(
            sessionId: s.session.id,
            userId: s.other.id,
            preferred: CuisineType.italian,
          ),
        );

        await s.db.cuisinePreference.create(
          data: CreateCuisinePreferenceInput(
            sessionId: s.session.id,
            userId: s.other.id,
            preferred: CuisineType.burger,
          ),
        );

        final bloc = CuisineSummaryBloc(db: s.db);

        final loaded = bloc.stream.firstWhere(
          (state) => state is CuisineSummaryLoaded,
        );

        bloc.add(CuisineSummaryLoadRequested(s.group.id));

        final state = await loaded as CuisineSummaryLoaded;

        expect(state.total, 3);
        expect(state.counts[CuisineType.italian], 2);
        expect(state.counts[CuisineType.burger], 1);
        expect(state.majorityCuisine, CuisineType.italian);

        await bloc.close();
      },
    );
  });

  group('MenuOrderBloc', () {
    test('ohne Essenswünsche wird kein Lieferdienst angezeigt', () async {
      final s = await _setup();

      final bloc = MenuOrderBloc(db: s.db, currentUserId: s.owner.id);

      final loaded = bloc.stream.firstWhere(
        (state) => state is MenuOrderLoaded,
      );

      bloc.add(MenuOrderLoadRequested(s.group.id));

      final state = await loaded as MenuOrderLoaded;

      expect(state.session?.id, s.session.id);
      expect(state.service, isNull);
      expect(state.items, isEmpty);
      expect(state.message, isNotNull);

      await bloc.close();
    });

    test('lädt Lieferdienst und Menü passend zur Mehrheitsküche', () async {
      final s = await _setup();

      await s.db.cuisinePreference.create(
        data: CreateCuisinePreferenceInput(
          sessionId: s.session.id,
          userId: s.owner.id,
          preferred: CuisineType.italian,
        ),
      );

      final bloc = MenuOrderBloc(db: s.db, currentUserId: s.owner.id);

      final loaded = bloc.stream.firstWhere(
        (state) =>
            state is MenuOrderLoaded &&
            state.service != null &&
            state.items.isNotEmpty,
      );

      bloc.add(MenuOrderLoadRequested(s.group.id));

      final state = await loaded as MenuOrderLoaded;

      expect(state.session?.id, s.session.id);
      expect(state.service?.cuisine, CuisineType.italian);
      expect(state.items, isNotEmpty);

      await bloc.close();
    });

    test('Gericht auswählen und Bestellung als FoodOrder speichern', () async {
      final s = await _setup();

      await s.db.cuisinePreference.create(
        data: CreateCuisinePreferenceInput(
          sessionId: s.session.id,
          userId: s.owner.id,
          preferred: CuisineType.italian,
        ),
      );

      final bloc = MenuOrderBloc(db: s.db, currentUserId: s.owner.id);

      final loaded = bloc.stream.firstWhere(
        (state) =>
            state is MenuOrderLoaded &&
            state.service != null &&
            state.items.isNotEmpty,
      );

      bloc.add(MenuOrderLoadRequested(s.group.id));

      final state = await loaded as MenuOrderLoaded;
      final item = state.items.first;

      final selected = bloc.stream.firstWhere(
        (state) =>
            state is MenuOrderLoaded && state.selectedIds.contains(item.id),
      );

      bloc.add(MenuOrderItemToggled(item.id, true));

      final afterSelect = await selected as MenuOrderLoaded;

      expect(afterSelect.selectedIds, contains(item.id));

      final submitted = bloc.stream.firstWhere(
        (state) =>
            state is MenuOrderLoaded &&
            state.message == 'Bestellung übermittelt.',
      );

      bloc.add(const MenuOrderSubmitRequested());

      await submitted;

      final orders = await s.db.foodOrder.findMany(
        where: FoodOrderWhereInput(
          sessionId: StringFilter(equals: s.session.id),
          userId: StringFilter(equals: s.owner.id),
        ),
      );

      expect(orders, hasLength(1));

      final decodedIds = (jsonDecode(orders.first.menuItemIds) as List)
          .whereType<String>()
          .toSet();

      expect(decodedIds, contains(item.id));

      await bloc.close();
    });
  });
}
