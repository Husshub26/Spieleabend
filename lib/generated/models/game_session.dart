import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'group.dart';
import 'user.dart';
import 'game_proposal.dart';
import 'evening_rating.dart';
import 'quick_message.dart';
import 'cuisine_preference.dart';
import 'food_order.dart';
part 'game_session.freezed.dart';

@freezed
class GameSession with _$GameSession {
  const GameSession._();

  const factory GameSession({
    required String id,
    required String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) Group? group,
    required DateTime scheduledAt,
    required String hostId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? host,
    required String location,
    @Default(false) bool finished,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameProposal>? proposals,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<EveningRating>? ratings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<QuickMessage>? messages,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<CuisinePreference>? preferences,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<FoodOrder>? orders,
  }) = _GameSession;

  factory GameSession.fromJson(Map<String, dynamic> json) {
    return GameSession(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      scheduledAt: json['scheduledAt'] is DateTime
          ? json['scheduledAt'] as DateTime
          : DateTime.parse(json['scheduledAt'] as String),
      hostId: json['hostId'] as String,
      location: json['location'] as String,
      finished: (json['finished'] as bool?) ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'groupId': groupId,
      'scheduledAt': scheduledAt.toIso8601String(),
      'hostId': hostId,
      'location': location,
      'finished': finished,
    };
  }
}

/// Input for creating a new GameSession
@freezed
class CreateGameSessionInput with _$CreateGameSessionInput {
  const CreateGameSessionInput._();

  const factory CreateGameSessionInput({
    required String groupId,
    required DateTime scheduledAt,
    required String hostId,
    required String location,
    @Default(false) bool? finished,
  }) = _CreateGameSessionInput;

  factory CreateGameSessionInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateGameSessionInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'groupId': groupId,
      'scheduledAt': scheduledAt.toIso8601String(),
      'hostId': hostId,
      'location': location,
      if (finished != null) 'finished': finished,
    };
  }
}

/// Input for updating an existing GameSession
@freezed
class UpdateGameSessionInput with _$UpdateGameSessionInput {
  const UpdateGameSessionInput._();

  const factory UpdateGameSessionInput({
    String? groupId,
    DateTime? scheduledAt,
    String? hostId,
    String? location,
    bool? finished,
  }) = _UpdateGameSessionInput;

  factory UpdateGameSessionInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateGameSessionInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (groupId != null) 'groupId': groupId,
      if (scheduledAt != null) 'scheduledAt': scheduledAt?.toIso8601String(),
      if (hostId != null) 'hostId': hostId,
      if (location != null) 'location': location,
      if (finished != null) 'finished': finished,
    };
  }
}

@freezed
class GameSessionWhereUniqueInput with _$GameSessionWhereUniqueInput {
  const GameSessionWhereUniqueInput._();

  const factory GameSessionWhereUniqueInput({String? id}) =
      _GameSessionWhereUniqueInput;

  factory GameSessionWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameSessionWhereUniqueInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class GameSessionWhereInput with _$GameSessionWhereInput {
  const GameSessionWhereInput._();

  const factory GameSessionWhereInput({
    StringFilter? id,
    StringFilter? groupId,
    GroupRelationFilter? group,
    DateTimeFilter? scheduledAt,
    StringFilter? hostId,
    UserRelationFilter? host,
    StringFilter? location,
    BooleanFilter? finished,
    GameProposalListRelationFilter? proposals,
    EveningRatingListRelationFilter? ratings,
    QuickMessageListRelationFilter? messages,
    CuisinePreferenceListRelationFilter? preferences,
    FoodOrderListRelationFilter? orders,
    List<GameSessionWhereInput>? AND,
    List<GameSessionWhereInput>? OR,
    GameSessionWhereInput? NOT,
  }) = _GameSessionWhereInput;

  factory GameSessionWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameSessionWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (groupId != null) 'groupId': groupId!.toJson(),
      if (group != null) 'group': group!.toJson(),
      if (scheduledAt != null) 'scheduledAt': scheduledAt!.toJson(),
      if (hostId != null) 'hostId': hostId!.toJson(),
      if (host != null) 'host': host!.toJson(),
      if (location != null) 'location': location!.toJson(),
      if (finished != null) 'finished': finished!.toJson(),
      if (proposals != null) 'proposals': proposals!.toJson(),
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
class GameSessionListRelationFilter with _$GameSessionListRelationFilter {
  const GameSessionListRelationFilter._();

  const factory GameSessionListRelationFilter({
    GameSessionWhereInput? some,
    GameSessionWhereInput? every,
    GameSessionWhereInput? none,
  }) = _GameSessionListRelationFilter;

  factory GameSessionListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'GameSessionListRelationFilter.fromJson not needed',
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
class GameSessionRelationFilter with _$GameSessionRelationFilter {
  const GameSessionRelationFilter._();

  const factory GameSessionRelationFilter({
    @JsonKey(name: 'is') GameSessionWhereInput? is_,
    GameSessionWhereInput? isNot,
  }) = _GameSessionRelationFilter;

  factory GameSessionRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameSessionRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class GameSessionOrderByInput with _$GameSessionOrderByInput {
  const GameSessionOrderByInput._();

  const factory GameSessionOrderByInput({
    SortOrder? id,
    SortOrder? groupId,
    SortOrder? scheduledAt,
    SortOrder? hostId,
    SortOrder? location,
    SortOrder? finished,
  }) = _GameSessionOrderByInput;

  factory GameSessionOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameSessionOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (groupId != null) 'groupId': groupId!.name,
      if (scheduledAt != null) 'scheduledAt': scheduledAt!.name,
      if (hostId != null) 'hostId': hostId!.name,
      if (location != null) 'location': location!.name,
      if (finished != null) 'finished': finished!.name,
    };
  }
}
