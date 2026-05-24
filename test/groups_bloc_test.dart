// Behavioural tests for `GroupsBloc`: persistence of created groups,
// duplicate-name rejection, owner-only invites and member loading.

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spieleabend/api/prisma_client.dart';
import 'package:spieleabend/features/groups/bloc.dart';

import '_helpers.dart';

void main() {
  initSqfliteFfi();

  test(
    'create persists creator and a re-login still lists the group',
    () async {
      final (bloc, alice, _) = await setupGroupsBloc();
      final name = 'Crew_${alice.id}';
      final createdFuture = bloc.stream.firstWhere(
        (s) => s.activeGroup?.name == name,
      );
      bloc.add(GroupCreateRequested(name));
      final created = await createdFuture;
      expect(created.activeGroup!.createdById, alice.id);
      expect(created.activeCreator?.id, alice.id);
      expect(created.isActiveGroupOwner, isTrue);

      SharedPreferences.setMockInitialValues({});
      final bloc2 = GroupsBloc(db: bloc.db);
      final reloadedFuture = bloc2.stream.firstWhere(
        (s) => s.user?.id == alice.id && !s.loading,
      );
      bloc2.add(GroupsUserChanged(alice));
      final reloaded = await reloadedFuture;
      expect(reloaded.groups.map((g) => g.name), contains(name));
      await bloc.close();
      await bloc2.close();
    },
  );

  test('rejects duplicate group name (case-insensitive)', () async {
    final (bloc, alice, _) = await setupGroupsBloc();
    final name = 'Spiele_${alice.id}';
    final firstFuture = bloc.stream.firstWhere(
      (s) => s.activeGroup?.name == name,
    );
    bloc.add(GroupCreateRequested(name));
    await firstFuture;
    final errFuture = bloc.stream.firstWhere((s) => s.errorMessage != null);
    bloc.add(GroupCreateRequested('  ${name.toLowerCase()}  '));
    final err = await errFuture;
    expect(err.errorMessage, contains('bereits'));
    final all = await bloc.db.group.findMany();
    expect(
      all.where((g) => g.name.toLowerCase() == name.toLowerCase()),
      hasLength(1),
    );
    await bloc.close();
  });

  test('only the creator can invite new members', () async {
    final (bloc, alice, bob) = await setupGroupsBloc();
    final name = 'Owner_${alice.id}';
    final createdFuture = bloc.stream.firstWhere(
      (s) => s.activeGroup?.name == name,
    );
    bloc.add(GroupCreateRequested(name));
    final created = await createdFuture;
    final groupId = created.activeGroup!.id;

    await bloc.db.groupMembership.create(
      data: CreateGroupMembershipInput(groupId: groupId, userId: bob.id),
    );
    final bobMemberships = await bloc.db.groupMembership.findMany(
      where: GroupMembershipWhereInput(userId: StringFilter(equals: bob.id)),
    );
    expect(bobMemberships.map((m) => m.groupId), contains(groupId));

    final bobBloc = GroupsBloc(db: bloc.db);
    final bobLoadedFuture = bobBloc.stream.firstWhere(
      (s) => s.user?.id == bob.id && !s.loading,
    );
    bobBloc.add(GroupsUserChanged(bob));
    final bobLoaded = await bobLoadedFuture;
    expect(bobLoaded.groups.map((g) => g.id), contains(groupId));
    if (bobBloc.state.activeGroup?.id != groupId) {
      final selectedFuture = bobBloc.stream.firstWhere(
        (s) => s.activeGroup?.id == groupId,
      );
      bobBloc.add(GroupSelected(groupId));
      await selectedFuture;
    }
    expect(bobBloc.state.activeGroup?.id, groupId);
    expect(bobBloc.state.isActiveGroupOwner, isFalse);

    final deniedFuture = bobBloc.stream.firstWhere(
      (s) => s.errorMessage != null,
    );
    bobBloc.add(
      GroupInviteRequested(groupId: groupId, username: alice.username),
    );
    final denied = await deniedFuture;
    expect(denied.errorMessage, contains('einladen'));
    await bloc.close();
    await bobBloc.close();
  });

  test('members can be loaded for the active group', () async {
    final (bloc, alice, bob) = await setupGroupsBloc();
    final name = 'Members_${alice.id}';
    final createdFuture = bloc.stream.firstWhere(
      (s) => s.activeGroup?.name == name,
    );
    bloc.add(GroupCreateRequested(name));
    final created = await createdFuture;
    final afterFuture = bloc.stream.firstWhere(
      (s) => s.activeMembers.any((u) => u.id == bob.id),
    );
    bloc.add(
      GroupInviteRequested(
        groupId: created.activeGroup!.id,
        username: bob.username,
      ),
    );
    final after = await afterFuture;
    expect(
      after.activeMembers.map((u) => u.id),
      containsAll([alice.id, bob.id]),
    );
    await bloc.close();
  });
}
