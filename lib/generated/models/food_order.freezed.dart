// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FoodOrder {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get menuItemIds => throw _privateConstructorUsedError;

  /// Create a copy of FoodOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodOrderCopyWith<FoodOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodOrderCopyWith<$Res> {
  factory $FoodOrderCopyWith(FoodOrder value, $Res Function(FoodOrder) then) =
      _$FoodOrderCopyWithImpl<$Res, FoodOrder>;
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    String menuItemIds,
  });

  $GameSessionCopyWith<$Res>? get session;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FoodOrderCopyWithImpl<$Res, $Val extends FoodOrder>
    implements $FoodOrderCopyWith<$Res> {
  _$FoodOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? menuItemIds = null,
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
            menuItemIds: null == menuItemIds
                ? _value.menuItemIds
                : menuItemIds // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of FoodOrder
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

  /// Create a copy of FoodOrder
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
abstract class _$$FoodOrderImplCopyWith<$Res>
    implements $FoodOrderCopyWith<$Res> {
  factory _$$FoodOrderImplCopyWith(
    _$FoodOrderImpl value,
    $Res Function(_$FoodOrderImpl) then,
  ) = __$$FoodOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    String menuItemIds,
  });

  @override
  $GameSessionCopyWith<$Res>? get session;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FoodOrderImplCopyWithImpl<$Res>
    extends _$FoodOrderCopyWithImpl<$Res, _$FoodOrderImpl>
    implements _$$FoodOrderImplCopyWith<$Res> {
  __$$FoodOrderImplCopyWithImpl(
    _$FoodOrderImpl _value,
    $Res Function(_$FoodOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? menuItemIds = null,
  }) {
    return _then(
      _$FoodOrderImpl(
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
        menuItemIds: null == menuItemIds
            ? _value.menuItemIds
            : menuItemIds // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FoodOrderImpl extends _FoodOrder {
  const _$FoodOrderImpl({
    required this.id,
    required this.sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.session,
    required this.userId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.user,
    required this.menuItemIds,
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
  final String menuItemIds;

  @override
  String toString() {
    return 'FoodOrder(id: $id, sessionId: $sessionId, session: $session, userId: $userId, user: $user, menuItemIds: $menuItemIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.menuItemIds, menuItemIds) ||
                other.menuItemIds == menuItemIds));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    session,
    userId,
    user,
    menuItemIds,
  );

  /// Create a copy of FoodOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodOrderImplCopyWith<_$FoodOrderImpl> get copyWith =>
      __$$FoodOrderImplCopyWithImpl<_$FoodOrderImpl>(this, _$identity);
}

abstract class _FoodOrder extends FoodOrder {
  const factory _FoodOrder({
    required final String id,
    required final String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final GameSession? session,
    required final String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
    required final String menuItemIds,
  }) = _$FoodOrderImpl;
  const _FoodOrder._() : super._();

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
  String get menuItemIds;

  /// Create a copy of FoodOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodOrderImplCopyWith<_$FoodOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFoodOrderInput {
  String get sessionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get menuItemIds => throw _privateConstructorUsedError;

  /// Create a copy of CreateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFoodOrderInputCopyWith<CreateFoodOrderInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFoodOrderInputCopyWith<$Res> {
  factory $CreateFoodOrderInputCopyWith(
    CreateFoodOrderInput value,
    $Res Function(CreateFoodOrderInput) then,
  ) = _$CreateFoodOrderInputCopyWithImpl<$Res, CreateFoodOrderInput>;
  @useResult
  $Res call({String sessionId, String userId, String menuItemIds});
}

/// @nodoc
class _$CreateFoodOrderInputCopyWithImpl<
  $Res,
  $Val extends CreateFoodOrderInput
>
    implements $CreateFoodOrderInputCopyWith<$Res> {
  _$CreateFoodOrderInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? userId = null,
    Object? menuItemIds = null,
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
            menuItemIds: null == menuItemIds
                ? _value.menuItemIds
                : menuItemIds // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFoodOrderInputImplCopyWith<$Res>
    implements $CreateFoodOrderInputCopyWith<$Res> {
  factory _$$CreateFoodOrderInputImplCopyWith(
    _$CreateFoodOrderInputImpl value,
    $Res Function(_$CreateFoodOrderInputImpl) then,
  ) = __$$CreateFoodOrderInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, String userId, String menuItemIds});
}

/// @nodoc
class __$$CreateFoodOrderInputImplCopyWithImpl<$Res>
    extends _$CreateFoodOrderInputCopyWithImpl<$Res, _$CreateFoodOrderInputImpl>
    implements _$$CreateFoodOrderInputImplCopyWith<$Res> {
  __$$CreateFoodOrderInputImplCopyWithImpl(
    _$CreateFoodOrderInputImpl _value,
    $Res Function(_$CreateFoodOrderInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? userId = null,
    Object? menuItemIds = null,
  }) {
    return _then(
      _$CreateFoodOrderInputImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        menuItemIds: null == menuItemIds
            ? _value.menuItemIds
            : menuItemIds // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateFoodOrderInputImpl extends _CreateFoodOrderInput {
  const _$CreateFoodOrderInputImpl({
    required this.sessionId,
    required this.userId,
    required this.menuItemIds,
  }) : super._();

  @override
  final String sessionId;
  @override
  final String userId;
  @override
  final String menuItemIds;

  @override
  String toString() {
    return 'CreateFoodOrderInput(sessionId: $sessionId, userId: $userId, menuItemIds: $menuItemIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFoodOrderInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.menuItemIds, menuItemIds) ||
                other.menuItemIds == menuItemIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId, userId, menuItemIds);

  /// Create a copy of CreateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFoodOrderInputImplCopyWith<_$CreateFoodOrderInputImpl>
  get copyWith =>
      __$$CreateFoodOrderInputImplCopyWithImpl<_$CreateFoodOrderInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFoodOrderInput extends CreateFoodOrderInput {
  const factory _CreateFoodOrderInput({
    required final String sessionId,
    required final String userId,
    required final String menuItemIds,
  }) = _$CreateFoodOrderInputImpl;
  const _CreateFoodOrderInput._() : super._();

  @override
  String get sessionId;
  @override
  String get userId;
  @override
  String get menuItemIds;

  /// Create a copy of CreateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFoodOrderInputImplCopyWith<_$CreateFoodOrderInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateFoodOrderInput {
  String? get sessionId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get menuItemIds => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFoodOrderInputCopyWith<UpdateFoodOrderInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFoodOrderInputCopyWith<$Res> {
  factory $UpdateFoodOrderInputCopyWith(
    UpdateFoodOrderInput value,
    $Res Function(UpdateFoodOrderInput) then,
  ) = _$UpdateFoodOrderInputCopyWithImpl<$Res, UpdateFoodOrderInput>;
  @useResult
  $Res call({String? sessionId, String? userId, String? menuItemIds});
}

/// @nodoc
class _$UpdateFoodOrderInputCopyWithImpl<
  $Res,
  $Val extends UpdateFoodOrderInput
>
    implements $UpdateFoodOrderInputCopyWith<$Res> {
  _$UpdateFoodOrderInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? menuItemIds = freezed,
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
            menuItemIds: freezed == menuItemIds
                ? _value.menuItemIds
                : menuItemIds // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateFoodOrderInputImplCopyWith<$Res>
    implements $UpdateFoodOrderInputCopyWith<$Res> {
  factory _$$UpdateFoodOrderInputImplCopyWith(
    _$UpdateFoodOrderInputImpl value,
    $Res Function(_$UpdateFoodOrderInputImpl) then,
  ) = __$$UpdateFoodOrderInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionId, String? userId, String? menuItemIds});
}

/// @nodoc
class __$$UpdateFoodOrderInputImplCopyWithImpl<$Res>
    extends _$UpdateFoodOrderInputCopyWithImpl<$Res, _$UpdateFoodOrderInputImpl>
    implements _$$UpdateFoodOrderInputImplCopyWith<$Res> {
  __$$UpdateFoodOrderInputImplCopyWithImpl(
    _$UpdateFoodOrderInputImpl _value,
    $Res Function(_$UpdateFoodOrderInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? menuItemIds = freezed,
  }) {
    return _then(
      _$UpdateFoodOrderInputImpl(
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        menuItemIds: freezed == menuItemIds
            ? _value.menuItemIds
            : menuItemIds // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFoodOrderInputImpl extends _UpdateFoodOrderInput {
  const _$UpdateFoodOrderInputImpl({
    this.sessionId,
    this.userId,
    this.menuItemIds,
  }) : super._();

  @override
  final String? sessionId;
  @override
  final String? userId;
  @override
  final String? menuItemIds;

  @override
  String toString() {
    return 'UpdateFoodOrderInput(sessionId: $sessionId, userId: $userId, menuItemIds: $menuItemIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFoodOrderInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.menuItemIds, menuItemIds) ||
                other.menuItemIds == menuItemIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId, userId, menuItemIds);

  /// Create a copy of UpdateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFoodOrderInputImplCopyWith<_$UpdateFoodOrderInputImpl>
  get copyWith =>
      __$$UpdateFoodOrderInputImplCopyWithImpl<_$UpdateFoodOrderInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateFoodOrderInput extends UpdateFoodOrderInput {
  const factory _UpdateFoodOrderInput({
    final String? sessionId,
    final String? userId,
    final String? menuItemIds,
  }) = _$UpdateFoodOrderInputImpl;
  const _UpdateFoodOrderInput._() : super._();

  @override
  String? get sessionId;
  @override
  String? get userId;
  @override
  String? get menuItemIds;

  /// Create a copy of UpdateFoodOrderInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFoodOrderInputImplCopyWith<_$UpdateFoodOrderInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodOrderWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of FoodOrderWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodOrderWhereUniqueInputCopyWith<FoodOrderWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodOrderWhereUniqueInputCopyWith<$Res> {
  factory $FoodOrderWhereUniqueInputCopyWith(
    FoodOrderWhereUniqueInput value,
    $Res Function(FoodOrderWhereUniqueInput) then,
  ) = _$FoodOrderWhereUniqueInputCopyWithImpl<$Res, FoodOrderWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$FoodOrderWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends FoodOrderWhereUniqueInput
>
    implements $FoodOrderWhereUniqueInputCopyWith<$Res> {
  _$FoodOrderWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodOrderWhereUniqueInput
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
abstract class _$$FoodOrderWhereUniqueInputImplCopyWith<$Res>
    implements $FoodOrderWhereUniqueInputCopyWith<$Res> {
  factory _$$FoodOrderWhereUniqueInputImplCopyWith(
    _$FoodOrderWhereUniqueInputImpl value,
    $Res Function(_$FoodOrderWhereUniqueInputImpl) then,
  ) = __$$FoodOrderWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$FoodOrderWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$FoodOrderWhereUniqueInputCopyWithImpl<
          $Res,
          _$FoodOrderWhereUniqueInputImpl
        >
    implements _$$FoodOrderWhereUniqueInputImplCopyWith<$Res> {
  __$$FoodOrderWhereUniqueInputImplCopyWithImpl(
    _$FoodOrderWhereUniqueInputImpl _value,
    $Res Function(_$FoodOrderWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodOrderWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$FoodOrderWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$FoodOrderWhereUniqueInputImpl extends _FoodOrderWhereUniqueInput {
  const _$FoodOrderWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'FoodOrderWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodOrderWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FoodOrderWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodOrderWhereUniqueInputImplCopyWith<_$FoodOrderWhereUniqueInputImpl>
  get copyWith =>
      __$$FoodOrderWhereUniqueInputImplCopyWithImpl<
        _$FoodOrderWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _FoodOrderWhereUniqueInput extends FoodOrderWhereUniqueInput {
  const factory _FoodOrderWhereUniqueInput({final String? id}) =
      _$FoodOrderWhereUniqueInputImpl;
  const _FoodOrderWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of FoodOrderWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodOrderWhereUniqueInputImplCopyWith<_$FoodOrderWhereUniqueInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodOrderWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get sessionId => throw _privateConstructorUsedError;
  GameSessionRelationFilter? get session => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get menuItemIds => throw _privateConstructorUsedError;
  List<FoodOrderWhereInput>? get AND => throw _privateConstructorUsedError;
  List<FoodOrderWhereInput>? get OR => throw _privateConstructorUsedError;
  FoodOrderWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodOrderWhereInputCopyWith<FoodOrderWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodOrderWhereInputCopyWith<$Res> {
  factory $FoodOrderWhereInputCopyWith(
    FoodOrderWhereInput value,
    $Res Function(FoodOrderWhereInput) then,
  ) = _$FoodOrderWhereInputCopyWithImpl<$Res, FoodOrderWhereInput>;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    StringFilter? menuItemIds,
    List<FoodOrderWhereInput>? AND,
    List<FoodOrderWhereInput>? OR,
    FoodOrderWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get sessionId;
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  $StringFilterCopyWith<$Res>? get userId;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get menuItemIds;
  $FoodOrderWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$FoodOrderWhereInputCopyWithImpl<$Res, $Val extends FoodOrderWhereInput>
    implements $FoodOrderWhereInputCopyWith<$Res> {
  _$FoodOrderWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? menuItemIds = freezed,
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
            menuItemIds: freezed == menuItemIds
                ? _value.menuItemIds
                : menuItemIds // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<FoodOrderWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<FoodOrderWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as FoodOrderWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of FoodOrderWhereInput
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

  /// Create a copy of FoodOrderWhereInput
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

  /// Create a copy of FoodOrderWhereInput
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

  /// Create a copy of FoodOrderWhereInput
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

  /// Create a copy of FoodOrderWhereInput
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

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get menuItemIds {
    if (_value.menuItemIds == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.menuItemIds!, (value) {
      return _then(_value.copyWith(menuItemIds: value) as $Val);
    });
  }

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $FoodOrderWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodOrderWhereInputImplCopyWith<$Res>
    implements $FoodOrderWhereInputCopyWith<$Res> {
  factory _$$FoodOrderWhereInputImplCopyWith(
    _$FoodOrderWhereInputImpl value,
    $Res Function(_$FoodOrderWhereInputImpl) then,
  ) = __$$FoodOrderWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    StringFilter? menuItemIds,
    List<FoodOrderWhereInput>? AND,
    List<FoodOrderWhereInput>? OR,
    FoodOrderWhereInput? NOT,
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
  $StringFilterCopyWith<$Res>? get menuItemIds;
  @override
  $FoodOrderWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$FoodOrderWhereInputImplCopyWithImpl<$Res>
    extends _$FoodOrderWhereInputCopyWithImpl<$Res, _$FoodOrderWhereInputImpl>
    implements _$$FoodOrderWhereInputImplCopyWith<$Res> {
  __$$FoodOrderWhereInputImplCopyWithImpl(
    _$FoodOrderWhereInputImpl _value,
    $Res Function(_$FoodOrderWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? menuItemIds = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$FoodOrderWhereInputImpl(
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
        menuItemIds: freezed == menuItemIds
            ? _value.menuItemIds
            : menuItemIds // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<FoodOrderWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<FoodOrderWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as FoodOrderWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$FoodOrderWhereInputImpl extends _FoodOrderWhereInput {
  const _$FoodOrderWhereInputImpl({
    this.id,
    this.sessionId,
    this.session,
    this.userId,
    this.user,
    this.menuItemIds,
    final List<FoodOrderWhereInput>? AND,
    final List<FoodOrderWhereInput>? OR,
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
  final StringFilter? menuItemIds;
  final List<FoodOrderWhereInput>? _AND;
  @override
  List<FoodOrderWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FoodOrderWhereInput>? _OR;
  @override
  List<FoodOrderWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FoodOrderWhereInput? NOT;

  @override
  String toString() {
    return 'FoodOrderWhereInput(id: $id, sessionId: $sessionId, session: $session, userId: $userId, user: $user, menuItemIds: $menuItemIds, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodOrderWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.menuItemIds, menuItemIds) ||
                other.menuItemIds == menuItemIds) &&
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
    menuItemIds,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodOrderWhereInputImplCopyWith<_$FoodOrderWhereInputImpl> get copyWith =>
      __$$FoodOrderWhereInputImplCopyWithImpl<_$FoodOrderWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _FoodOrderWhereInput extends FoodOrderWhereInput {
  const factory _FoodOrderWhereInput({
    final StringFilter? id,
    final StringFilter? sessionId,
    final GameSessionRelationFilter? session,
    final StringFilter? userId,
    final UserRelationFilter? user,
    final StringFilter? menuItemIds,
    final List<FoodOrderWhereInput>? AND,
    final List<FoodOrderWhereInput>? OR,
    final FoodOrderWhereInput? NOT,
  }) = _$FoodOrderWhereInputImpl;
  const _FoodOrderWhereInput._() : super._();

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
  StringFilter? get menuItemIds;
  @override
  List<FoodOrderWhereInput>? get AND;
  @override
  List<FoodOrderWhereInput>? get OR;
  @override
  FoodOrderWhereInput? get NOT;

  /// Create a copy of FoodOrderWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodOrderWhereInputImplCopyWith<_$FoodOrderWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodOrderListRelationFilter {
  FoodOrderWhereInput? get some => throw _privateConstructorUsedError;
  FoodOrderWhereInput? get every => throw _privateConstructorUsedError;
  FoodOrderWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodOrderListRelationFilterCopyWith<FoodOrderListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodOrderListRelationFilterCopyWith<$Res> {
  factory $FoodOrderListRelationFilterCopyWith(
    FoodOrderListRelationFilter value,
    $Res Function(FoodOrderListRelationFilter) then,
  ) =
      _$FoodOrderListRelationFilterCopyWithImpl<
        $Res,
        FoodOrderListRelationFilter
      >;
  @useResult
  $Res call({
    FoodOrderWhereInput? some,
    FoodOrderWhereInput? every,
    FoodOrderWhereInput? none,
  });

  $FoodOrderWhereInputCopyWith<$Res>? get some;
  $FoodOrderWhereInputCopyWith<$Res>? get every;
  $FoodOrderWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$FoodOrderListRelationFilterCopyWithImpl<
  $Res,
  $Val extends FoodOrderListRelationFilter
>
    implements $FoodOrderListRelationFilterCopyWith<$Res> {
  _$FoodOrderListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodOrderListRelationFilter
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
                      as FoodOrderWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as FoodOrderWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as FoodOrderWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $FoodOrderWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $FoodOrderWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $FoodOrderWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodOrderListRelationFilterImplCopyWith<$Res>
    implements $FoodOrderListRelationFilterCopyWith<$Res> {
  factory _$$FoodOrderListRelationFilterImplCopyWith(
    _$FoodOrderListRelationFilterImpl value,
    $Res Function(_$FoodOrderListRelationFilterImpl) then,
  ) = __$$FoodOrderListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FoodOrderWhereInput? some,
    FoodOrderWhereInput? every,
    FoodOrderWhereInput? none,
  });

  @override
  $FoodOrderWhereInputCopyWith<$Res>? get some;
  @override
  $FoodOrderWhereInputCopyWith<$Res>? get every;
  @override
  $FoodOrderWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$FoodOrderListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$FoodOrderListRelationFilterCopyWithImpl<
          $Res,
          _$FoodOrderListRelationFilterImpl
        >
    implements _$$FoodOrderListRelationFilterImplCopyWith<$Res> {
  __$$FoodOrderListRelationFilterImplCopyWithImpl(
    _$FoodOrderListRelationFilterImpl _value,
    $Res Function(_$FoodOrderListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$FoodOrderListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as FoodOrderWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as FoodOrderWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as FoodOrderWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$FoodOrderListRelationFilterImpl extends _FoodOrderListRelationFilter {
  const _$FoodOrderListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final FoodOrderWhereInput? some;
  @override
  final FoodOrderWhereInput? every;
  @override
  final FoodOrderWhereInput? none;

  @override
  String toString() {
    return 'FoodOrderListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodOrderListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodOrderListRelationFilterImplCopyWith<_$FoodOrderListRelationFilterImpl>
  get copyWith =>
      __$$FoodOrderListRelationFilterImplCopyWithImpl<
        _$FoodOrderListRelationFilterImpl
      >(this, _$identity);
}

abstract class _FoodOrderListRelationFilter
    extends FoodOrderListRelationFilter {
  const factory _FoodOrderListRelationFilter({
    final FoodOrderWhereInput? some,
    final FoodOrderWhereInput? every,
    final FoodOrderWhereInput? none,
  }) = _$FoodOrderListRelationFilterImpl;
  const _FoodOrderListRelationFilter._() : super._();

  @override
  FoodOrderWhereInput? get some;
  @override
  FoodOrderWhereInput? get every;
  @override
  FoodOrderWhereInput? get none;

  /// Create a copy of FoodOrderListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodOrderListRelationFilterImplCopyWith<_$FoodOrderListRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodOrderRelationFilter {
  @JsonKey(name: 'is')
  FoodOrderWhereInput? get is_ => throw _privateConstructorUsedError;
  FoodOrderWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodOrderRelationFilterCopyWith<FoodOrderRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodOrderRelationFilterCopyWith<$Res> {
  factory $FoodOrderRelationFilterCopyWith(
    FoodOrderRelationFilter value,
    $Res Function(FoodOrderRelationFilter) then,
  ) = _$FoodOrderRelationFilterCopyWithImpl<$Res, FoodOrderRelationFilter>;
  @useResult
  $Res call({
    @JsonKey(name: 'is') FoodOrderWhereInput? is_,
    FoodOrderWhereInput? isNot,
  });

  $FoodOrderWhereInputCopyWith<$Res>? get is_;
  $FoodOrderWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$FoodOrderRelationFilterCopyWithImpl<
  $Res,
  $Val extends FoodOrderRelationFilter
>
    implements $FoodOrderRelationFilterCopyWith<$Res> {
  _$FoodOrderRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as FoodOrderWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as FoodOrderWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $FoodOrderWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $FoodOrderWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodOrderRelationFilterImplCopyWith<$Res>
    implements $FoodOrderRelationFilterCopyWith<$Res> {
  factory _$$FoodOrderRelationFilterImplCopyWith(
    _$FoodOrderRelationFilterImpl value,
    $Res Function(_$FoodOrderRelationFilterImpl) then,
  ) = __$$FoodOrderRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') FoodOrderWhereInput? is_,
    FoodOrderWhereInput? isNot,
  });

  @override
  $FoodOrderWhereInputCopyWith<$Res>? get is_;
  @override
  $FoodOrderWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$FoodOrderRelationFilterImplCopyWithImpl<$Res>
    extends
        _$FoodOrderRelationFilterCopyWithImpl<
          $Res,
          _$FoodOrderRelationFilterImpl
        >
    implements _$$FoodOrderRelationFilterImplCopyWith<$Res> {
  __$$FoodOrderRelationFilterImplCopyWithImpl(
    _$FoodOrderRelationFilterImpl _value,
    $Res Function(_$FoodOrderRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$FoodOrderRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as FoodOrderWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as FoodOrderWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$FoodOrderRelationFilterImpl extends _FoodOrderRelationFilter {
  const _$FoodOrderRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final FoodOrderWhereInput? is_;
  @override
  final FoodOrderWhereInput? isNot;

  @override
  String toString() {
    return 'FoodOrderRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodOrderRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodOrderRelationFilterImplCopyWith<_$FoodOrderRelationFilterImpl>
  get copyWith =>
      __$$FoodOrderRelationFilterImplCopyWithImpl<
        _$FoodOrderRelationFilterImpl
      >(this, _$identity);
}

abstract class _FoodOrderRelationFilter extends FoodOrderRelationFilter {
  const factory _FoodOrderRelationFilter({
    @JsonKey(name: 'is') final FoodOrderWhereInput? is_,
    final FoodOrderWhereInput? isNot,
  }) = _$FoodOrderRelationFilterImpl;
  const _FoodOrderRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  FoodOrderWhereInput? get is_;
  @override
  FoodOrderWhereInput? get isNot;

  /// Create a copy of FoodOrderRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodOrderRelationFilterImplCopyWith<_$FoodOrderRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodOrderOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get sessionId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get menuItemIds => throw _privateConstructorUsedError;

  /// Create a copy of FoodOrderOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodOrderOrderByInputCopyWith<FoodOrderOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodOrderOrderByInputCopyWith<$Res> {
  factory $FoodOrderOrderByInputCopyWith(
    FoodOrderOrderByInput value,
    $Res Function(FoodOrderOrderByInput) then,
  ) = _$FoodOrderOrderByInputCopyWithImpl<$Res, FoodOrderOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
    SortOrder? menuItemIds,
  });
}

/// @nodoc
class _$FoodOrderOrderByInputCopyWithImpl<
  $Res,
  $Val extends FoodOrderOrderByInput
>
    implements $FoodOrderOrderByInputCopyWith<$Res> {
  _$FoodOrderOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodOrderOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? menuItemIds = freezed,
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
            menuItemIds: freezed == menuItemIds
                ? _value.menuItemIds
                : menuItemIds // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FoodOrderOrderByInputImplCopyWith<$Res>
    implements $FoodOrderOrderByInputCopyWith<$Res> {
  factory _$$FoodOrderOrderByInputImplCopyWith(
    _$FoodOrderOrderByInputImpl value,
    $Res Function(_$FoodOrderOrderByInputImpl) then,
  ) = __$$FoodOrderOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
    SortOrder? menuItemIds,
  });
}

/// @nodoc
class __$$FoodOrderOrderByInputImplCopyWithImpl<$Res>
    extends
        _$FoodOrderOrderByInputCopyWithImpl<$Res, _$FoodOrderOrderByInputImpl>
    implements _$$FoodOrderOrderByInputImplCopyWith<$Res> {
  __$$FoodOrderOrderByInputImplCopyWithImpl(
    _$FoodOrderOrderByInputImpl _value,
    $Res Function(_$FoodOrderOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodOrderOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? menuItemIds = freezed,
  }) {
    return _then(
      _$FoodOrderOrderByInputImpl(
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
        menuItemIds: freezed == menuItemIds
            ? _value.menuItemIds
            : menuItemIds // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$FoodOrderOrderByInputImpl extends _FoodOrderOrderByInput {
  const _$FoodOrderOrderByInputImpl({
    this.id,
    this.sessionId,
    this.userId,
    this.menuItemIds,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? sessionId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? menuItemIds;

  @override
  String toString() {
    return 'FoodOrderOrderByInput(id: $id, sessionId: $sessionId, userId: $userId, menuItemIds: $menuItemIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodOrderOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.menuItemIds, menuItemIds) ||
                other.menuItemIds == menuItemIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, userId, menuItemIds);

  /// Create a copy of FoodOrderOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodOrderOrderByInputImplCopyWith<_$FoodOrderOrderByInputImpl>
  get copyWith =>
      __$$FoodOrderOrderByInputImplCopyWithImpl<_$FoodOrderOrderByInputImpl>(
        this,
        _$identity,
      );
}

abstract class _FoodOrderOrderByInput extends FoodOrderOrderByInput {
  const factory _FoodOrderOrderByInput({
    final SortOrder? id,
    final SortOrder? sessionId,
    final SortOrder? userId,
    final SortOrder? menuItemIds,
  }) = _$FoodOrderOrderByInputImpl;
  const _FoodOrderOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get sessionId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get menuItemIds;

  /// Create a copy of FoodOrderOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodOrderOrderByInputImplCopyWith<_$FoodOrderOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
