import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_session.dart';
import 'group_membership.dart';
import 'group.dart';
import 'game_proposal.dart';
import 'game_vote.dart';
import 'evening_rating.dart';
import 'quick_message.dart';
import 'cuisine_preference.dart';
import 'food_order.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String username,
    required String displayName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameSession>? hostedSessions,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<Group>? createdGroups,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameProposal>? proposals,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameVote>? votes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<EveningRating>? ratings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<QuickMessage>? messages,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<CuisinePreference>? preferences,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<FoodOrder>? orders,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      username: json['username'] as String,
      displayName: json['displayName'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'displayName': displayName,
    };
  }
}

/// Input for creating a new User
@freezed
class CreateUserInput with _$CreateUserInput {
  const CreateUserInput._();

  const factory CreateUserInput({
    required String username,
    required String displayName,
  }) = _CreateUserInput;

  factory CreateUserInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateUserInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'username': username, 'displayName': displayName};
  }
}

/// Input for updating an existing User
@freezed
class UpdateUserInput with _$UpdateUserInput {
  const UpdateUserInput._();

  const factory UpdateUserInput({String? username, String? displayName}) =
      _UpdateUserInput;

  factory UpdateUserInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateUserInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (username != null) 'username': username,
      if (displayName != null) 'displayName': displayName,
    };
  }
}

@freezed
class UserWhereUniqueInput with _$UserWhereUniqueInput {
  const UserWhereUniqueInput._();

  const factory UserWhereUniqueInput({String? id, String? username}) =
      _UserWhereUniqueInput;

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UserWhereUniqueInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id,
      if (username != null) 'username': username,
    };
  }
}

@freezed
class UserWhereInput with _$UserWhereInput {
  const UserWhereInput._();

  const factory UserWhereInput({
    StringFilter? id,
    StringFilter? username,
    StringFilter? displayName,
    GameSessionListRelationFilter? hostedSessions,
    GroupMembershipListRelationFilter? memberships,
    GroupListRelationFilter? createdGroups,
    GameProposalListRelationFilter? proposals,
    GameVoteListRelationFilter? votes,
    EveningRatingListRelationFilter? ratings,
    QuickMessageListRelationFilter? messages,
    CuisinePreferenceListRelationFilter? preferences,
    FoodOrderListRelationFilter? orders,
    List<UserWhereInput>? AND,
    List<UserWhereInput>? OR,
    UserWhereInput? NOT,
  }) = _UserWhereInput;

  factory UserWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UserWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (username != null) 'username': username!.toJson(),
      if (displayName != null) 'displayName': displayName!.toJson(),
      if (hostedSessions != null) 'hostedSessions': hostedSessions!.toJson(),
      if (memberships != null) 'memberships': memberships!.toJson(),
      if (createdGroups != null) 'createdGroups': createdGroups!.toJson(),
      if (proposals != null) 'proposals': proposals!.toJson(),
      if (votes != null) 'votes': votes!.toJson(),
      if (ratings != null) 'ratings': ratings!.toJson(),
      if (messages != null) 'messages': messages!.toJson(),
      if (preferences != null) 'preferences': preferences!.toJson(),
      if (orders != null) 'orders': orders!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class UserListRelationFilter with _$UserListRelationFilter {
  const UserListRelationFilter._();

  const factory UserListRelationFilter({
    UserWhereInput? some,
    UserWhereInput? every,
    UserWhereInput? none,
  }) = _UserListRelationFilter;

  factory UserListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UserListRelationFilter.fromJson not needed');
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
class UserRelationFilter with _$UserRelationFilter {
  const UserRelationFilter._();

  const factory UserRelationFilter({
    @JsonKey(name: 'is') UserWhereInput? is_,
    UserWhereInput? isNot,
  }) = _UserRelationFilter;

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UserRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class UserOrderByInput with _$UserOrderByInput {
  const UserOrderByInput._();

  const factory UserOrderByInput({
    SortOrder? id,
    SortOrder? username,
    SortOrder? displayName,
  }) = _UserOrderByInput;

  factory UserOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UserOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (username != null) 'username': username!.name,
      if (displayName != null) 'displayName': displayName!.name,
    };
  }
}
