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
