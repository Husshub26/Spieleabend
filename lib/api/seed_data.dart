import '../generated/index.dart';

/// Seeds the database with the three known users so anyone can log in
/// immediately. Nothing else is seeded — groups, sessions, proposals,
/// delivery services and menu items must be created by the user.
///
/// Idempotent: if any user already exists the seed is a no-op.
Future<void> seedDatabase(PrismaClient db) async {
  final existing = await db.user.findFirst();
  if (existing != null) return;

  await db.user.create(
    data: const CreateUserInput(username: 'bruno', displayName: 'Bruno'),
  );
  await db.user.create(
    data: const CreateUserInput(username: 'hussein', displayName: 'Hussein'),
  );
  await db.user.create(
    data: const CreateUserInput(username: 'chris', displayName: 'Chris'),
  );
}
