import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'group.dart';
import 'user.dart';
part 'group_membership.freezed.dart';

@freezed
class GroupMembership with _$GroupMembership {
  const GroupMembership._();

  const factory GroupMembership({
    required String id,
    required String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) Group? group,
    required String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    required DateTime joinedAt,
    @Default(0) int rotationOrder,
    @Default(true) bool rotationActive,
  }) = _GroupMembership;

  factory GroupMembership.fromJson(Map<String, dynamic> json) {
    return GroupMembership(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      userId: json['userId'] as String,
      joinedAt: json['joinedAt'] is DateTime
          ? json['joinedAt'] as DateTime
          : DateTime.parse(json['joinedAt'] as String),
      rotationOrder: (json['rotationOrder'] as num?)?.toInt() ?? 0,
      rotationActive: (json['rotationActive'] as bool?) ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'groupId': groupId,
      'userId': userId,
      'joinedAt': joinedAt.toIso8601String(),
      'rotationOrder': rotationOrder,
      'rotationActive': rotationActive,
    };
  }
}

/// Input for creating a new GroupMembership
@freezed
class CreateGroupMembershipInput with _$CreateGroupMembershipInput {
  const CreateGroupMembershipInput._();

  const factory CreateGroupMembershipInput({
    required String groupId,
    required String userId,
    @Default(0) int? rotationOrder,
    @Default(true) bool? rotationActive,
  }) = _CreateGroupMembershipInput;

  factory CreateGroupMembershipInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateGroupMembershipInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'groupId': groupId,
      'userId': userId,
      if (rotationOrder != null) 'rotationOrder': rotationOrder,
      if (rotationActive != null) 'rotationActive': rotationActive,
    };
  }
}

/// Input for updating an existing GroupMembership
@freezed
class UpdateGroupMembershipInput with _$UpdateGroupMembershipInput {
  const UpdateGroupMembershipInput._();

  const factory UpdateGroupMembershipInput({
    String? groupId,
    String? userId,
    int? rotationOrder,
    bool? rotationActive,
  }) = _UpdateGroupMembershipInput;

  factory UpdateGroupMembershipInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateGroupMembershipInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (groupId != null) 'groupId': groupId,
      if (userId != null) 'userId': userId,
      if (rotationOrder != null) 'rotationOrder': rotationOrder,
      if (rotationActive != null) 'rotationActive': rotationActive,
    };
  }
}

@freezed
class GroupMembershipWhereUniqueInput with _$GroupMembershipWhereUniqueInput {
  const GroupMembershipWhereUniqueInput._();

  const factory GroupMembershipWhereUniqueInput({String? id}) =
      _GroupMembershipWhereUniqueInput;

  factory GroupMembershipWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'GroupMembershipWhereUniqueInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class GroupMembershipWhereInput with _$GroupMembershipWhereInput {
  const GroupMembershipWhereInput._();

  const factory GroupMembershipWhereInput({
    StringFilter? id,
    StringFilter? groupId,
    GroupRelationFilter? group,
    StringFilter? userId,
    UserRelationFilter? user,
    DateTimeFilter? joinedAt,
    IntFilter? rotationOrder,
    BooleanFilter? rotationActive,
    List<GroupMembershipWhereInput>? AND,
    List<GroupMembershipWhereInput>? OR,
    GroupMembershipWhereInput? NOT,
  }) = _GroupMembershipWhereInput;

  factory GroupMembershipWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupMembershipWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (groupId != null) 'groupId': groupId!.toJson(),
      if (group != null) 'group': group!.toJson(),
      if (userId != null) 'userId': userId!.toJson(),
      if (user != null) 'user': user!.toJson(),
      if (joinedAt != null) 'joinedAt': joinedAt!.toJson(),
      if (rotationOrder != null) 'rotationOrder': rotationOrder!.toJson(),
      if (rotationActive != null) 'rotationActive': rotationActive!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class GroupMembershipListRelationFilter
    with _$GroupMembershipListRelationFilter {
  const GroupMembershipListRelationFilter._();

  const factory GroupMembershipListRelationFilter({
    GroupMembershipWhereInput? some,
    GroupMembershipWhereInput? every,
    GroupMembershipWhereInput? none,
  }) = _GroupMembershipListRelationFilter;

  factory GroupMembershipListRelationFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    throw UnimplementedError(
      'GroupMembershipListRelationFilter.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (some != null) 'some': some!.toJson(),
      if (every != null) 'every': every!.toJson(),
      if (none != null) 'none': none!.toJson(),
    };
  }
}

@freezed
class GroupMembershipRelationFilter with _$GroupMembershipRelationFilter {
  const GroupMembershipRelationFilter._();

  const factory GroupMembershipRelationFilter({
    @JsonKey(name: 'is') GroupMembershipWhereInput? is_,
    GroupMembershipWhereInput? isNot,
  }) = _GroupMembershipRelationFilter;

  factory GroupMembershipRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'GroupMembershipRelationFilter.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class GroupMembershipOrderByInput with _$GroupMembershipOrderByInput {
  const GroupMembershipOrderByInput._();

  const factory GroupMembershipOrderByInput({
    SortOrder? id,
    SortOrder? groupId,
    SortOrder? userId,
    SortOrder? joinedAt,
    SortOrder? rotationOrder,
    SortOrder? rotationActive,
  }) = _GroupMembershipOrderByInput;

  factory GroupMembershipOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupMembershipOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (groupId != null) 'groupId': groupId!.name,
      if (userId != null) 'userId': userId!.name,
      if (joinedAt != null) 'joinedAt': joinedAt!.name,
      if (rotationOrder != null) 'rotationOrder': rotationOrder!.name,
      if (rotationActive != null) 'rotationActive': rotationActive!.name,
    };
  }
}
