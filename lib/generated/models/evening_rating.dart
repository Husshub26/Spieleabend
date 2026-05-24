import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_session.dart';
import 'user.dart';
part 'evening_rating.freezed.dart';

@freezed
class EveningRating with _$EveningRating {
  const EveningRating._();

  const factory EveningRating({
    required String id,
    required String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    required String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    required int hostScore,
    required int foodScore,
    required int eveningScore,
    required String comment,
  }) = _EveningRating;

  factory EveningRating.fromJson(Map<String, dynamic> json) {
    return EveningRating(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      userId: json['userId'] as String,
      hostScore: (json['hostScore'] as num).toInt(),
      foodScore: (json['foodScore'] as num).toInt(),
      eveningScore: (json['eveningScore'] as num).toInt(),
      comment: json['comment'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'sessionId': sessionId,
      'userId': userId,
      'hostScore': hostScore,
      'foodScore': foodScore,
      'eveningScore': eveningScore,
      'comment': comment,
    };
  }
}

/// Input for creating a new EveningRating
@freezed
class CreateEveningRatingInput with _$CreateEveningRatingInput {
  const CreateEveningRatingInput._();

  const factory CreateEveningRatingInput({
    required String sessionId,
    required String userId,
    required int hostScore,
    required int foodScore,
    required int eveningScore,
    required String comment,
  }) = _CreateEveningRatingInput;

  factory CreateEveningRatingInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateEveningRatingInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sessionId': sessionId,
      'userId': userId,
      'hostScore': hostScore,
      'foodScore': foodScore,
      'eveningScore': eveningScore,
      'comment': comment,
    };
  }
}

/// Input for updating an existing EveningRating
@freezed
class UpdateEveningRatingInput with _$UpdateEveningRatingInput {
  const UpdateEveningRatingInput._();

  const factory UpdateEveningRatingInput({
    String? sessionId,
    String? userId,
    int? hostScore,
    int? foodScore,
    int? eveningScore,
    String? comment,
  }) = _UpdateEveningRatingInput;

  factory UpdateEveningRatingInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateEveningRatingInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (sessionId != null) 'sessionId': sessionId,
      if (userId != null) 'userId': userId,
      if (hostScore != null) 'hostScore': hostScore,
      if (foodScore != null) 'foodScore': foodScore,
      if (eveningScore != null) 'eveningScore': eveningScore,
      if (comment != null) 'comment': comment,
    };
  }
}

@freezed
class EveningRatingWhereUniqueInput with _$EveningRatingWhereUniqueInput {
  const EveningRatingWhereUniqueInput._();

  const factory EveningRatingWhereUniqueInput({String? id}) =
      _EveningRatingWhereUniqueInput;

  factory EveningRatingWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'EveningRatingWhereUniqueInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class EveningRatingWhereInput with _$EveningRatingWhereInput {
  const EveningRatingWhereInput._();

  const factory EveningRatingWhereInput({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    IntFilter? hostScore,
    IntFilter? foodScore,
    IntFilter? eveningScore,
    StringFilter? comment,
    List<EveningRatingWhereInput>? AND,
    List<EveningRatingWhereInput>? OR,
    EveningRatingWhereInput? NOT,
  }) = _EveningRatingWhereInput;

  factory EveningRatingWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('EveningRatingWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (sessionId != null) 'sessionId': sessionId!.toJson(),
      if (session != null) 'session': session!.toJson(),
      if (userId != null) 'userId': userId!.toJson(),
      if (user != null) 'user': user!.toJson(),
      if (hostScore != null) 'hostScore': hostScore!.toJson(),
      if (foodScore != null) 'foodScore': foodScore!.toJson(),
      if (eveningScore != null) 'eveningScore': eveningScore!.toJson(),
      if (comment != null) 'comment': comment!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class EveningRatingListRelationFilter with _$EveningRatingListRelationFilter {
  const EveningRatingListRelationFilter._();

  const factory EveningRatingListRelationFilter({
    EveningRatingWhereInput? some,
    EveningRatingWhereInput? every,
    EveningRatingWhereInput? none,
  }) = _EveningRatingListRelationFilter;

  factory EveningRatingListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'EveningRatingListRelationFilter.fromJson not needed',
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
class EveningRatingRelationFilter with _$EveningRatingRelationFilter {
  const EveningRatingRelationFilter._();

  const factory EveningRatingRelationFilter({
    @JsonKey(name: 'is') EveningRatingWhereInput? is_,
    EveningRatingWhereInput? isNot,
  }) = _EveningRatingRelationFilter;

  factory EveningRatingRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('EveningRatingRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class EveningRatingOrderByInput with _$EveningRatingOrderByInput {
  const EveningRatingOrderByInput._();

  const factory EveningRatingOrderByInput({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
    SortOrder? hostScore,
    SortOrder? foodScore,
    SortOrder? eveningScore,
    SortOrder? comment,
  }) = _EveningRatingOrderByInput;

  factory EveningRatingOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('EveningRatingOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (sessionId != null) 'sessionId': sessionId!.name,
      if (userId != null) 'userId': userId!.name,
      if (hostScore != null) 'hostScore': hostScore!.name,
      if (foodScore != null) 'foodScore': foodScore!.name,
      if (eveningScore != null) 'eveningScore': eveningScore!.name,
      if (comment != null) 'comment': comment!.name,
    };
  }
}
