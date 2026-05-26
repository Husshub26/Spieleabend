// Bridge between the in-memory database and the generated Prisma client.
//
// The generated `PrismaClient` requires a `SqlDriverAdapter`. To keep the
// app fully local (no network, no on-disk file) we open a sqflite database
// at `:memory:`. On every platform we initialise the right factory, then
// hand the `Database` to a thin wrapper around `SQLiteAdapter`.
//
// The generated `prisma_flutter_connector` 0.5.5 has two SQLite quirks we
// work around here:
//   1. `@default(cuid())` / `@default(now())` are silently dropped for the
//      SQLite provider — so we add column-level `DEFAULT` clauses to the
//      `CREATE TABLE` statements (`lower(hex(randomblob(16)))` for ids and
//      `CURRENT_TIMESTAMP` for timestamps).
//   2. `Delegate.create()` reads back the inserted row via the generic query
//      executor, which only works when the SQL ends with `RETURNING *`.
//      [_ReturningSQLiteAdapter] appends that clause to every `INSERT`.
//
// Swapping for a real REST/Postgres backend later only requires replacing
// the adapter passed to `PrismaClient(adapter: …)` — feature code stays
// untouched.
import 'dart:async';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:prisma_flutter_connector/runtime.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import '../generated/index.dart';

export '../generated/index.dart';

/// Initialise an in-memory SQLite database, set up the schema and return a
/// fully wired Prisma client.
///
/// On web the database is persisted to IndexedDB via `sqflite_ffi_web` so
/// users keep their groups, sessions and votes across reloads. On native
/// platforms (and inside `flutter test`) we open `:memory:` because the app
/// always reseeds itself and we don't ship a path_provider dependency.
Future<PrismaClient> openInMemoryPrismaClient() async {
  final String path;
  if (kIsWeb) {
    databaseFactory = databaseFactoryFfiWeb;
    path = 'spieleabend.db';
  } else {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    path = inMemoryDatabasePath;
  }

  final database = await databaseFactory.openDatabase(
    path,
    options: OpenDatabaseOptions(version: 1),
  );

  for (final stmt in _createTableStatements) {
    await database.execute(stmt);
  }

  registerAllModels(schemaRegistry);
  return PrismaClient(adapter: _ReturningSQLiteAdapter(database));
}

const _idDefault = 'TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(16))))';

// SQLite uses the model name (PascalCase) as table name because the
// generated `schema_registry.g.dart` registers them that way.
final _createTableStatements = <String>[
  '''
  CREATE TABLE IF NOT EXISTS "User" (
    "id"          $_idDefault,
    "username"    TEXT NOT NULL UNIQUE,
    "displayName" TEXT NOT NULL
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "Group" (
    "id"          $_idDefault,
    "name"        TEXT NOT NULL,
    "createdAt"   TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdById" TEXT NOT NULL
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "GroupMembership" (
    "id"             $_idDefault,
    "groupId"        TEXT NOT NULL,
    "userId"         TEXT NOT NULL,
    "joinedAt"       TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "rotationOrder"  INTEGER NOT NULL DEFAULT 0,
    "rotationActive" INTEGER NOT NULL DEFAULT 1,
    UNIQUE ("groupId", "userId")
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "GameSession" (
    "id"          $_idDefault,
    "groupId"     TEXT NOT NULL,
    "scheduledAt" TEXT NOT NULL,
    "hostId"      TEXT NOT NULL,
    "location"    TEXT NOT NULL,
    "finished"    INTEGER NOT NULL DEFAULT 0
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "GameProposal" (
    "id"           $_idDefault,
    "sessionId"    TEXT NOT NULL,
    "proposedById" TEXT NOT NULL,
    "title"        TEXT NOT NULL,
    "description"  TEXT NOT NULL,
    UNIQUE ("sessionId", "title")
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "GameVote" (
    "id"         $_idDefault,
    "proposalId" TEXT NOT NULL,
    "userId"     TEXT NOT NULL,
    "score"      INTEGER NOT NULL,
    UNIQUE ("proposalId", "userId")
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "EveningRating" (
    "id"           $_idDefault,
    "sessionId"    TEXT NOT NULL,
    "userId"       TEXT NOT NULL,
    "hostScore"    INTEGER NOT NULL,
    "foodScore"    INTEGER NOT NULL,
    "eveningScore" INTEGER NOT NULL,
    "comment"      TEXT NOT NULL
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "QuickMessage" (
    "id"        $_idDefault,
    "sessionId" TEXT NOT NULL,
    "senderId"  TEXT NOT NULL,
    "text"      TEXT NOT NULL,
    "sentAt"    TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "CuisinePreference" (
    "id"        $_idDefault,
    "sessionId" TEXT NOT NULL,
    "userId"    TEXT NOT NULL,
    "preferred" TEXT NOT NULL
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "DeliveryService" (
    "id"      $_idDefault,
    "name"    TEXT NOT NULL,
    "cuisine" TEXT NOT NULL
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "MenuItem" (
    "id"                $_idDefault,
    "deliveryServiceId" TEXT NOT NULL,
    "name"              TEXT NOT NULL,
    "description"       TEXT NOT NULL,
    "priceEur"          REAL NOT NULL
  )''',
  '''
  CREATE TABLE IF NOT EXISTS "FoodOrder" (
    "id"          $_idDefault,
    "sessionId"   TEXT NOT NULL,
    "userId"      TEXT NOT NULL,
    "menuItemIds" TEXT NOT NULL
  )''',
];

/// `SQLiteAdapter` subclass that:
///   * Appends `RETURNING *` to every `INSERT` so the generated delegates'
///     `Delegate.create()` calls receive the inserted row back.
///   * Coerces `bool` → `0/1` and `DateTime` → ISO-8601 strings, because
///     sqflite (used on Android, iOS, desktop and web) only accepts
///     `num`, `String` and `Uint8List` as bind values.
///   * Re-classifies `int` result columns that the schema knows are
///     booleans, so the connector's deserializer rehydrates them as `bool`
///     instead of leaving them as `0/1` (which would make `… as bool?`
///     casts in generated `fromJson` constructors fail).
class _ReturningSQLiteAdapter extends SQLiteAdapter {
  _ReturningSQLiteAdapter(super.database);

  @override
  Future<SqlResultSet> queryRaw(SqlQuery query) async {
    final prepared = _prepare(query, ensureReturning: true);
    final raw = await super.queryRaw(prepared);
    return _retypeBooleans(prepared.sql, raw);
  }

  @override
  Future<int> executeRaw(SqlQuery query) {
    return super.executeRaw(_prepare(query, ensureReturning: false));
  }

  static SqlQuery _prepare(SqlQuery query, {required bool ensureReturning}) {
    var sql = query.sql.trimLeft();
    if (ensureReturning) {
      final upper = sql.toUpperCase();
      if (upper.startsWith('INSERT ') && !upper.contains(' RETURNING ')) {
        sql = '$sql RETURNING *';
      }
    }
    return SqlQuery(
      sql: sql,
      args: query.args.map(_coerce).toList(growable: false),
      argTypes: query.argTypes,
    );
  }

  static Object? _coerce(Object? value) {
    if (value is bool) return value ? 1 : 0;
    if (value is DateTime) return value.toUtc().toIso8601String();
    return value;
  }

  // Pulls the first quoted identifier following INSERT INTO / UPDATE / FROM.
  static final _tableRegExp = RegExp(
    r'(?:INSERT\s+INTO|UPDATE|FROM)\s+"([^"]+)"',
    caseSensitive: false,
  );

  static SqlResultSet _retypeBooleans(String sql, SqlResultSet result) {
    if (result.columnNames.isEmpty) return result;
    final match = _tableRegExp.firstMatch(sql);
    if (match == null) return result;
    final model = schemaRegistry.getModel(match.group(1)!);
    if (model == null) return result;

    final newTypes = List<ColumnType>.of(result.columnTypes);
    var changed = false;
    for (var i = 0; i < result.columnNames.length; i++) {
      final field = model.fields[result.columnNames[i]];
      if (field != null &&
          field.type == 'bool' &&
          newTypes[i] != ColumnType.boolean) {
        newTypes[i] = ColumnType.boolean;
        changed = true;
      }
    }
    if (!changed) return result;
    return SqlResultSet(
      columnNames: result.columnNames,
      columnTypes: newTypes,
      rows: result.rows,
      lastInsertId: result.lastInsertId,
    );
  }
}
