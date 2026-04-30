// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cuisine_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CuisinePreference {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  List<CuisineType> get preferred => throw _privateConstructorUsedError;

  /// Create a copy of CuisinePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CuisinePreferenceCopyWith<CuisinePreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisinePreferenceCopyWith<$Res> {
  factory $CuisinePreferenceCopyWith(
    CuisinePreference value,
    $Res Function(CuisinePreference) then,
  ) = _$CuisinePreferenceCopyWithImpl<$Res, CuisinePreference>;
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    List<CuisineType> preferred,
  });

  $GameSessionCopyWith<$Res>? get session;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CuisinePreferenceCopyWithImpl<$Res, $Val extends CuisinePreference>
    implements $CuisinePreferenceCopyWith<$Res> {
  _$CuisinePreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CuisinePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? preferred = null,
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
            preferred: null == preferred
                ? _value.preferred
                : preferred // ignore: cast_nullable_to_non_nullable
                      as List<CuisineType>,
          )
          as $Val,
    );
  }

  /// Create a copy of CuisinePreference
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

  /// Create a copy of CuisinePreference
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
abstract class _$$CuisinePreferenceImplCopyWith<$Res>
    implements $CuisinePreferenceCopyWith<$Res> {
  factory _$$CuisinePreferenceImplCopyWith(
    _$CuisinePreferenceImpl value,
    $Res Function(_$CuisinePreferenceImpl) then,
  ) = __$$CuisinePreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    List<CuisineType> preferred,
  });

  @override
  $GameSessionCopyWith<$Res>? get session;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CuisinePreferenceImplCopyWithImpl<$Res>
    extends _$CuisinePreferenceCopyWithImpl<$Res, _$CuisinePreferenceImpl>
    implements _$$CuisinePreferenceImplCopyWith<$Res> {
  __$$CuisinePreferenceImplCopyWithImpl(
    _$CuisinePreferenceImpl _value,
    $Res Function(_$CuisinePreferenceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CuisinePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? preferred = null,
  }) {
    return _then(
      _$CuisinePreferenceImpl(
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
        preferred: null == preferred
            ? _value._preferred
            : preferred // ignore: cast_nullable_to_non_nullable
                  as List<CuisineType>,
      ),
    );
  }
}

/// @nodoc

class _$CuisinePreferenceImpl extends _CuisinePreference {
  const _$CuisinePreferenceImpl({
    required this.id,
    required this.sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.session,
    required this.userId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.user,
    required final List<CuisineType> preferred,
  }) : _preferred = preferred,
       super._();

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
  final List<CuisineType> _preferred;
  @override
  List<CuisineType> get preferred {
    if (_preferred is EqualUnmodifiableListView) return _preferred;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferred);
  }

  @override
  String toString() {
    return 'CuisinePreference(id: $id, sessionId: $sessionId, session: $session, userId: $userId, user: $user, preferred: $preferred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisinePreferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(
              other._preferred,
              _preferred,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    session,
    userId,
    user,
    const DeepCollectionEquality().hash(_preferred),
  );

  /// Create a copy of CuisinePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisinePreferenceImplCopyWith<_$CuisinePreferenceImpl> get copyWith =>
      __$$CuisinePreferenceImplCopyWithImpl<_$CuisinePreferenceImpl>(
        this,
        _$identity,
      );
}

abstract class _CuisinePreference extends CuisinePreference {
  const factory _CuisinePreference({
    required final String id,
    required final String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final GameSession? session,
    required final String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
    required final List<CuisineType> preferred,
  }) = _$CuisinePreferenceImpl;
  const _CuisinePreference._() : super._();

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
  List<CuisineType> get preferred;

  /// Create a copy of CuisinePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CuisinePreferenceImplCopyWith<_$CuisinePreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateCuisinePreferenceInput {
  String get sessionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<CuisineType> get preferred => throw _privateConstructorUsedError;

  /// Create a copy of CreateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCuisinePreferenceInputCopyWith<CreateCuisinePreferenceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCuisinePreferenceInputCopyWith<$Res> {
  factory $CreateCuisinePreferenceInputCopyWith(
    CreateCuisinePreferenceInput value,
    $Res Function(CreateCuisinePreferenceInput) then,
  ) =
      _$CreateCuisinePreferenceInputCopyWithImpl<
        $Res,
        CreateCuisinePreferenceInput
      >;
  @useResult
  $Res call({String sessionId, String userId, List<CuisineType> preferred});
}

/// @nodoc
class _$CreateCuisinePreferenceInputCopyWithImpl<
  $Res,
  $Val extends CreateCuisinePreferenceInput
>
    implements $CreateCuisinePreferenceInputCopyWith<$Res> {
  _$CreateCuisinePreferenceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? userId = null,
    Object? preferred = null,
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
            preferred: null == preferred
                ? _value.preferred
                : preferred // ignore: cast_nullable_to_non_nullable
                      as List<CuisineType>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateCuisinePreferenceInputImplCopyWith<$Res>
    implements $CreateCuisinePreferenceInputCopyWith<$Res> {
  factory _$$CreateCuisinePreferenceInputImplCopyWith(
    _$CreateCuisinePreferenceInputImpl value,
    $Res Function(_$CreateCuisinePreferenceInputImpl) then,
  ) = __$$CreateCuisinePreferenceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, String userId, List<CuisineType> preferred});
}

/// @nodoc
class __$$CreateCuisinePreferenceInputImplCopyWithImpl<$Res>
    extends
        _$CreateCuisinePreferenceInputCopyWithImpl<
          $Res,
          _$CreateCuisinePreferenceInputImpl
        >
    implements _$$CreateCuisinePreferenceInputImplCopyWith<$Res> {
  __$$CreateCuisinePreferenceInputImplCopyWithImpl(
    _$CreateCuisinePreferenceInputImpl _value,
    $Res Function(_$CreateCuisinePreferenceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? userId = null,
    Object? preferred = null,
  }) {
    return _then(
      _$CreateCuisinePreferenceInputImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        preferred: null == preferred
            ? _value._preferred
            : preferred // ignore: cast_nullable_to_non_nullable
                  as List<CuisineType>,
      ),
    );
  }
}

/// @nodoc

class _$CreateCuisinePreferenceInputImpl extends _CreateCuisinePreferenceInput {
  const _$CreateCuisinePreferenceInputImpl({
    required this.sessionId,
    required this.userId,
    required final List<CuisineType> preferred,
  }) : _preferred = preferred,
       super._();

  @override
  final String sessionId;
  @override
  final String userId;
  final List<CuisineType> _preferred;
  @override
  List<CuisineType> get preferred {
    if (_preferred is EqualUnmodifiableListView) return _preferred;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferred);
  }

  @override
  String toString() {
    return 'CreateCuisinePreferenceInput(sessionId: $sessionId, userId: $userId, preferred: $preferred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCuisinePreferenceInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._preferred,
              _preferred,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    userId,
    const DeepCollectionEquality().hash(_preferred),
  );

  /// Create a copy of CreateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCuisinePreferenceInputImplCopyWith<
    _$CreateCuisinePreferenceInputImpl
  >
  get copyWith =>
      __$$CreateCuisinePreferenceInputImplCopyWithImpl<
        _$CreateCuisinePreferenceInputImpl
      >(this, _$identity);
}

abstract class _CreateCuisinePreferenceInput
    extends CreateCuisinePreferenceInput {
  const factory _CreateCuisinePreferenceInput({
    required final String sessionId,
    required final String userId,
    required final List<CuisineType> preferred,
  }) = _$CreateCuisinePreferenceInputImpl;
  const _CreateCuisinePreferenceInput._() : super._();

  @override
  String get sessionId;
  @override
  String get userId;
  @override
  List<CuisineType> get preferred;

  /// Create a copy of CreateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCuisinePreferenceInputImplCopyWith<
    _$CreateCuisinePreferenceInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateCuisinePreferenceInput {
  String? get sessionId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<CuisineType>? get preferred => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCuisinePreferenceInputCopyWith<UpdateCuisinePreferenceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCuisinePreferenceInputCopyWith<$Res> {
  factory $UpdateCuisinePreferenceInputCopyWith(
    UpdateCuisinePreferenceInput value,
    $Res Function(UpdateCuisinePreferenceInput) then,
  ) =
      _$UpdateCuisinePreferenceInputCopyWithImpl<
        $Res,
        UpdateCuisinePreferenceInput
      >;
  @useResult
  $Res call({String? sessionId, String? userId, List<CuisineType>? preferred});
}

/// @nodoc
class _$UpdateCuisinePreferenceInputCopyWithImpl<
  $Res,
  $Val extends UpdateCuisinePreferenceInput
>
    implements $UpdateCuisinePreferenceInputCopyWith<$Res> {
  _$UpdateCuisinePreferenceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? preferred = freezed,
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
            preferred: freezed == preferred
                ? _value.preferred
                : preferred // ignore: cast_nullable_to_non_nullable
                      as List<CuisineType>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateCuisinePreferenceInputImplCopyWith<$Res>
    implements $UpdateCuisinePreferenceInputCopyWith<$Res> {
  factory _$$UpdateCuisinePreferenceInputImplCopyWith(
    _$UpdateCuisinePreferenceInputImpl value,
    $Res Function(_$UpdateCuisinePreferenceInputImpl) then,
  ) = __$$UpdateCuisinePreferenceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionId, String? userId, List<CuisineType>? preferred});
}

/// @nodoc
class __$$UpdateCuisinePreferenceInputImplCopyWithImpl<$Res>
    extends
        _$UpdateCuisinePreferenceInputCopyWithImpl<
          $Res,
          _$UpdateCuisinePreferenceInputImpl
        >
    implements _$$UpdateCuisinePreferenceInputImplCopyWith<$Res> {
  __$$UpdateCuisinePreferenceInputImplCopyWithImpl(
    _$UpdateCuisinePreferenceInputImpl _value,
    $Res Function(_$UpdateCuisinePreferenceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? preferred = freezed,
  }) {
    return _then(
      _$UpdateCuisinePreferenceInputImpl(
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        preferred: freezed == preferred
            ? _value._preferred
            : preferred // ignore: cast_nullable_to_non_nullable
                  as List<CuisineType>?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateCuisinePreferenceInputImpl extends _UpdateCuisinePreferenceInput {
  const _$UpdateCuisinePreferenceInputImpl({
    this.sessionId,
    this.userId,
    final List<CuisineType>? preferred,
  }) : _preferred = preferred,
       super._();

  @override
  final String? sessionId;
  @override
  final String? userId;
  final List<CuisineType>? _preferred;
  @override
  List<CuisineType>? get preferred {
    final value = _preferred;
    if (value == null) return null;
    if (_preferred is EqualUnmodifiableListView) return _preferred;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateCuisinePreferenceInput(sessionId: $sessionId, userId: $userId, preferred: $preferred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCuisinePreferenceInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._preferred,
              _preferred,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    userId,
    const DeepCollectionEquality().hash(_preferred),
  );

  /// Create a copy of UpdateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCuisinePreferenceInputImplCopyWith<
    _$UpdateCuisinePreferenceInputImpl
  >
  get copyWith =>
      __$$UpdateCuisinePreferenceInputImplCopyWithImpl<
        _$UpdateCuisinePreferenceInputImpl
      >(this, _$identity);
}

abstract class _UpdateCuisinePreferenceInput
    extends UpdateCuisinePreferenceInput {
  const factory _UpdateCuisinePreferenceInput({
    final String? sessionId,
    final String? userId,
    final List<CuisineType>? preferred,
  }) = _$UpdateCuisinePreferenceInputImpl;
  const _UpdateCuisinePreferenceInput._() : super._();

  @override
  String? get sessionId;
  @override
  String? get userId;
  @override
  List<CuisineType>? get preferred;

  /// Create a copy of UpdateCuisinePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCuisinePreferenceInputImplCopyWith<
    _$UpdateCuisinePreferenceInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CuisinePreferenceWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of CuisinePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CuisinePreferenceWhereUniqueInputCopyWith<CuisinePreferenceWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisinePreferenceWhereUniqueInputCopyWith<$Res> {
  factory $CuisinePreferenceWhereUniqueInputCopyWith(
    CuisinePreferenceWhereUniqueInput value,
    $Res Function(CuisinePreferenceWhereUniqueInput) then,
  ) =
      _$CuisinePreferenceWhereUniqueInputCopyWithImpl<
        $Res,
        CuisinePreferenceWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$CuisinePreferenceWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends CuisinePreferenceWhereUniqueInput
>
    implements $CuisinePreferenceWhereUniqueInputCopyWith<$Res> {
  _$CuisinePreferenceWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CuisinePreferenceWhereUniqueInput
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
abstract class _$$CuisinePreferenceWhereUniqueInputImplCopyWith<$Res>
    implements $CuisinePreferenceWhereUniqueInputCopyWith<$Res> {
  factory _$$CuisinePreferenceWhereUniqueInputImplCopyWith(
    _$CuisinePreferenceWhereUniqueInputImpl value,
    $Res Function(_$CuisinePreferenceWhereUniqueInputImpl) then,
  ) = __$$CuisinePreferenceWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$CuisinePreferenceWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$CuisinePreferenceWhereUniqueInputCopyWithImpl<
          $Res,
          _$CuisinePreferenceWhereUniqueInputImpl
        >
    implements _$$CuisinePreferenceWhereUniqueInputImplCopyWith<$Res> {
  __$$CuisinePreferenceWhereUniqueInputImplCopyWithImpl(
    _$CuisinePreferenceWhereUniqueInputImpl _value,
    $Res Function(_$CuisinePreferenceWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CuisinePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$CuisinePreferenceWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CuisinePreferenceWhereUniqueInputImpl
    extends _CuisinePreferenceWhereUniqueInput {
  const _$CuisinePreferenceWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'CuisinePreferenceWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisinePreferenceWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CuisinePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisinePreferenceWhereUniqueInputImplCopyWith<
    _$CuisinePreferenceWhereUniqueInputImpl
  >
  get copyWith =>
      __$$CuisinePreferenceWhereUniqueInputImplCopyWithImpl<
        _$CuisinePreferenceWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _CuisinePreferenceWhereUniqueInput
    extends CuisinePreferenceWhereUniqueInput {
  const factory _CuisinePreferenceWhereUniqueInput({final String? id}) =
      _$CuisinePreferenceWhereUniqueInputImpl;
  const _CuisinePreferenceWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of CuisinePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CuisinePreferenceWhereUniqueInputImplCopyWith<
    _$CuisinePreferenceWhereUniqueInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CuisinePreferenceWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get sessionId => throw _privateConstructorUsedError;
  GameSessionRelationFilter? get session => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  List<CuisinePreferenceWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<CuisinePreferenceWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  CuisinePreferenceWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of CuisinePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CuisinePreferenceWhereInputCopyWith<CuisinePreferenceWhereInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisinePreferenceWhereInputCopyWith<$Res> {
  factory $CuisinePreferenceWhereInputCopyWith(
    CuisinePreferenceWhereInput value,
    $Res Function(CuisinePreferenceWhereInput) then,
  ) =
      _$CuisinePreferenceWhereInputCopyWithImpl<
        $Res,
        CuisinePreferenceWhereInput
      >;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    List<CuisinePreferenceWhereInput>? AND,
    List<CuisinePreferenceWhereInput>? OR,
    CuisinePreferenceWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get sessionId;
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  $StringFilterCopyWith<$Res>? get userId;
  $UserRelationFilterCopyWith<$Res>? get user;
  $CuisinePreferenceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$CuisinePreferenceWhereInputCopyWithImpl<
  $Res,
  $Val extends CuisinePreferenceWhereInput
>
    implements $CuisinePreferenceWhereInputCopyWith<$Res> {
  _$CuisinePreferenceWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CuisinePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? user = freezed,
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
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<CuisinePreferenceWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<CuisinePreferenceWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as CuisinePreferenceWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of CuisinePreferenceWhereInput
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

  /// Create a copy of CuisinePreferenceWhereInput
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

  /// Create a copy of CuisinePreferenceWhereInput
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

  /// Create a copy of CuisinePreferenceWhereInput
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

  /// Create a copy of CuisinePreferenceWhereInput
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

  /// Create a copy of CuisinePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $CuisinePreferenceWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CuisinePreferenceWhereInputImplCopyWith<$Res>
    implements $CuisinePreferenceWhereInputCopyWith<$Res> {
  factory _$$CuisinePreferenceWhereInputImplCopyWith(
    _$CuisinePreferenceWhereInputImpl value,
    $Res Function(_$CuisinePreferenceWhereInputImpl) then,
  ) = __$$CuisinePreferenceWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    List<CuisinePreferenceWhereInput>? AND,
    List<CuisinePreferenceWhereInput>? OR,
    CuisinePreferenceWhereInput? NOT,
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
  $CuisinePreferenceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$CuisinePreferenceWhereInputImplCopyWithImpl<$Res>
    extends
        _$CuisinePreferenceWhereInputCopyWithImpl<
          $Res,
          _$CuisinePreferenceWhereInputImpl
        >
    implements _$$CuisinePreferenceWhereInputImplCopyWith<$Res> {
  __$$CuisinePreferenceWhereInputImplCopyWithImpl(
    _$CuisinePreferenceWhereInputImpl _value,
    $Res Function(_$CuisinePreferenceWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CuisinePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$CuisinePreferenceWhereInputImpl(
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
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<CuisinePreferenceWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<CuisinePreferenceWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$CuisinePreferenceWhereInputImpl extends _CuisinePreferenceWhereInput {
  const _$CuisinePreferenceWhereInputImpl({
    this.id,
    this.sessionId,
    this.session,
    this.userId,
    this.user,
    final List<CuisinePreferenceWhereInput>? AND,
    final List<CuisinePreferenceWhereInput>? OR,
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
  final List<CuisinePreferenceWhereInput>? _AND;
  @override
  List<CuisinePreferenceWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CuisinePreferenceWhereInput>? _OR;
  @override
  List<CuisinePreferenceWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CuisinePreferenceWhereInput? NOT;

  @override
  String toString() {
    return 'CuisinePreferenceWhereInput(id: $id, sessionId: $sessionId, session: $session, userId: $userId, user: $user, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisinePreferenceWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
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
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of CuisinePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisinePreferenceWhereInputImplCopyWith<_$CuisinePreferenceWhereInputImpl>
  get copyWith =>
      __$$CuisinePreferenceWhereInputImplCopyWithImpl<
        _$CuisinePreferenceWhereInputImpl
      >(this, _$identity);
}

abstract class _CuisinePreferenceWhereInput
    extends CuisinePreferenceWhereInput {
  const factory _CuisinePreferenceWhereInput({
    final StringFilter? id,
    final StringFilter? sessionId,
    final GameSessionRelationFilter? session,
    final StringFilter? userId,
    final UserRelationFilter? user,
    final List<CuisinePreferenceWhereInput>? AND,
    final List<CuisinePreferenceWhereInput>? OR,
    final CuisinePreferenceWhereInput? NOT,
  }) = _$CuisinePreferenceWhereInputImpl;
  const _CuisinePreferenceWhereInput._() : super._();

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
  List<CuisinePreferenceWhereInput>? get AND;
  @override
  List<CuisinePreferenceWhereInput>? get OR;
  @override
  CuisinePreferenceWhereInput? get NOT;

  /// Create a copy of CuisinePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CuisinePreferenceWhereInputImplCopyWith<_$CuisinePreferenceWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CuisinePreferenceListRelationFilter {
  CuisinePreferenceWhereInput? get some => throw _privateConstructorUsedError;
  CuisinePreferenceWhereInput? get every => throw _privateConstructorUsedError;
  CuisinePreferenceWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CuisinePreferenceListRelationFilterCopyWith<
    CuisinePreferenceListRelationFilter
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisinePreferenceListRelationFilterCopyWith<$Res> {
  factory $CuisinePreferenceListRelationFilterCopyWith(
    CuisinePreferenceListRelationFilter value,
    $Res Function(CuisinePreferenceListRelationFilter) then,
  ) =
      _$CuisinePreferenceListRelationFilterCopyWithImpl<
        $Res,
        CuisinePreferenceListRelationFilter
      >;
  @useResult
  $Res call({
    CuisinePreferenceWhereInput? some,
    CuisinePreferenceWhereInput? every,
    CuisinePreferenceWhereInput? none,
  });

  $CuisinePreferenceWhereInputCopyWith<$Res>? get some;
  $CuisinePreferenceWhereInputCopyWith<$Res>? get every;
  $CuisinePreferenceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$CuisinePreferenceListRelationFilterCopyWithImpl<
  $Res,
  $Val extends CuisinePreferenceListRelationFilter
>
    implements $CuisinePreferenceListRelationFilterCopyWith<$Res> {
  _$CuisinePreferenceListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CuisinePreferenceListRelationFilter
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
                      as CuisinePreferenceWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as CuisinePreferenceWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as CuisinePreferenceWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $CuisinePreferenceWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $CuisinePreferenceWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $CuisinePreferenceWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CuisinePreferenceListRelationFilterImplCopyWith<$Res>
    implements $CuisinePreferenceListRelationFilterCopyWith<$Res> {
  factory _$$CuisinePreferenceListRelationFilterImplCopyWith(
    _$CuisinePreferenceListRelationFilterImpl value,
    $Res Function(_$CuisinePreferenceListRelationFilterImpl) then,
  ) = __$$CuisinePreferenceListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    CuisinePreferenceWhereInput? some,
    CuisinePreferenceWhereInput? every,
    CuisinePreferenceWhereInput? none,
  });

  @override
  $CuisinePreferenceWhereInputCopyWith<$Res>? get some;
  @override
  $CuisinePreferenceWhereInputCopyWith<$Res>? get every;
  @override
  $CuisinePreferenceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$CuisinePreferenceListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$CuisinePreferenceListRelationFilterCopyWithImpl<
          $Res,
          _$CuisinePreferenceListRelationFilterImpl
        >
    implements _$$CuisinePreferenceListRelationFilterImplCopyWith<$Res> {
  __$$CuisinePreferenceListRelationFilterImplCopyWithImpl(
    _$CuisinePreferenceListRelationFilterImpl _value,
    $Res Function(_$CuisinePreferenceListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$CuisinePreferenceListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$CuisinePreferenceListRelationFilterImpl
    extends _CuisinePreferenceListRelationFilter {
  const _$CuisinePreferenceListRelationFilterImpl({
    this.some,
    this.every,
    this.none,
  }) : super._();

  @override
  final CuisinePreferenceWhereInput? some;
  @override
  final CuisinePreferenceWhereInput? every;
  @override
  final CuisinePreferenceWhereInput? none;

  @override
  String toString() {
    return 'CuisinePreferenceListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisinePreferenceListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisinePreferenceListRelationFilterImplCopyWith<
    _$CuisinePreferenceListRelationFilterImpl
  >
  get copyWith =>
      __$$CuisinePreferenceListRelationFilterImplCopyWithImpl<
        _$CuisinePreferenceListRelationFilterImpl
      >(this, _$identity);
}

abstract class _CuisinePreferenceListRelationFilter
    extends CuisinePreferenceListRelationFilter {
  const factory _CuisinePreferenceListRelationFilter({
    final CuisinePreferenceWhereInput? some,
    final CuisinePreferenceWhereInput? every,
    final CuisinePreferenceWhereInput? none,
  }) = _$CuisinePreferenceListRelationFilterImpl;
  const _CuisinePreferenceListRelationFilter._() : super._();

  @override
  CuisinePreferenceWhereInput? get some;
  @override
  CuisinePreferenceWhereInput? get every;
  @override
  CuisinePreferenceWhereInput? get none;

  /// Create a copy of CuisinePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CuisinePreferenceListRelationFilterImplCopyWith<
    _$CuisinePreferenceListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CuisinePreferenceRelationFilter {
  @JsonKey(name: 'is')
  CuisinePreferenceWhereInput? get is_ => throw _privateConstructorUsedError;
  CuisinePreferenceWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CuisinePreferenceRelationFilterCopyWith<CuisinePreferenceRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisinePreferenceRelationFilterCopyWith<$Res> {
  factory $CuisinePreferenceRelationFilterCopyWith(
    CuisinePreferenceRelationFilter value,
    $Res Function(CuisinePreferenceRelationFilter) then,
  ) =
      _$CuisinePreferenceRelationFilterCopyWithImpl<
        $Res,
        CuisinePreferenceRelationFilter
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'is') CuisinePreferenceWhereInput? is_,
    CuisinePreferenceWhereInput? isNot,
  });

  $CuisinePreferenceWhereInputCopyWith<$Res>? get is_;
  $CuisinePreferenceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$CuisinePreferenceRelationFilterCopyWithImpl<
  $Res,
  $Val extends CuisinePreferenceRelationFilter
>
    implements $CuisinePreferenceRelationFilterCopyWith<$Res> {
  _$CuisinePreferenceRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as CuisinePreferenceWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as CuisinePreferenceWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $CuisinePreferenceWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $CuisinePreferenceWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CuisinePreferenceRelationFilterImplCopyWith<$Res>
    implements $CuisinePreferenceRelationFilterCopyWith<$Res> {
  factory _$$CuisinePreferenceRelationFilterImplCopyWith(
    _$CuisinePreferenceRelationFilterImpl value,
    $Res Function(_$CuisinePreferenceRelationFilterImpl) then,
  ) = __$$CuisinePreferenceRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') CuisinePreferenceWhereInput? is_,
    CuisinePreferenceWhereInput? isNot,
  });

  @override
  $CuisinePreferenceWhereInputCopyWith<$Res>? get is_;
  @override
  $CuisinePreferenceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$CuisinePreferenceRelationFilterImplCopyWithImpl<$Res>
    extends
        _$CuisinePreferenceRelationFilterCopyWithImpl<
          $Res,
          _$CuisinePreferenceRelationFilterImpl
        >
    implements _$$CuisinePreferenceRelationFilterImplCopyWith<$Res> {
  __$$CuisinePreferenceRelationFilterImplCopyWithImpl(
    _$CuisinePreferenceRelationFilterImpl _value,
    $Res Function(_$CuisinePreferenceRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$CuisinePreferenceRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$CuisinePreferenceRelationFilterImpl
    extends _CuisinePreferenceRelationFilter {
  const _$CuisinePreferenceRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final CuisinePreferenceWhereInput? is_;
  @override
  final CuisinePreferenceWhereInput? isNot;

  @override
  String toString() {
    return 'CuisinePreferenceRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisinePreferenceRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisinePreferenceRelationFilterImplCopyWith<
    _$CuisinePreferenceRelationFilterImpl
  >
  get copyWith =>
      __$$CuisinePreferenceRelationFilterImplCopyWithImpl<
        _$CuisinePreferenceRelationFilterImpl
      >(this, _$identity);
}

abstract class _CuisinePreferenceRelationFilter
    extends CuisinePreferenceRelationFilter {
  const factory _CuisinePreferenceRelationFilter({
    @JsonKey(name: 'is') final CuisinePreferenceWhereInput? is_,
    final CuisinePreferenceWhereInput? isNot,
  }) = _$CuisinePreferenceRelationFilterImpl;
  const _CuisinePreferenceRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  CuisinePreferenceWhereInput? get is_;
  @override
  CuisinePreferenceWhereInput? get isNot;

  /// Create a copy of CuisinePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CuisinePreferenceRelationFilterImplCopyWith<
    _$CuisinePreferenceRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CuisinePreferenceOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get sessionId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;

  /// Create a copy of CuisinePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CuisinePreferenceOrderByInputCopyWith<CuisinePreferenceOrderByInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisinePreferenceOrderByInputCopyWith<$Res> {
  factory $CuisinePreferenceOrderByInputCopyWith(
    CuisinePreferenceOrderByInput value,
    $Res Function(CuisinePreferenceOrderByInput) then,
  ) =
      _$CuisinePreferenceOrderByInputCopyWithImpl<
        $Res,
        CuisinePreferenceOrderByInput
      >;
  @useResult
  $Res call({SortOrder? id, SortOrder? sessionId, SortOrder? userId});
}

/// @nodoc
class _$CuisinePreferenceOrderByInputCopyWithImpl<
  $Res,
  $Val extends CuisinePreferenceOrderByInput
>
    implements $CuisinePreferenceOrderByInputCopyWith<$Res> {
  _$CuisinePreferenceOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CuisinePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CuisinePreferenceOrderByInputImplCopyWith<$Res>
    implements $CuisinePreferenceOrderByInputCopyWith<$Res> {
  factory _$$CuisinePreferenceOrderByInputImplCopyWith(
    _$CuisinePreferenceOrderByInputImpl value,
    $Res Function(_$CuisinePreferenceOrderByInputImpl) then,
  ) = __$$CuisinePreferenceOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortOrder? id, SortOrder? sessionId, SortOrder? userId});
}

/// @nodoc
class __$$CuisinePreferenceOrderByInputImplCopyWithImpl<$Res>
    extends
        _$CuisinePreferenceOrderByInputCopyWithImpl<
          $Res,
          _$CuisinePreferenceOrderByInputImpl
        >
    implements _$$CuisinePreferenceOrderByInputImplCopyWith<$Res> {
  __$$CuisinePreferenceOrderByInputImplCopyWithImpl(
    _$CuisinePreferenceOrderByInputImpl _value,
    $Res Function(_$CuisinePreferenceOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CuisinePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
  }) {
    return _then(
      _$CuisinePreferenceOrderByInputImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$CuisinePreferenceOrderByInputImpl
    extends _CuisinePreferenceOrderByInput {
  const _$CuisinePreferenceOrderByInputImpl({
    this.id,
    this.sessionId,
    this.userId,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? sessionId;
  @override
  final SortOrder? userId;

  @override
  String toString() {
    return 'CuisinePreferenceOrderByInput(id: $id, sessionId: $sessionId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisinePreferenceOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sessionId, userId);

  /// Create a copy of CuisinePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisinePreferenceOrderByInputImplCopyWith<
    _$CuisinePreferenceOrderByInputImpl
  >
  get copyWith =>
      __$$CuisinePreferenceOrderByInputImplCopyWithImpl<
        _$CuisinePreferenceOrderByInputImpl
      >(this, _$identity);
}

abstract class _CuisinePreferenceOrderByInput
    extends CuisinePreferenceOrderByInput {
  const factory _CuisinePreferenceOrderByInput({
    final SortOrder? id,
    final SortOrder? sessionId,
    final SortOrder? userId,
  }) = _$CuisinePreferenceOrderByInputImpl;
  const _CuisinePreferenceOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get sessionId;
  @override
  SortOrder? get userId;

  /// Create a copy of CuisinePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CuisinePreferenceOrderByInputImplCopyWith<
    _$CuisinePreferenceOrderByInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
