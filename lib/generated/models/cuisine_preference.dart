import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_session.dart';
import 'user.dart';
import 'cuisine_type.dart';
part 'cuisine_preference.freezed.dart';

@freezed
class CuisinePreference with _$CuisinePreference {
  const CuisinePreference._();

  const factory CuisinePreference({
    required String id,
    required String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    required String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    required List<CuisineType> preferred,
  }) = _CuisinePreference;

  factory CuisinePreference.fromJson(Map<String, dynamic> json) {
    return CuisinePreference(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      userId: json['userId'] as String,
      preferred: (json['preferred'] as List)
          .map((e) => _$CuisineTypeFromJson(e as String))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'sessionId': sessionId,
      'userId': userId,
      'preferred': preferred.map((e) => _$CuisineTypeToJson(e)).toList(),
    };
  }
}

/// Input for creating a new CuisinePreference
@freezed
class CreateCuisinePreferenceInput with _$CreateCuisinePreferenceInput {
  const CreateCuisinePreferenceInput._();

  const factory CreateCuisinePreferenceInput({
    required String sessionId,
    required String userId,
    required List<CuisineType> preferred,
  }) = _CreateCuisinePreferenceInput;

  factory CreateCuisinePreferenceInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'CreateCuisinePreferenceInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sessionId': sessionId,
      'userId': userId,
      'preferred': preferred.map((e) => _$CuisineTypeToJson(e)).toList(),
    };
  }
}

/// Input for updating an existing CuisinePreference
@freezed
class UpdateCuisinePreferenceInput with _$UpdateCuisinePreferenceInput {
  const UpdateCuisinePreferenceInput._();

  const factory UpdateCuisinePreferenceInput({
    String? sessionId,
    String? userId,
    List<CuisineType>? preferred,
  }) = _UpdateCuisinePreferenceInput;

  factory UpdateCuisinePreferenceInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'UpdateCuisinePreferenceInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (sessionId != null) 'sessionId': sessionId,
      if (userId != null) 'userId': userId,
      if (preferred != null)
        'preferred': preferred?.map((e) => _$CuisineTypeToJson(e)).toList(),
    };
  }
}

@freezed
class CuisinePreferenceWhereUniqueInput
    with _$CuisinePreferenceWhereUniqueInput {
  const CuisinePreferenceWhereUniqueInput._();

  const factory CuisinePreferenceWhereUniqueInput({String? id}) =
      _CuisinePreferenceWhereUniqueInput;

  factory CuisinePreferenceWhereUniqueInput.fromJson(
    Map<String, dynamic> json,
  ) {
    throw UnimplementedError(
      'CuisinePreferenceWhereUniqueInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class CuisinePreferenceWhereInput with _$CuisinePreferenceWhereInput {
  const CuisinePreferenceWhereInput._();

  const factory CuisinePreferenceWhereInput({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    List<CuisinePreferenceWhereInput>? AND,
    List<CuisinePreferenceWhereInput>? OR,
    CuisinePreferenceWhereInput? NOT,
  }) = _CuisinePreferenceWhereInput;

  factory CuisinePreferenceWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CuisinePreferenceWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (sessionId != null) 'sessionId': sessionId!.toJson(),
      if (session != null) 'session': session!.toJson(),
      if (userId != null) 'userId': userId!.toJson(),
      if (user != null) 'user': user!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class CuisinePreferenceListRelationFilter
    with _$CuisinePreferenceListRelationFilter {
  const CuisinePreferenceListRelationFilter._();

  const factory CuisinePreferenceListRelationFilter({
    CuisinePreferenceWhereInput? some,
    CuisinePreferenceWhereInput? every,
    CuisinePreferenceWhereInput? none,
  }) = _CuisinePreferenceListRelationFilter;

  factory CuisinePreferenceListRelationFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    throw UnimplementedError(
      'CuisinePreferenceListRelationFilter.fromJson not needed',
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
class CuisinePreferenceRelationFilter with _$CuisinePreferenceRelationFilter {
  const CuisinePreferenceRelationFilter._();

  const factory CuisinePreferenceRelationFilter({
    @JsonKey(name: 'is') CuisinePreferenceWhereInput? is_,
    CuisinePreferenceWhereInput? isNot,
  }) = _CuisinePreferenceRelationFilter;

  factory CuisinePreferenceRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'CuisinePreferenceRelationFilter.fromJson not needed',
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
class CuisinePreferenceOrderByInput with _$CuisinePreferenceOrderByInput {
  const CuisinePreferenceOrderByInput._();

  const factory CuisinePreferenceOrderByInput({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
  }) = _CuisinePreferenceOrderByInput;

  factory CuisinePreferenceOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'CuisinePreferenceOrderByInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (sessionId != null) 'sessionId': sessionId!.name,
      if (userId != null) 'userId': userId!.name,
    };
  }
}

CuisineType _$CuisineTypeFromJson(String value) {
  return switch (value) {
    'italian' => CuisineType.italian,
    'asian' => CuisineType.asian,
    'burger' => CuisineType.burger,
    'mexican' => CuisineType.mexican,
    'indian' => CuisineType.indian,
    'vegan' => CuisineType.vegan,
    'sushi' => CuisineType.sushi,
    _ => throw ArgumentError('Unknown CuisineType: $value'),
  };
}

String? _$CuisineTypeToJson(CuisineType? value) {
  if (value == null) return null;
  return switch (value) {
    CuisineType.italian => 'italian',
    CuisineType.asian => 'asian',
    CuisineType.burger => 'burger',
    CuisineType.mexican => 'mexican',
    CuisineType.indian => 'indian',
    CuisineType.vegan => 'vegan',
    CuisineType.sushi => 'sushi',
  };
}
