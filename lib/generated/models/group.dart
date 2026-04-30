import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'user.dart';
import 'group_membership.dart';
import 'game_session.dart';
part 'group.freezed.dart';

@freezed
class Group with _$Group {
  const Group._();

  const factory Group({
    required String id,
    required String name,
    required DateTime createdAt,
    required String createdById,
    @JsonKey(includeFromJson: false, includeToJson: false) User? createdBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameSession>? sessions,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['createdAt'] is DateTime
          ? json['createdAt'] as DateTime
          : DateTime.parse(json['createdAt'] as String),
      createdById: json['createdById'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'createdById': createdById,
    };
  }
}

/// Input for creating a new Group
@freezed
class CreateGroupInput with _$CreateGroupInput {
  const CreateGroupInput._();

  const factory CreateGroupInput({
    required String name,
    required String createdById,
  }) = _CreateGroupInput;

  factory CreateGroupInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateGroupInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'name': name, 'createdById': createdById};
  }
}

/// Input for updating an existing Group
@freezed
class UpdateGroupInput with _$UpdateGroupInput {
  const UpdateGroupInput._();

  const factory UpdateGroupInput({String? name, String? createdById}) =
      _UpdateGroupInput;

  factory UpdateGroupInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateGroupInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) 'name': name,
      if (createdById != null) 'createdById': createdById,
    };
  }
}

@freezed
class GroupWhereUniqueInput with _$GroupWhereUniqueInput {
  const GroupWhereUniqueInput._();

  const factory GroupWhereUniqueInput({String? id}) = _GroupWhereUniqueInput;

  factory GroupWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupWhereUniqueInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class GroupWhereInput with _$GroupWhereInput {
  const GroupWhereInput._();

  const factory GroupWhereInput({
    StringFilter? id,
    StringFilter? name,
    DateTimeFilter? createdAt,
    StringFilter? createdById,
    UserRelationFilter? createdBy,
    GroupMembershipListRelationFilter? memberships,
    GameSessionListRelationFilter? sessions,
    List<GroupWhereInput>? AND,
    List<GroupWhereInput>? OR,
    GroupWhereInput? NOT,
  }) = _GroupWhereInput;

  factory GroupWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (name != null) 'name': name!.toJson(),
      if (createdAt != null) 'createdAt': createdAt!.toJson(),
      if (createdById != null) 'createdById': createdById!.toJson(),
      if (createdBy != null) 'createdBy': createdBy!.toJson(),
      if (memberships != null) 'memberships': memberships!.toJson(),
      if (sessions != null) 'sessions': sessions!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class GroupListRelationFilter with _$GroupListRelationFilter {
  const GroupListRelationFilter._();

  const factory GroupListRelationFilter({
    GroupWhereInput? some,
    GroupWhereInput? every,
    GroupWhereInput? none,
  }) = _GroupListRelationFilter;

  factory GroupListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupListRelationFilter.fromJson not needed');
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
class GroupRelationFilter with _$GroupRelationFilter {
  const GroupRelationFilter._();

  const factory GroupRelationFilter({
    @JsonKey(name: 'is') GroupWhereInput? is_,
    GroupWhereInput? isNot,
  }) = _GroupRelationFilter;

  factory GroupRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class GroupOrderByInput with _$GroupOrderByInput {
  const GroupOrderByInput._();

  const factory GroupOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? createdAt,
    SortOrder? createdById,
  }) = _GroupOrderByInput;

  factory GroupOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GroupOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (name != null) 'name': name!.name,
      if (createdAt != null) 'createdAt': createdAt!.name,
      if (createdById != null) 'createdById': createdById!.name,
    };
  }
}
