// Shared test setup for sqflite + Prisma based tests.

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:spieleabend/api/prisma_client.dart';
import 'package:spieleabend/features/groups/bloc.dart';

void initSqfliteFfi() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });
}

int _seq = 0;

/// Returns `(bloc, alice, bob)` with `alice` already loaded as the active
/// user. sqflite_ffi reuses `:memory:` across tests in the same process,
/// so each test gets unique usernames instead of trying to wipe state.
Future<(GroupsBloc, User, User)> setupGroupsBloc() async {
  final tag = 'p${DateTime.now().microsecondsSinceEpoch}_${_seq++}';
  final db = await openInMemoryPrismaClient();
  final alice = await db.user.create(
    data: CreateUserInput(username: 'alice_$tag', displayName: 'Alice'),
  );
  final bob = await db.user.create(
    data: CreateUserInput(username: 'bob_$tag', displayName: 'Bob'),
  );
  final bloc = GroupsBloc(db: db);
  final loadedFuture = bloc.stream.firstWhere(
    (s) => s.user?.id == alice.id && !s.loading,
  );
  bloc.add(GroupsUserChanged(alice));
  await loadedFuture;
  return (bloc, alice, bob);
}
