// Tests for the three new Hussein features:
//   * HostRotationBloc - reorder, slider, next-host computation.
//   * NextSessionBloc  - single-active enforcement, rotation advance, finish.
//   * GameProposalsBloc - duplicate rejection, gating by active session.

import 'package:flutter_test/flutter_test.dart';
import 'package:spieleabend/api/prisma_client.dart';
import 'package:spieleabend/features/hussein/game_proposals/bloc/bloc.dart';
import 'package:spieleabend/features/hussein/host_rotation/bloc/bloc.dart';
import 'package:spieleabend/features/hussein/next_session/bloc.dart';

import '_helpers.dart';

Future<({PrismaClient db, Group group, User owner, User other})>
_setup() async {
  final db = await openInMemoryPrismaClient();
  final tag = 'h${DateTime.now().microsecondsSinceEpoch}';
  final owner = await db.user.create(
    data: CreateUserInput(username: 'owner_$tag', displayName: 'Owner'),
  );
  final other = await db.user.create(
    data: CreateUserInput(username: 'other_$tag', displayName: 'Other'),
  );
  final group = await db.group.create(
    data: CreateGroupInput(name: 'G_$tag', createdById: owner.id),
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
  return (db: db, group: group, owner: owner, other: other);
}

void main() {
  initSqfliteFfi();

  group('HostRotationBloc', () {
    test('next host = first active when no past session', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.owner.id,
        groupOwnerId: s.owner.id,
      );
      final loaded = bloc.stream.firstWhere((st) => st is HostRotationLoaded);
      bloc.add(HostRotationLoadRequested(s.group.id));
      final st = await loaded as HostRotationLoaded;
      expect(st.activeEntries, hasLength(2));
      expect(st.nextHostUserId, s.owner.id);
      await bloc.close();
    });

    test('move owner to index 1 → "other" becomes #1', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.owner.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      await firstLoad;

      final reordered = bloc.stream.firstWhere(
        (st) =>
            st is HostRotationLoaded &&
            st.activeEntries.first.user.id == s.other.id,
      );
      bloc.add(HostRotationMoveRequested(userId: s.owner.id, targetIndex: 1));
      final st = await reordered as HostRotationLoaded;
      expect(
        st.activeEntries.map((e) => e.user.id),
        orderedEquals([s.other.id, s.owner.id]),
      );
      expect(st.nextHostUserId, s.other.id);
      await bloc.close();
    });

    test('non-owner cannot reorder; gets an error', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.other.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      await firstLoad;

      final err = bloc.stream.firstWhere((st) => st is HostRotationError);
      bloc.add(HostRotationMoveRequested(userId: s.owner.id, targetIndex: 1));
      await err;
      await bloc.close();
    });

    test('shuffle preserves Nächste:r across the new order', () async {
      final s = await _setup();
      // Add a third active member so the shuffle has 3! permutations.
      final tag = 'h${DateTime.now().microsecondsSinceEpoch}';
      final third = await s.db.user.create(
        data: CreateUserInput(username: 'third_$tag', displayName: 'Third'),
      );
      await s.db.groupMembership.create(
        data: CreateGroupMembershipInput(
          groupId: s.group.id,
          userId: third.id,
          rotationOrder: 3,
        ),
      );
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.owner.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      final initial = await firstLoad as HostRotationLoaded;
      final preservedNextId = initial.nextHostUserId;
      expect(preservedNextId, isNotNull);

      // Run a handful of shuffles — every one of them must leave
      // nextHostUserId identical, regardless of the random permutation.
      for (var i = 0; i < 5; i++) {
        final after = bloc.stream.firstWhere(
          (st) =>
              st is HostRotationLoaded &&
              identical(st, initial) == false &&
              st.activeEntries.length == 3,
        );
        bloc.add(const HostRotationShuffleRequested());
        final st = await after as HostRotationLoaded;
        expect(st.nextHostUserId, preservedNextId);
      }
      await bloc.close();
    });

    test(
      'mark-as-next makes the clicked user Nächste:r with all members active',
      () async {
        final s = await _setup();
        final tag = 'h${DateTime.now().microsecondsSinceEpoch}';
        final third = await s.db.user.create(
          data: CreateUserInput(username: 'm3_$tag', displayName: 'Third'),
        );
        await s.db.groupMembership.create(
          data: CreateGroupMembershipInput(
            groupId: s.group.id,
            userId: third.id,
            rotationOrder: 3,
          ),
        );
        final bloc = HostRotationBloc(
          db: s.db,
          currentUserId: s.owner.id,
          groupOwnerId: s.owner.id,
        );
        final firstLoad = bloc.stream.firstWhere(
          (st) => st is HostRotationLoaded,
        );
        bloc.add(HostRotationLoadRequested(s.group.id));
        final initial = await firstLoad as HostRotationLoaded;
        expect(initial.nextHostUserId, s.owner.id);

        final marked = bloc.stream.firstWhere(
          (st) => st is HostRotationLoaded && st.nextHostUserId == third.id,
        );
        bloc.add(HostRotationMarkAsNextRequested(third.id));
        final st = await marked as HostRotationLoaded;
        expect(st.nextHostUserId, third.id);
        await bloc.close();
      },
    );

    test(
      'mark-as-next works even when a paused member is interleaved (regression)',
      () async {
        final s = await _setup();
        final tag = 'h${DateTime.now().microsecondsSinceEpoch}';
        // Make `other` (rotationOrder 2) inactive so the actives are
        // [owner(1), third(3)] with a paused member in between.
        final otherMembership = await s.db.groupMembership.findFirst(
          where: GroupMembershipWhereInput(
            groupId: StringFilter(equals: s.group.id),
            userId: StringFilter(equals: s.other.id),
          ),
        );
        await s.db.groupMembership.update(
          where: GroupMembershipWhereUniqueInput(id: otherMembership!.id),
          data: const UpdateGroupMembershipInput(rotationActive: false),
        );
        final third = await s.db.user.create(
          data: CreateUserInput(username: 'm3_$tag', displayName: 'Third'),
        );
        await s.db.groupMembership.create(
          data: CreateGroupMembershipInput(
            groupId: s.group.id,
            userId: third.id,
            rotationOrder: 3,
          ),
        );
        final bloc = HostRotationBloc(
          db: s.db,
          currentUserId: s.owner.id,
          groupOwnerId: s.owner.id,
        );
        final firstLoad = bloc.stream.firstWhere(
          (st) => st is HostRotationLoaded,
        );
        bloc.add(HostRotationLoadRequested(s.group.id));
        final initial = await firstLoad as HostRotationLoaded;
        // Sanity: actives are [owner, third], no past session → owner is next.
        expect(
          initial.activeEntries.map((e) => e.user.id),
          orderedEquals([s.owner.id, third.id]),
        );
        expect(initial.nextHostUserId, s.owner.id);

        // Mark `third` as next. The bug (using the active-list index against
        // _onMove's full-list semantics) would land `third` next to `other`
        // and leave nextHostUserId == owner. The fix must put third in the
        // current Nächste:r slot regardless of the paused member.
        final marked = bloc.stream.firstWhere(
          (st) => st is HostRotationLoaded && st.nextHostUserId == third.id,
        );
        bloc.add(HostRotationMarkAsNextRequested(third.id));
        final st = await marked as HostRotationLoaded;
        expect(st.nextHostUserId, third.id);
        // Paused member is still paused and still tracked separately.
        expect(st.inactiveEntries.map((e) => e.user.id), [s.other.id]);
        await bloc.close();
      },
    );

    test('mark-as-next on the current Nächste:r is a no-op', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.owner.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      final initial = await firstLoad as HostRotationLoaded;
      expect(initial.nextHostUserId, s.owner.id);
      // Dispatch and give the bloc a tick to swallow it.
      bloc.add(HostRotationMarkAsNextRequested(s.owner.id));
      await Future<void>.delayed(const Duration(milliseconds: 50));
      expect(bloc.state, isA<HostRotationLoaded>());
      expect((bloc.state as HostRotationLoaded).nextHostUserId, s.owner.id);
      await bloc.close();
    });

    test('mark-as-next by a non-owner emits an error', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.other.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      await firstLoad;
      final err = bloc.stream.firstWhere((st) => st is HostRotationError);
      bloc.add(HostRotationMarkAsNextRequested(s.owner.id));
      await err;
      await bloc.close();
    });

    test(
      'last host is locked: cannot be moved, marked, or displaced by shuffle',
      () async {
        final s = await _setup();
        final tag = 'h${DateTime.now().microsecondsSinceEpoch}';
        final third = await s.db.user.create(
          data: CreateUserInput(username: 'm3_$tag', displayName: 'Third'),
        );
        await s.db.groupMembership.create(
          data: CreateGroupMembershipInput(
            groupId: s.group.id,
            userId: third.id,
            rotationOrder: 3,
          ),
        );
        // Seed a finished session whose host is `other` — that locks `other`.
        await s.db.gameSession.create(
          data: CreateGameSessionInput(
            groupId: s.group.id,
            scheduledAt: DateTime.utc(2030, 1, 1, 19),
            hostId: s.other.id,
            location: 'L',
            finished: true,
          ),
        );
        final bloc = HostRotationBloc(
          db: s.db,
          currentUserId: s.owner.id,
          groupOwnerId: s.owner.id,
        );
        final firstLoad = bloc.stream.firstWhere(
          (st) => st is HostRotationLoaded,
        );
        bloc.add(HostRotationLoadRequested(s.group.id));
        final initial = await firstLoad as HostRotationLoaded;
        expect(initial.lastHostUserId, s.other.id);
        // other is at active idx 1; nextHost = idx 2 = third.
        expect(initial.nextHostUserId, third.id);
        final initialOtherIdx = initial.activeEntries.indexWhere(
          (e) => e.user.id == s.other.id,
        );

        // 1. Refuse to move the locked user — order unchanged.
        bloc.add(HostRotationMoveRequested(userId: s.other.id, targetIndex: 0));
        await Future<void>.delayed(const Duration(milliseconds: 50));
        var st = bloc.state as HostRotationLoaded;
        expect(
          st.activeEntries.indexWhere((e) => e.user.id == s.other.id),
          initialOtherIdx,
        );

        // 2. Refuse to mark the locked user as next — Nächste:r unchanged.
        bloc.add(HostRotationMarkAsNextRequested(s.other.id));
        await Future<void>.delayed(const Duration(milliseconds: 50));
        st = bloc.state as HostRotationLoaded;
        expect(st.nextHostUserId, third.id);

        // 3. Shuffle must keep the locked user at their original slot.
        for (var i = 0; i < 5; i++) {
          final after = bloc.stream.firstWhere(
            (s) => s is HostRotationLoaded && !identical(s, initial),
          );
          bloc.add(const HostRotationShuffleRequested());
          final shuffled = await after as HostRotationLoaded;
          expect(
            shuffled.activeEntries.indexWhere((e) => e.user.id == s.other.id),
            initialOtherIdx,
          );
          // Nächste:r stays the user just after the locked slot.
          expect(shuffled.lastHostUserId, s.other.id);
          expect(
            shuffled.nextHostUserId,
            shuffled
                .activeEntries[(initialOtherIdx + 1) %
                    shuffled.activeEntries.length]
                .user
                .id,
          );
        }
        await bloc.close();
      },
    );

    test('shuffle by a non-owner emits an error', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.other.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      await firstLoad;
      final err = bloc.stream.firstWhere((st) => st is HostRotationError);
      bloc.add(const HostRotationShuffleRequested());
      await err;
      await bloc.close();
    });

    test('toggling rotationActive removes user from active list', () async {
      final s = await _setup();
      final bloc = HostRotationBloc(
        db: s.db,
        currentUserId: s.other.id,
        groupOwnerId: s.owner.id,
      );
      final firstLoad = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded,
      );
      bloc.add(HostRotationLoadRequested(s.group.id));
      await firstLoad;

      final after = bloc.stream.firstWhere(
        (st) => st is HostRotationLoaded && st.inactiveEntries.isNotEmpty,
      );
      bloc.add(const HostRotationActiveToggled(false));
      final st = await after as HostRotationLoaded;
      expect(st.activeEntries.map((e) => e.user.id), [s.owner.id]);
      expect(st.inactiveEntries.map((e) => e.user.id), [s.other.id]);
      await bloc.close();
    });
  });

  group('NextSessionBloc', () {
    test(
      'create assigns the rotation host and rejects a second active',
      () async {
        final s = await _setup();
        final bloc = NextSessionBloc(
          s.db,
          currentUserId: s.owner.id,
          groupOwnerId: s.owner.id,
        );
        final loaded = bloc.stream.firstWhere((st) => st is NextSessionLoaded);
        bloc.add(NextSessionLoadRequested(s.group.id));
        final initial = await loaded as NextSessionLoaded;
        expect(initial.session, isNull);
        expect(initial.proposedHost?.id, s.owner.id);

        final created = bloc.stream.firstWhere(
          (st) => st is NextSessionLoaded && st.session != null,
        );
        bloc.add(
          NextSessionCreateRequested(
            groupId: s.group.id,
            scheduledAt: DateTime.utc(2030, 5, 1, 19),
            location: 'Zuhause',
          ),
        );
        final after = await created as NextSessionLoaded;
        expect(after.session!.hostId, s.owner.id);
        // Rotation must now show "other" as next.
        expect(after.proposedHost?.id, s.other.id);

        final rejected = bloc.stream.firstWhere(
          (st) => st is NextSessionLoaded && st.errorMessage != null,
        );
        bloc.add(
          NextSessionCreateRequested(
            groupId: s.group.id,
            scheduledAt: DateTime.utc(2030, 6, 1, 19),
            location: 'Anders',
          ),
        );
        final err = await rejected as NextSessionLoaded;
        expect(err.errorMessage, contains('aktiven Termin'));
        await bloc.close();
      },
    );

    test(
      'create with hostIdOverride uses the override and skips the rotated host',
      () async {
        final s = await _setup();
        final bloc = NextSessionBloc(
          s.db,
          currentUserId: s.owner.id,
          groupOwnerId: s.owner.id,
        );
        final loaded = bloc.stream.firstWhere((st) => st is NextSessionLoaded);
        bloc.add(NextSessionLoadRequested(s.group.id));
        final initial = await loaded as NextSessionLoaded;
        // Default proposed host is the owner (first in rotation, no prior session).
        expect(initial.proposedHost?.id, s.owner.id);
        // members must include both users.
        expect(initial.members.map((u) => u.id).toSet(), {
          s.owner.id,
          s.other.id,
        });

        // Override the rotated host (owner) with `other`.
        final created = bloc.stream.firstWhere(
          (st) => st is NextSessionLoaded && st.session != null,
        );
        bloc.add(
          NextSessionCreateRequested(
            groupId: s.group.id,
            scheduledAt: DateTime.utc(2030, 5, 1, 19),
            location: 'Anders',
            hostIdOverride: s.other.id,
          ),
        );
        final after = await created as NextSessionLoaded;
        expect(after.session!.hostId, s.other.id);
        expect(after.infoMessage, contains('übersprungen'));
        // The rotated host (owner) was skipped — next time the rotation
        // advances from the override's position, so the next proposedHost
        // is the person after `other` in the active rotation = owner again.
        expect(after.proposedHost?.id, s.owner.id);
        await bloc.close();
      },
    );

    test(
      'create with override referring to a non-member is rejected',
      () async {
        final s = await _setup();
        final bloc = NextSessionBloc(
          s.db,
          currentUserId: s.owner.id,
          groupOwnerId: s.owner.id,
        );
        final loaded = bloc.stream.firstWhere((st) => st is NextSessionLoaded);
        bloc.add(NextSessionLoadRequested(s.group.id));
        await loaded;

        final rejected = bloc.stream.firstWhere(
          (st) => st is NextSessionLoaded && st.errorMessage != null,
        );
        bloc.add(
          NextSessionCreateRequested(
            groupId: s.group.id,
            scheduledAt: DateTime.utc(2030, 5, 1, 19),
            location: 'Anders',
            hostIdOverride: 'not-a-real-user-id',
          ),
        );
        final st = await rejected as NextSessionLoaded;
        expect(st.errorMessage, contains('nicht in dieser Gruppe'));
        expect(st.session, isNull);
        await bloc.close();
      },
    );

    test('finish sets finished=true; non-host non-owner is rejected', () async {
      final s = await _setup();
      final bloc = NextSessionBloc(
        s.db,
        currentUserId: s.owner.id,
        groupOwnerId: s.owner.id,
      );
      final loaded = bloc.stream.firstWhere((st) => st is NextSessionLoaded);
      bloc.add(NextSessionLoadRequested(s.group.id));
      await loaded;
      final created = bloc.stream.firstWhere(
        (st) => st is NextSessionLoaded && st.session != null,
      );
      bloc.add(
        NextSessionCreateRequested(
          groupId: s.group.id,
          scheduledAt: DateTime.utc(2030, 5, 1, 19),
          location: 'Zuhause',
        ),
      );
      final created1 = await created as NextSessionLoaded;
      final id = created1.session!.id;

      // Other user (not host, not owner) tries to finish.
      final stranger = NextSessionBloc(
        s.db,
        currentUserId: s.other.id,
        groupOwnerId: 'someone_else',
      );
      final strangerLoaded = stranger.stream.firstWhere(
        (st) => st is NextSessionLoaded,
      );
      stranger.add(NextSessionLoadRequested(s.group.id));
      await strangerLoaded;
      final denied = stranger.stream.firstWhere(
        (st) => st is NextSessionLoaded && st.errorMessage != null,
      );
      stranger.add(NextSessionFinishRequested(id));
      final deniedSt = await denied as NextSessionLoaded;
      expect(deniedSt.errorMessage, contains('beenden'));

      // Owner (also host here) finishes successfully.
      final finished = bloc.stream.firstWhere(
        (st) => st is NextSessionLoaded && st.session == null,
      );
      bloc.add(NextSessionFinishRequested(id));
      final fin = await finished as NextSessionLoaded;
      expect(fin.history.any((e) => e.id == id), isTrue);
      await bloc.close();
      await stranger.close();
    });
  });

  group('GameProposalsBloc', () {
    test('without active session, create is rejected', () async {
      final s = await _setup();
      final bloc = GameProposalsBloc(db: s.db, currentUserId: s.owner.id);
      final loaded = bloc.stream.firstWhere((st) => st is GameProposalsLoaded);
      bloc.add(GameProposalsLoadRequested(s.group.id));
      final st = await loaded as GameProposalsLoaded;
      expect(st.session, isNull);

      final err = bloc.stream.firstWhere(
        (st) => st is GameProposalsLoaded && st.errorMessage != null,
      );
      bloc.add(
        const GameProposalCreateRequested(title: 'Catan', description: ''),
      );
      final errSt = await err as GameProposalsLoaded;
      expect(errSt.errorMessage, contains('aktiver'));
      await bloc.close();
    });

    test('duplicates are refused (case-insensitive)', () async {
      final s = await _setup();
      await s.db.gameSession.create(
        data: CreateGameSessionInput(
          groupId: s.group.id,
          scheduledAt: DateTime.utc(2030, 7, 1, 19),
          hostId: s.owner.id,
          location: 'X',
        ),
      );
      final bloc = GameProposalsBloc(db: s.db, currentUserId: s.owner.id);
      final loaded = bloc.stream.firstWhere((st) => st is GameProposalsLoaded);
      bloc.add(GameProposalsLoadRequested(s.group.id));
      await loaded;

      final added = bloc.stream.firstWhere(
        (st) => st is GameProposalsLoaded && st.proposals.isNotEmpty,
      );
      bloc.add(
        const GameProposalCreateRequested(
          title: 'Catan',
          description: 'Klassiker',
        ),
      );
      await added;

      final dup = bloc.stream.firstWhere(
        (st) => st is GameProposalsLoaded && st.errorMessage != null,
      );
      bloc.add(
        const GameProposalCreateRequested(title: 'catan', description: ''),
      );
      final dupSt = await dup as GameProposalsLoaded;
      expect(dupSt.errorMessage, contains('bereits'));
      expect(dupSt.proposals, hasLength(1));
      await bloc.close();
    });
  });
}
