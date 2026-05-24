// Verifies that `seedDatabase` only inserts the three known users and
// is idempotent (safe to call repeatedly across hot reloads / re-opens).

import 'package:flutter_test/flutter_test.dart';
import 'package:spieleabend/api/prisma_client.dart';
import 'package:spieleabend/api/seed_data.dart';

import '_helpers.dart';

void main() {
  initSqfliteFfi();

  test('seed inserts only the three known users', () async {
    final db = await openInMemoryPrismaClient();
    await seedDatabase(db);

    final users = await db.user.findMany();
    expect(
      users.map((u) => u.username),
      containsAll(['bruno', 'hussein', 'chris']),
    );
    expect(await db.group.findMany(), isEmpty);
    expect(await db.gameSession.findMany(), isEmpty);
  });

  test('seedDatabase is idempotent', () async {
    final db = await openInMemoryPrismaClient();
    await seedDatabase(db);
    await seedDatabase(db);
    expect(await db.user.findMany(), hasLength(3));
  });
}
