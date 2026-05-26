// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evening_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EveningRating {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  int get hostScore => throw _privateConstructorUsedError;
  int get foodScore => throw _privateConstructorUsedError;
  int get eveningScore => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EveningRatingCopyWith<EveningRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveningRatingCopyWith<$Res> {
  factory $EveningRatingCopyWith(
    EveningRating value,
    $Res Function(EveningRating) then,
  ) = _$EveningRatingCopyWithImpl<$Res, EveningRating>;
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    int hostScore,
    int foodScore,
    int eveningScore,
    String comment,
  });

  $GameSessionCopyWith<$Res>? get session;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$EveningRatingCopyWithImpl<$Res, $Val extends EveningRating>
    implements $EveningRatingCopyWith<$Res> {
  _$EveningRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? hostScore = null,
    Object? foodScore = null,
    Object? eveningScore = null,
    Object? comment = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            session: freezed == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as GameSession?,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
            hostScore: null == hostScore
                ? _value.hostScore
                : hostScore // ignore: cast_nullable_to_non_nullable
                      as int,
            foodScore: null == foodScore
                ? _value.foodScore
                : foodScore // ignore: cast_nullable_to_non_nullable
                      as int,
            eveningScore: null == eveningScore
                ? _value.eveningScore
                : eveningScore // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $GameSessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EveningRatingImplCopyWith<$Res>
    implements $EveningRatingCopyWith<$Res> {
  factory _$$EveningRatingImplCopyWith(
    _$EveningRatingImpl value,
    $Res Function(_$EveningRatingImpl) then,
  ) = __$$EveningRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    int hostScore,
    int foodScore,
    int eveningScore,
    String comment,
  });

  @override
  $GameSessionCopyWith<$Res>? get session;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$EveningRatingImplCopyWithImpl<$Res>
    extends _$EveningRatingCopyWithImpl<$Res, _$EveningRatingImpl>
    implements _$$EveningRatingImplCopyWith<$Res> {
  __$$EveningRatingImplCopyWithImpl(
    _$EveningRatingImpl _value,
    $Res Function(_$EveningRatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? hostScore = null,
    Object? foodScore = null,
    Object? eveningScore = null,
    Object? comment = null,
  }) {
    return _then(
      _$EveningRatingImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        session: freezed == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as GameSession?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        hostScore: null == hostScore
            ? _value.hostScore
            : hostScore // ignore: cast_nullable_to_non_nullable
                  as int,
        foodScore: null == foodScore
            ? _value.foodScore
            : foodScore // ignore: cast_nullable_to_non_nullable
                  as int,
        eveningScore: null == eveningScore
            ? _value.eveningScore
            : eveningScore // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EveningRatingImpl extends _EveningRating {
  const _$EveningRatingImpl({
    required this.id,
    required this.sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.session,
    required this.userId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.user,
    required this.hostScore,
    required this.foodScore,
    required this.eveningScore,
    required this.comment,
  }) : super._();

  @override
  final String id;
  @override
  final String sessionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final GameSession? session;
  @override
  final String userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final int hostScore;
  @override
  final int foodScore;
  @override
  final int eveningScore;
  @override
  final String comment;

  @override
  String toString() {
    return 'EveningRating(id: $id, sessionId: $sessionId, session: $session, userId: $userId, user: $user, hostScore: $hostScore, foodScore: $foodScore, eveningScore: $eveningScore, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveningRatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.hostScore, hostScore) ||
                other.hostScore == hostScore) &&
            (identical(other.foodScore, foodScore) ||
                other.foodScore == foodScore) &&
            (identical(other.eveningScore, eveningScore) ||
                other.eveningScore == eveningScore) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    session,
    userId,
    user,
    hostScore,
    foodScore,
    eveningScore,
    comment,
  );

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EveningRatingImplCopyWith<_$EveningRatingImpl> get copyWith =>
      __$$EveningRatingImplCopyWithImpl<_$EveningRatingImpl>(this, _$identity);
}

abstract class _EveningRating extends EveningRating {
  const factory _EveningRating({
    required final String id,
    required final String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final GameSession? session,
    required final String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
    required final int hostScore,
    required final int foodScore,
    required final int eveningScore,
    required final String comment,
  }) = _$EveningRatingImpl;
  const _EveningRating._() : super._();

  @override
  String get id;
  @override
  String get sessionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session;
  @override
  String get userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  int get hostScore;
  @override
  int get foodScore;
  @override
  int get eveningScore;
  @override
  String get comment;

  /// Create a copy of EveningRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EveningRatingImplCopyWith<_$EveningRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateEveningRatingInput {
  String get sessionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get hostScore => throw _privateConstructorUsedError;
  int get foodScore => throw _privateConstructorUsedError;
  int get eveningScore => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  /// Create a copy of CreateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateEveningRatingInputCopyWith<CreateEveningRatingInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEveningRatingInputCopyWith<$Res> {
  factory $CreateEveningRatingInputCopyWith(
    CreateEveningRatingInput value,
    $Res Function(CreateEveningRatingInput) then,
  ) = _$CreateEveningRatingInputCopyWithImpl<$Res, CreateEveningRatingInput>;
  @useResult
  $Res call({
    String sessionId,
    String userId,
    int hostScore,
    int foodScore,
    int eveningScore,
    String comment,
  });
}

/// @nodoc
class _$CreateEveningRatingInputCopyWithImpl<
  $Res,
  $Val extends CreateEveningRatingInput
>
    implements $CreateEveningRatingInputCopyWith<$Res> {
  _$CreateEveningRatingInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? userId = null,
    Object? hostScore = null,
    Object? foodScore = null,
    Object? eveningScore = null,
    Object? comment = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            hostScore: null == hostScore
                ? _value.hostScore
                : hostScore // ignore: cast_nullable_to_non_nullable
                      as int,
            foodScore: null == foodScore
                ? _value.foodScore
                : foodScore // ignore: cast_nullable_to_non_nullable
                      as int,
            eveningScore: null == eveningScore
                ? _value.eveningScore
                : eveningScore // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateEveningRatingInputImplCopyWith<$Res>
    implements $CreateEveningRatingInputCopyWith<$Res> {
  factory _$$CreateEveningRatingInputImplCopyWith(
    _$CreateEveningRatingInputImpl value,
    $Res Function(_$CreateEveningRatingInputImpl) then,
  ) = __$$CreateEveningRatingInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sessionId,
    String userId,
    int hostScore,
    int foodScore,
    int eveningScore,
    String comment,
  });
}

/// @nodoc
class __$$CreateEveningRatingInputImplCopyWithImpl<$Res>
    extends
        _$CreateEveningRatingInputCopyWithImpl<
          $Res,
          _$CreateEveningRatingInputImpl
        >
    implements _$$CreateEveningRatingInputImplCopyWith<$Res> {
  __$$CreateEveningRatingInputImplCopyWithImpl(
    _$CreateEveningRatingInputImpl _value,
    $Res Function(_$CreateEveningRatingInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? userId = null,
    Object? hostScore = null,
    Object? foodScore = null,
    Object? eveningScore = null,
    Object? comment = null,
  }) {
    return _then(
      _$CreateEveningRatingInputImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        hostScore: null == hostScore
            ? _value.hostScore
            : hostScore // ignore: cast_nullable_to_non_nullable
                  as int,
        foodScore: null == foodScore
            ? _value.foodScore
            : foodScore // ignore: cast_nullable_to_non_nullable
                  as int,
        eveningScore: null == eveningScore
            ? _value.eveningScore
            : eveningScore // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateEveningRatingInputImpl extends _CreateEveningRatingInput {
  const _$CreateEveningRatingInputImpl({
    required this.sessionId,
    required this.userId,
    required this.hostScore,
    required this.foodScore,
    required this.eveningScore,
    required this.comment,
  }) : super._();

  @override
  final String sessionId;
  @override
  final String userId;
  @override
  final int hostScore;
  @override
  final int foodScore;
  @override
  final int eveningScore;
  @override
  final String comment;

  @override
  String toString() {
    return 'CreateEveningRatingInput(sessionId: $sessionId, userId: $userId, hostScore: $hostScore, foodScore: $foodScore, eveningScore: $eveningScore, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEveningRatingInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hostScore, hostScore) ||
                other.hostScore == hostScore) &&
            (identical(other.foodScore, foodScore) ||
                other.foodScore == foodScore) &&
            (identical(other.eveningScore, eveningScore) ||
                other.eveningScore == eveningScore) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    userId,
    hostScore,
    foodScore,
    eveningScore,
    comment,
  );

  /// Create a copy of CreateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEveningRatingInputImplCopyWith<_$CreateEveningRatingInputImpl>
  get copyWith =>
      __$$CreateEveningRatingInputImplCopyWithImpl<
        _$CreateEveningRatingInputImpl
      >(this, _$identity);
}

abstract class _CreateEveningRatingInput extends CreateEveningRatingInput {
  const factory _CreateEveningRatingInput({
    required final String sessionId,
    required final String userId,
    required final int hostScore,
    required final int foodScore,
    required final int eveningScore,
    required final String comment,
  }) = _$CreateEveningRatingInputImpl;
  const _CreateEveningRatingInput._() : super._();

  @override
  String get sessionId;
  @override
  String get userId;
  @override
  int get hostScore;
  @override
  int get foodScore;
  @override
  int get eveningScore;
  @override
  String get comment;

  /// Create a copy of CreateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateEveningRatingInputImplCopyWith<_$CreateEveningRatingInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateEveningRatingInput {
  String? get sessionId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get hostScore => throw _privateConstructorUsedError;
  int? get foodScore => throw _privateConstructorUsedError;
  int? get eveningScore => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Create a copy of UpdateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateEveningRatingInputCopyWith<UpdateEveningRatingInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEveningRatingInputCopyWith<$Res> {
  factory $UpdateEveningRatingInputCopyWith(
    UpdateEveningRatingInput value,
    $Res Function(UpdateEveningRatingInput) then,
  ) = _$UpdateEveningRatingInputCopyWithImpl<$Res, UpdateEveningRatingInput>;
  @useResult
  $Res call({
    String? sessionId,
    String? userId,
    int? hostScore,
    int? foodScore,
    int? eveningScore,
    String? comment,
  });
}

/// @nodoc
class _$UpdateEveningRatingInputCopyWithImpl<
  $Res,
  $Val extends UpdateEveningRatingInput
>
    implements $UpdateEveningRatingInputCopyWith<$Res> {
  _$UpdateEveningRatingInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? hostScore = freezed,
    Object? foodScore = freezed,
    Object? eveningScore = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _value.copyWith(
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            hostScore: freezed == hostScore
                ? _value.hostScore
                : hostScore // ignore: cast_nullable_to_non_nullable
                      as int?,
            foodScore: freezed == foodScore
                ? _value.foodScore
                : foodScore // ignore: cast_nullable_to_non_nullable
                      as int?,
            eveningScore: freezed == eveningScore
                ? _value.eveningScore
                : eveningScore // ignore: cast_nullable_to_non_nullable
                      as int?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateEveningRatingInputImplCopyWith<$Res>
    implements $UpdateEveningRatingInputCopyWith<$Res> {
  factory _$$UpdateEveningRatingInputImplCopyWith(
    _$UpdateEveningRatingInputImpl value,
    $Res Function(_$UpdateEveningRatingInputImpl) then,
  ) = __$$UpdateEveningRatingInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? sessionId,
    String? userId,
    int? hostScore,
    int? foodScore,
    int? eveningScore,
    String? comment,
  });
}

/// @nodoc
class __$$UpdateEveningRatingInputImplCopyWithImpl<$Res>
    extends
        _$UpdateEveningRatingInputCopyWithImpl<
          $Res,
          _$UpdateEveningRatingInputImpl
        >
    implements _$$UpdateEveningRatingInputImplCopyWith<$Res> {
  __$$UpdateEveningRatingInputImplCopyWithImpl(
    _$UpdateEveningRatingInputImpl _value,
    $Res Function(_$UpdateEveningRatingInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? hostScore = freezed,
    Object? foodScore = freezed,
    Object? eveningScore = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _$UpdateEveningRatingInputImpl(
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostScore: freezed == hostScore
            ? _value.hostScore
            : hostScore // ignore: cast_nullable_to_non_nullable
                  as int?,
        foodScore: freezed == foodScore
            ? _value.foodScore
            : foodScore // ignore: cast_nullable_to_non_nullable
                  as int?,
        eveningScore: freezed == eveningScore
            ? _value.eveningScore
            : eveningScore // ignore: cast_nullable_to_non_nullable
                  as int?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateEveningRatingInputImpl extends _UpdateEveningRatingInput {
  const _$UpdateEveningRatingInputImpl({
    this.sessionId,
    this.userId,
    this.hostScore,
    this.foodScore,
    this.eveningScore,
    this.comment,
  }) : super._();

  @override
  final String? sessionId;
  @override
  final String? userId;
  @override
  final int? hostScore;
  @override
  final int? foodScore;
  @override
  final int? eveningScore;
  @override
  final String? comment;

  @override
  String toString() {
    return 'UpdateEveningRatingInput(sessionId: $sessionId, userId: $userId, hostScore: $hostScore, foodScore: $foodScore, eveningScore: $eveningScore, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEveningRatingInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hostScore, hostScore) ||
                other.hostScore == hostScore) &&
            (identical(other.foodScore, foodScore) ||
                other.foodScore == foodScore) &&
            (identical(other.eveningScore, eveningScore) ||
                other.eveningScore == eveningScore) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    userId,
    hostScore,
    foodScore,
    eveningScore,
    comment,
  );

  /// Create a copy of UpdateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEveningRatingInputImplCopyWith<_$UpdateEveningRatingInputImpl>
  get copyWith =>
      __$$UpdateEveningRatingInputImplCopyWithImpl<
        _$UpdateEveningRatingInputImpl
      >(this, _$identity);
}

abstract class _UpdateEveningRatingInput extends UpdateEveningRatingInput {
  const factory _UpdateEveningRatingInput({
    final String? sessionId,
    final String? userId,
    final int? hostScore,
    final int? foodScore,
    final int? eveningScore,
    final String? comment,
  }) = _$UpdateEveningRatingInputImpl;
  const _UpdateEveningRatingInput._() : super._();

  @override
  String? get sessionId;
  @override
  String? get userId;
  @override
  int? get hostScore;
  @override
  int? get foodScore;
  @override
  int? get eveningScore;
  @override
  String? get comment;

  /// Create a copy of UpdateEveningRatingInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEveningRatingInputImplCopyWith<_$UpdateEveningRatingInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EveningRatingWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of EveningRatingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EveningRatingWhereUniqueInputCopyWith<EveningRatingWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveningRatingWhereUniqueInputCopyWith<$Res> {
  factory $EveningRatingWhereUniqueInputCopyWith(
    EveningRatingWhereUniqueInput value,
    $Res Function(EveningRatingWhereUniqueInput) then,
  ) =
      _$EveningRatingWhereUniqueInputCopyWithImpl<
        $Res,
        EveningRatingWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$EveningRatingWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends EveningRatingWhereUniqueInput
>
    implements $EveningRatingWhereUniqueInputCopyWith<$Res> {
  _$EveningRatingWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EveningRatingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EveningRatingWhereUniqueInputImplCopyWith<$Res>
    implements $EveningRatingWhereUniqueInputCopyWith<$Res> {
  factory _$$EveningRatingWhereUniqueInputImplCopyWith(
    _$EveningRatingWhereUniqueInputImpl value,
    $Res Function(_$EveningRatingWhereUniqueInputImpl) then,
  ) = __$$EveningRatingWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$EveningRatingWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$EveningRatingWhereUniqueInputCopyWithImpl<
          $Res,
          _$EveningRatingWhereUniqueInputImpl
        >
    implements _$$EveningRatingWhereUniqueInputImplCopyWith<$Res> {
  __$$EveningRatingWhereUniqueInputImplCopyWithImpl(
    _$EveningRatingWhereUniqueInputImpl _value,
    $Res Function(_$EveningRatingWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EveningRatingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$EveningRatingWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$EveningRatingWhereUniqueInputImpl
    extends _EveningRatingWhereUniqueInput {
  const _$EveningRatingWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'EveningRatingWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveningRatingWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of EveningRatingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EveningRatingWhereUniqueInputImplCopyWith<
    _$EveningRatingWhereUniqueInputImpl
  >
  get copyWith =>
      __$$EveningRatingWhereUniqueInputImplCopyWithImpl<
        _$EveningRatingWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _EveningRatingWhereUniqueInput
    extends EveningRatingWhereUniqueInput {
  const factory _EveningRatingWhereUniqueInput({final String? id}) =
      _$EveningRatingWhereUniqueInputImpl;
  const _EveningRatingWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of EveningRatingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EveningRatingWhereUniqueInputImplCopyWith<
    _$EveningRatingWhereUniqueInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EveningRatingWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get sessionId => throw _privateConstructorUsedError;
  GameSessionRelationFilter? get session => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  IntFilter? get hostScore => throw _privateConstructorUsedError;
  IntFilter? get foodScore => throw _privateConstructorUsedError;
  IntFilter? get eveningScore => throw _privateConstructorUsedError;
  StringFilter? get comment => throw _privateConstructorUsedError;
  List<EveningRatingWhereInput>? get AND => throw _privateConstructorUsedError;
  List<EveningRatingWhereInput>? get OR => throw _privateConstructorUsedError;
  EveningRatingWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EveningRatingWhereInputCopyWith<EveningRatingWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveningRatingWhereInputCopyWith<$Res> {
  factory $EveningRatingWhereInputCopyWith(
    EveningRatingWhereInput value,
    $Res Function(EveningRatingWhereInput) then,
  ) = _$EveningRatingWhereInputCopyWithImpl<$Res, EveningRatingWhereInput>;
  @useResult
  $Res call({
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
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get sessionId;
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  $StringFilterCopyWith<$Res>? get userId;
  $UserRelationFilterCopyWith<$Res>? get user;
  $IntFilterCopyWith<$Res>? get hostScore;
  $IntFilterCopyWith<$Res>? get foodScore;
  $IntFilterCopyWith<$Res>? get eveningScore;
  $StringFilterCopyWith<$Res>? get comment;
  $EveningRatingWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$EveningRatingWhereInputCopyWithImpl<
  $Res,
  $Val extends EveningRatingWhereInput
>
    implements $EveningRatingWhereInputCopyWith<$Res> {
  _$EveningRatingWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? hostScore = freezed,
    Object? foodScore = freezed,
    Object? eveningScore = freezed,
    Object? comment = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            session: freezed == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as GameSessionRelationFilter?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            hostScore: freezed == hostScore
                ? _value.hostScore
                : hostScore // ignore: cast_nullable_to_non_nullable
                      as IntFilter?,
            foodScore: freezed == foodScore
                ? _value.foodScore
                : foodScore // ignore: cast_nullable_to_non_nullable
                      as IntFilter?,
            eveningScore: freezed == eveningScore
                ? _value.eveningScore
                : eveningScore // ignore: cast_nullable_to_non_nullable
                      as IntFilter?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<EveningRatingWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<EveningRatingWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as EveningRatingWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get sessionId {
    if (_value.sessionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.sessionId!, (value) {
      return _then(_value.copyWith(sessionId: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionRelationFilterCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $GameSessionRelationFilterCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get hostScore {
    if (_value.hostScore == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.hostScore!, (value) {
      return _then(_value.copyWith(hostScore: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get foodScore {
    if (_value.foodScore == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.foodScore!, (value) {
      return _then(_value.copyWith(foodScore: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get eveningScore {
    if (_value.eveningScore == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.eveningScore!, (value) {
      return _then(_value.copyWith(eveningScore: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $EveningRatingWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EveningRatingWhereInputImplCopyWith<$Res>
    implements $EveningRatingWhereInputCopyWith<$Res> {
  factory _$$EveningRatingWhereInputImplCopyWith(
    _$EveningRatingWhereInputImpl value,
    $Res Function(_$EveningRatingWhereInputImpl) then,
  ) = __$$EveningRatingWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get sessionId;
  @override
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $IntFilterCopyWith<$Res>? get hostScore;
  @override
  $IntFilterCopyWith<$Res>? get foodScore;
  @override
  $IntFilterCopyWith<$Res>? get eveningScore;
  @override
  $StringFilterCopyWith<$Res>? get comment;
  @override
  $EveningRatingWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$EveningRatingWhereInputImplCopyWithImpl<$Res>
    extends
        _$EveningRatingWhereInputCopyWithImpl<
          $Res,
          _$EveningRatingWhereInputImpl
        >
    implements _$$EveningRatingWhereInputImplCopyWith<$Res> {
  __$$EveningRatingWhereInputImplCopyWithImpl(
    _$EveningRatingWhereInputImpl _value,
    $Res Function(_$EveningRatingWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? hostScore = freezed,
    Object? foodScore = freezed,
    Object? eveningScore = freezed,
    Object? comment = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$EveningRatingWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        session: freezed == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as GameSessionRelationFilter?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        hostScore: freezed == hostScore
            ? _value.hostScore
            : hostScore // ignore: cast_nullable_to_non_nullable
                  as IntFilter?,
        foodScore: freezed == foodScore
            ? _value.foodScore
            : foodScore // ignore: cast_nullable_to_non_nullable
                  as IntFilter?,
        eveningScore: freezed == eveningScore
            ? _value.eveningScore
            : eveningScore // ignore: cast_nullable_to_non_nullable
                  as IntFilter?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<EveningRatingWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<EveningRatingWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as EveningRatingWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$EveningRatingWhereInputImpl extends _EveningRatingWhereInput {
  const _$EveningRatingWhereInputImpl({
    this.id,
    this.sessionId,
    this.session,
    this.userId,
    this.user,
    this.hostScore,
    this.foodScore,
    this.eveningScore,
    this.comment,
    final List<EveningRatingWhereInput>? AND,
    final List<EveningRatingWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? sessionId;
  @override
  final GameSessionRelationFilter? session;
  @override
  final StringFilter? userId;
  @override
  final UserRelationFilter? user;
  @override
  final IntFilter? hostScore;
  @override
  final IntFilter? foodScore;
  @override
  final IntFilter? eveningScore;
  @override
  final StringFilter? comment;
  final List<EveningRatingWhereInput>? _AND;
  @override
  List<EveningRatingWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EveningRatingWhereInput>? _OR;
  @override
  List<EveningRatingWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EveningRatingWhereInput? NOT;

  @override
  String toString() {
    return 'EveningRatingWhereInput(id: $id, sessionId: $sessionId, session: $session, userId: $userId, user: $user, hostScore: $hostScore, foodScore: $foodScore, eveningScore: $eveningScore, comment: $comment, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveningRatingWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.hostScore, hostScore) ||
                other.hostScore == hostScore) &&
            (identical(other.foodScore, foodScore) ||
                other.foodScore == foodScore) &&
            (identical(other.eveningScore, eveningScore) ||
                other.eveningScore == eveningScore) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    session,
    userId,
    user,
    hostScore,
    foodScore,
    eveningScore,
    comment,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EveningRatingWhereInputImplCopyWith<_$EveningRatingWhereInputImpl>
  get copyWith =>
      __$$EveningRatingWhereInputImplCopyWithImpl<
        _$EveningRatingWhereInputImpl
      >(this, _$identity);
}

abstract class _EveningRatingWhereInput extends EveningRatingWhereInput {
  const factory _EveningRatingWhereInput({
    final StringFilter? id,
    final StringFilter? sessionId,
    final GameSessionRelationFilter? session,
    final StringFilter? userId,
    final UserRelationFilter? user,
    final IntFilter? hostScore,
    final IntFilter? foodScore,
    final IntFilter? eveningScore,
    final StringFilter? comment,
    final List<EveningRatingWhereInput>? AND,
    final List<EveningRatingWhereInput>? OR,
    final EveningRatingWhereInput? NOT,
  }) = _$EveningRatingWhereInputImpl;
  const _EveningRatingWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get sessionId;
  @override
  GameSessionRelationFilter? get session;
  @override
  StringFilter? get userId;
  @override
  UserRelationFilter? get user;
  @override
  IntFilter? get hostScore;
  @override
  IntFilter? get foodScore;
  @override
  IntFilter? get eveningScore;
  @override
  StringFilter? get comment;
  @override
  List<EveningRatingWhereInput>? get AND;
  @override
  List<EveningRatingWhereInput>? get OR;
  @override
  EveningRatingWhereInput? get NOT;

  /// Create a copy of EveningRatingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EveningRatingWhereInputImplCopyWith<_$EveningRatingWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EveningRatingListRelationFilter {
  EveningRatingWhereInput? get some => throw _privateConstructorUsedError;
  EveningRatingWhereInput? get every => throw _privateConstructorUsedError;
  EveningRatingWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EveningRatingListRelationFilterCopyWith<EveningRatingListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveningRatingListRelationFilterCopyWith<$Res> {
  factory $EveningRatingListRelationFilterCopyWith(
    EveningRatingListRelationFilter value,
    $Res Function(EveningRatingListRelationFilter) then,
  ) =
      _$EveningRatingListRelationFilterCopyWithImpl<
        $Res,
        EveningRatingListRelationFilter
      >;
  @useResult
  $Res call({
    EveningRatingWhereInput? some,
    EveningRatingWhereInput? every,
    EveningRatingWhereInput? none,
  });

  $EveningRatingWhereInputCopyWith<$Res>? get some;
  $EveningRatingWhereInputCopyWith<$Res>? get every;
  $EveningRatingWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$EveningRatingListRelationFilterCopyWithImpl<
  $Res,
  $Val extends EveningRatingListRelationFilter
>
    implements $EveningRatingListRelationFilterCopyWith<$Res> {
  _$EveningRatingListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _value.copyWith(
            some: freezed == some
                ? _value.some
                : some // ignore: cast_nullable_to_non_nullable
                      as EveningRatingWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as EveningRatingWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as EveningRatingWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $EveningRatingWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $EveningRatingWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $EveningRatingWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EveningRatingListRelationFilterImplCopyWith<$Res>
    implements $EveningRatingListRelationFilterCopyWith<$Res> {
  factory _$$EveningRatingListRelationFilterImplCopyWith(
    _$EveningRatingListRelationFilterImpl value,
    $Res Function(_$EveningRatingListRelationFilterImpl) then,
  ) = __$$EveningRatingListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    EveningRatingWhereInput? some,
    EveningRatingWhereInput? every,
    EveningRatingWhereInput? none,
  });

  @override
  $EveningRatingWhereInputCopyWith<$Res>? get some;
  @override
  $EveningRatingWhereInputCopyWith<$Res>? get every;
  @override
  $EveningRatingWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$EveningRatingListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$EveningRatingListRelationFilterCopyWithImpl<
          $Res,
          _$EveningRatingListRelationFilterImpl
        >
    implements _$$EveningRatingListRelationFilterImplCopyWith<$Res> {
  __$$EveningRatingListRelationFilterImplCopyWithImpl(
    _$EveningRatingListRelationFilterImpl _value,
    $Res Function(_$EveningRatingListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$EveningRatingListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as EveningRatingWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as EveningRatingWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as EveningRatingWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$EveningRatingListRelationFilterImpl
    extends _EveningRatingListRelationFilter {
  const _$EveningRatingListRelationFilterImpl({
    this.some,
    this.every,
    this.none,
  }) : super._();

  @override
  final EveningRatingWhereInput? some;
  @override
  final EveningRatingWhereInput? every;
  @override
  final EveningRatingWhereInput? none;

  @override
  String toString() {
    return 'EveningRatingListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveningRatingListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EveningRatingListRelationFilterImplCopyWith<
    _$EveningRatingListRelationFilterImpl
  >
  get copyWith =>
      __$$EveningRatingListRelationFilterImplCopyWithImpl<
        _$EveningRatingListRelationFilterImpl
      >(this, _$identity);
}

abstract class _EveningRatingListRelationFilter
    extends EveningRatingListRelationFilter {
  const factory _EveningRatingListRelationFilter({
    final EveningRatingWhereInput? some,
    final EveningRatingWhereInput? every,
    final EveningRatingWhereInput? none,
  }) = _$EveningRatingListRelationFilterImpl;
  const _EveningRatingListRelationFilter._() : super._();

  @override
  EveningRatingWhereInput? get some;
  @override
  EveningRatingWhereInput? get every;
  @override
  EveningRatingWhereInput? get none;

  /// Create a copy of EveningRatingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EveningRatingListRelationFilterImplCopyWith<
    _$EveningRatingListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EveningRatingRelationFilter {
  @JsonKey(name: 'is')
  EveningRatingWhereInput? get is_ => throw _privateConstructorUsedError;
  EveningRatingWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EveningRatingRelationFilterCopyWith<EveningRatingRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveningRatingRelationFilterCopyWith<$Res> {
  factory $EveningRatingRelationFilterCopyWith(
    EveningRatingRelationFilter value,
    $Res Function(EveningRatingRelationFilter) then,
  ) =
      _$EveningRatingRelationFilterCopyWithImpl<
        $Res,
        EveningRatingRelationFilter
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'is') EveningRatingWhereInput? is_,
    EveningRatingWhereInput? isNot,
  });

  $EveningRatingWhereInputCopyWith<$Res>? get is_;
  $EveningRatingWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$EveningRatingRelationFilterCopyWithImpl<
  $Res,
  $Val extends EveningRatingRelationFilter
>
    implements $EveningRatingRelationFilterCopyWith<$Res> {
  _$EveningRatingRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as EveningRatingWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as EveningRatingWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $EveningRatingWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $EveningRatingWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EveningRatingRelationFilterImplCopyWith<$Res>
    implements $EveningRatingRelationFilterCopyWith<$Res> {
  factory _$$EveningRatingRelationFilterImplCopyWith(
    _$EveningRatingRelationFilterImpl value,
    $Res Function(_$EveningRatingRelationFilterImpl) then,
  ) = __$$EveningRatingRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') EveningRatingWhereInput? is_,
    EveningRatingWhereInput? isNot,
  });

  @override
  $EveningRatingWhereInputCopyWith<$Res>? get is_;
  @override
  $EveningRatingWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$EveningRatingRelationFilterImplCopyWithImpl<$Res>
    extends
        _$EveningRatingRelationFilterCopyWithImpl<
          $Res,
          _$EveningRatingRelationFilterImpl
        >
    implements _$$EveningRatingRelationFilterImplCopyWith<$Res> {
  __$$EveningRatingRelationFilterImplCopyWithImpl(
    _$EveningRatingRelationFilterImpl _value,
    $Res Function(_$EveningRatingRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$EveningRatingRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as EveningRatingWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as EveningRatingWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$EveningRatingRelationFilterImpl extends _EveningRatingRelationFilter {
  const _$EveningRatingRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final EveningRatingWhereInput? is_;
  @override
  final EveningRatingWhereInput? isNot;

  @override
  String toString() {
    return 'EveningRatingRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveningRatingRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EveningRatingRelationFilterImplCopyWith<_$EveningRatingRelationFilterImpl>
  get copyWith =>
      __$$EveningRatingRelationFilterImplCopyWithImpl<
        _$EveningRatingRelationFilterImpl
      >(this, _$identity);
}

abstract class _EveningRatingRelationFilter
    extends EveningRatingRelationFilter {
  const factory _EveningRatingRelationFilter({
    @JsonKey(name: 'is') final EveningRatingWhereInput? is_,
    final EveningRatingWhereInput? isNot,
  }) = _$EveningRatingRelationFilterImpl;
  const _EveningRatingRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  EveningRatingWhereInput? get is_;
  @override
  EveningRatingWhereInput? get isNot;

  /// Create a copy of EveningRatingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EveningRatingRelationFilterImplCopyWith<_$EveningRatingRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EveningRatingOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get sessionId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get hostScore => throw _privateConstructorUsedError;
  SortOrder? get foodScore => throw _privateConstructorUsedError;
  SortOrder? get eveningScore => throw _privateConstructorUsedError;
  SortOrder? get comment => throw _privateConstructorUsedError;

  /// Create a copy of EveningRatingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EveningRatingOrderByInputCopyWith<EveningRatingOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveningRatingOrderByInputCopyWith<$Res> {
  factory $EveningRatingOrderByInputCopyWith(
    EveningRatingOrderByInput value,
    $Res Function(EveningRatingOrderByInput) then,
  ) = _$EveningRatingOrderByInputCopyWithImpl<$Res, EveningRatingOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
    SortOrder? hostScore,
    SortOrder? foodScore,
    SortOrder? eveningScore,
    SortOrder? comment,
  });
}

/// @nodoc
class _$EveningRatingOrderByInputCopyWithImpl<
  $Res,
  $Val extends EveningRatingOrderByInput
>
    implements $EveningRatingOrderByInputCopyWith<$Res> {
  _$EveningRatingOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EveningRatingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? hostScore = freezed,
    Object? foodScore = freezed,
    Object? eveningScore = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            hostScore: freezed == hostScore
                ? _value.hostScore
                : hostScore // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            foodScore: freezed == foodScore
                ? _value.foodScore
                : foodScore // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            eveningScore: freezed == eveningScore
                ? _value.eveningScore
                : eveningScore // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EveningRatingOrderByInputImplCopyWith<$Res>
    implements $EveningRatingOrderByInputCopyWith<$Res> {
  factory _$$EveningRatingOrderByInputImplCopyWith(
    _$EveningRatingOrderByInputImpl value,
    $Res Function(_$EveningRatingOrderByInputImpl) then,
  ) = __$$EveningRatingOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
    SortOrder? hostScore,
    SortOrder? foodScore,
    SortOrder? eveningScore,
    SortOrder? comment,
  });
}

/// @nodoc
class __$$EveningRatingOrderByInputImplCopyWithImpl<$Res>
    extends
        _$EveningRatingOrderByInputCopyWithImpl<
          $Res,
          _$EveningRatingOrderByInputImpl
        >
    implements _$$EveningRatingOrderByInputImplCopyWith<$Res> {
  __$$EveningRatingOrderByInputImplCopyWithImpl(
    _$EveningRatingOrderByInputImpl _value,
    $Res Function(_$EveningRatingOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EveningRatingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? hostScore = freezed,
    Object? foodScore = freezed,
    Object? eveningScore = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _$EveningRatingOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        hostScore: freezed == hostScore
            ? _value.hostScore
            : hostScore // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        foodScore: freezed == foodScore
            ? _value.foodScore
            : foodScore // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        eveningScore: freezed == eveningScore
            ? _value.eveningScore
            : eveningScore // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$EveningRatingOrderByInputImpl extends _EveningRatingOrderByInput {
  const _$EveningRatingOrderByInputImpl({
    this.id,
    this.sessionId,
    this.userId,
    this.hostScore,
    this.foodScore,
    this.eveningScore,
    this.comment,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? sessionId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? hostScore;
  @override
  final SortOrder? foodScore;
  @override
  final SortOrder? eveningScore;
  @override
  final SortOrder? comment;

  @override
  String toString() {
    return 'EveningRatingOrderByInput(id: $id, sessionId: $sessionId, userId: $userId, hostScore: $hostScore, foodScore: $foodScore, eveningScore: $eveningScore, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveningRatingOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hostScore, hostScore) ||
                other.hostScore == hostScore) &&
            (identical(other.foodScore, foodScore) ||
                other.foodScore == foodScore) &&
            (identical(other.eveningScore, eveningScore) ||
                other.eveningScore == eveningScore) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    userId,
    hostScore,
    foodScore,
    eveningScore,
    comment,
  );

  /// Create a copy of EveningRatingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EveningRatingOrderByInputImplCopyWith<_$EveningRatingOrderByInputImpl>
  get copyWith =>
      __$$EveningRatingOrderByInputImplCopyWithImpl<
        _$EveningRatingOrderByInputImpl
      >(this, _$identity);
}

abstract class _EveningRatingOrderByInput extends EveningRatingOrderByInput {
  const factory _EveningRatingOrderByInput({
    final SortOrder? id,
    final SortOrder? sessionId,
    final SortOrder? userId,
    final SortOrder? hostScore,
    final SortOrder? foodScore,
    final SortOrder? eveningScore,
    final SortOrder? comment,
  }) = _$EveningRatingOrderByInputImpl;
  const _EveningRatingOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get sessionId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get hostScore;
  @override
  SortOrder? get foodScore;
  @override
  SortOrder? get eveningScore;
  @override
  SortOrder? get comment;

  /// Create a copy of EveningRatingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EveningRatingOrderByInputImplCopyWith<_$EveningRatingOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
