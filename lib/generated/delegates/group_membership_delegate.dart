import 'package:prisma_flutter_connector/runtime.dart';
import 'package:prisma_flutter_connector/src/runtime/query/computed_field.dart';
import '../models/group_membership.dart';
import '../filters.dart';

/// Delegate for GroupMembership operations
/// Provides type-safe CRUD operations using database adapters
class GroupMembershipDelegate {
  GroupMembershipDelegate(this._executor);

  final BaseExecutor _executor;

  /// Find a single GroupMembership by unique field(s)
  Future<GroupMembership?> findUnique({
    required GroupMembershipWhereUniqueInput where,
    Map<String, dynamic>? include,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.findUnique)
        .where(_whereUniqueToJson(where));

    if (include != null) queryBuilder.include(include);

    final result = await _executor.executeQueryAsSingleMap(
      queryBuilder.build(),
    );
    return result != null
        ? GroupMembership.fromJson(_normalizeForJson(result))
        : null;
  }

  /// Find a single GroupMembership or throw if not found
  Future<GroupMembership> findUniqueOrThrow({
    required GroupMembershipWhereUniqueInput where,
  }) async {
    final result = await findUnique(where: where);
    if (result == null) {
      throw Exception('GroupMembership not found');
    }
    return result;
  }

  /// Find the first GroupMembership matching criteria
  Future<GroupMembership?> findFirst({
    GroupMembershipWhereInput? where,
    GroupMembershipOrderByInput? orderBy,
    Map<String, dynamic>? include,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.findFirst);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));
    if (include != null) queryBuilder.include(include);

    final result = await _executor.executeQueryAsSingleMap(
      queryBuilder.build(),
    );
    return result != null
        ? GroupMembership.fromJson(_normalizeForJson(result))
        : null;
  }

  /// Find multiple GroupMemberships with optional filters
  Future<List<GroupMembership>> findMany({
    GroupMembershipWhereInput? where,
    dynamic orderBy,
    int? take,
    int? skip,
    Map<String, dynamic>? include,
    Map<String, dynamic>? includeRequired,
    List<String>? selectFields,
    bool? distinct,
    List<String>? distinctFields,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.findMany);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy is Map<String, dynamic>) queryBuilder.orderBy(orderBy);
    if (orderBy is List) queryBuilder.orderBy(orderBy);
    if (orderBy is GroupMembershipOrderByInput)
      queryBuilder.orderBy(_orderByToJson(orderBy));
    if (take != null) queryBuilder.take(take);
    if (skip != null) queryBuilder.skip(skip);
    if (include != null) queryBuilder.include(include);
    if (includeRequired != null) queryBuilder.includeRequired(includeRequired);
    if (selectFields != null) queryBuilder.selectFields(selectFields);
    if (distinct == true) queryBuilder.distinct(distinctFields);

    final results = await _executor.executeQueryAsMaps(queryBuilder.build());
    return results
        .map((json) => GroupMembership.fromJson(_normalizeForJson(json)))
        .toList();
  }

  /// Find multiple GroupMemberships as raw maps (use with include/computed)
  Future<List<Map<String, dynamic>>> findManyRaw({
    Map<String, dynamic>? where,
    dynamic orderBy,
    int? take,
    int? skip,
    Map<String, dynamic>? include,
    Map<String, dynamic>? includeRequired,
    List<String>? selectFields,
    Map<String, ComputedField>? computed,
    bool? distinct,
    List<String>? distinctFields,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.findMany);

    if (where != null) queryBuilder.where(where);
    if (orderBy is Map<String, dynamic>) queryBuilder.orderBy(orderBy);
    if (orderBy is List) queryBuilder.orderBy(orderBy);
    if (take != null) queryBuilder.take(take);
    if (skip != null) queryBuilder.skip(skip);
    if (include != null) queryBuilder.include(include);
    if (includeRequired != null) queryBuilder.includeRequired(includeRequired);
    if (selectFields != null) queryBuilder.selectFields(selectFields);
    if (computed != null) queryBuilder.computed(computed);
    if (distinct == true) queryBuilder.distinct(distinctFields);

    return await _executor.executeQueryAsMaps(queryBuilder.build());
  }

  /// Find the first GroupMembership as a raw map (use with include/computed)
  Future<Map<String, dynamic>?> findFirstRaw({
    Map<String, dynamic>? where,
    dynamic orderBy,
    Map<String, dynamic>? include,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.findFirst);

    if (where != null) queryBuilder.where(where);
    if (orderBy is Map<String, dynamic>) queryBuilder.orderBy(orderBy);
    if (orderBy is List) queryBuilder.orderBy(orderBy);
    if (include != null) queryBuilder.include(include);

    return await _executor.executeQueryAsSingleMap(queryBuilder.build());
  }

  /// Create a new GroupMembership
  Future<GroupMembership> create({
    required CreateGroupMembershipInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.create)
        .data(data.toJson())
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    if (result == null) {
      throw Exception('Failed to create GroupMembership');
    }
    return GroupMembership.fromJson(_normalizeForJson(result));
  }

  /// Create multiple GroupMemberships
  Future<int> createMany({
    required List<CreateGroupMembershipInput> data,
  }) async {
    final query = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.createMany)
        .data({'data': data.map((d) => d.toJson()).toList()})
        .build();

    return await _executor.executeMutation(query);
  }

  /// Update a GroupMembership
  Future<GroupMembership> update({
    required GroupMembershipWhereUniqueInput where,
    required UpdateGroupMembershipInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.update)
        .where(_whereUniqueToJson(where))
        .data(data.toJson())
        .build();

    await _executor.executeMutation(query);

    // Fetch the updated record
    return await findUniqueOrThrow(where: where);
  }

  /// Update multiple GroupMemberships
  Future<int> updateMany({
    required GroupMembershipWhereInput where,
    required UpdateGroupMembershipInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.updateMany)
        .where(_whereToJson(where))
        .data(data.toJson())
        .build();

    return await _executor.executeMutation(query);
  }

  /// Delete a GroupMembership
  Future<GroupMembership> delete({
    required GroupMembershipWhereUniqueInput where,
  }) async {
    // Fetch before deleting
    final existing = await findUniqueOrThrow(where: where);

    final query = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.delete)
        .where(_whereUniqueToJson(where))
        .build();

    await _executor.executeMutation(query);
    return existing;
  }

  /// Delete multiple GroupMemberships
  Future<int> deleteMany({required GroupMembershipWhereInput where}) async {
    final query = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.deleteMany)
        .where(_whereToJson(where))
        .build();

    return await _executor.executeMutation(query);
  }

  /// Count GroupMemberships matching criteria
  Future<int> count({GroupMembershipWhereInput? where}) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.count);

    if (where != null) queryBuilder.where(_whereToJson(where));

    return await _executor.executeCount(queryBuilder.build());
  }

  /// Group GroupMemberships by fields with aggregations
  Future<List<Map<String, dynamic>>> groupBy({
    required List<String> by,
    GroupMembershipWhereInput? where,
    bool? count,
    Map<String, bool>? sum,
    Map<String, bool>? avg,
    Map<String, bool>? min,
    Map<String, bool>? max,
    dynamic orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('GroupMembership')
        .action(QueryAction.groupBy)
        .groupByFields(by);

    if (where != null) queryBuilder.where(_whereToJson(where));

    final agg = <String, dynamic>{};
    if (count == true) agg['_count'] = true;
    if (sum != null) agg['_sum'] = sum;
    if (avg != null) agg['_avg'] = avg;
    if (min != null) agg['_min'] = min;
    if (max != null) agg['_max'] = max;
    if (agg.isNotEmpty) queryBuilder.aggregation(agg);

    if (orderBy != null) queryBuilder.orderBy(orderBy);

    return await _executor.executeQueryAsMaps(queryBuilder.build());
  }

  /// Normalize map values for Freezed fromJson (DateTime -> String, etc.)
  Map<String, dynamic> _normalizeForJson(Map<String, dynamic> map) {
    return map.map((key, value) {
      if (value is DateTime) return MapEntry(key, value.toIso8601String());
      if (value is Map<String, dynamic>)
        return MapEntry(key, _normalizeForJson(value));
      if (value is List) {
        return MapEntry(
          key,
          value.map((e) {
            if (e is Map<String, dynamic>) return _normalizeForJson(e);
            if (e is DateTime) return e.toIso8601String();
            return e;
          }).toList(),
        );
      }
      return MapEntry(key, value);
    });
  }

  /// Convert WhereUniqueInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _whereUniqueToJson(
    GroupMembershipWhereUniqueInput where,
  ) {
    return where.toJson()..removeWhere((key, value) => value == null);
  }

  /// Convert WhereInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _whereToJson(GroupMembershipWhereInput where) {
    final json = where.toJson();
    final result = <String, dynamic>{};

    for (final entry in json.entries) {
      if (entry.value == null) continue;

      if (entry.key == 'AND' || entry.key == 'OR') {
        final list = entry.value as List?;
        if (list != null && list.isNotEmpty) {
          result[entry.key] = list.map((item) {
            if (item is Map) return item;
            return (item as GroupMembershipWhereInput).toJson();
          }).toList();
        }
      } else if (entry.key == 'NOT') {
        final not = entry.value;
        if (not is Map) {
          result[entry.key] = not;
        } else if (not is GroupMembershipWhereInput) {
          result[entry.key] = not.toJson();
        }
      } else {
        if (entry.value is Map) {
          final filterMap = entry.value as Map;
          final cleanedFilter = <String, dynamic>{};
          for (final filterEntry in filterMap.entries) {
            if (filterEntry.value != null) {
              cleanedFilter[filterEntry.key.toString()] = filterEntry.value;
            }
          }
          if (cleanedFilter.isNotEmpty) {
            result[entry.key] = cleanedFilter;
          }
        } else {
          try {
            final serialized = (entry.value as dynamic).toJson();
            if (serialized is Map) {
              final cleaned = <String, dynamic>{};
              for (final e in (serialized as Map).entries) {
                if (e.value != null) cleaned[e.key.toString()] = e.value;
              }
              if (cleaned.isNotEmpty) result[entry.key] = cleaned;
            } else {
              result[entry.key] = entry.value;
            }
          } catch (_) {
            result[entry.key] = entry.value;
          }
        }
      }
    }

    return result;
  }

  /// Convert OrderByInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _orderByToJson(GroupMembershipOrderByInput orderBy) {
    final json = orderBy.toJson();
    final result = <String, dynamic>{};

    for (final entry in json.entries) {
      if (entry.value != null) {
        result[entry.key] = entry.value.toString().split('.').last;
      }
    }

    return result;
  }
}
