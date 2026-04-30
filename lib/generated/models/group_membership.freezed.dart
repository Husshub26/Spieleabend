// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GroupMembership {
  String get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Group? get group => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  DateTime get joinedAt => throw _privateConstructorUsedError;
  int get rotationOrder => throw _privateConstructorUsedError;
  bool get rotationActive => throw _privateConstructorUsedError;

  /// Create a copy of GroupMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMembershipCopyWith<GroupMembership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembershipCopyWith<$Res> {
  factory $GroupMembershipCopyWith(
    GroupMembership value,
    $Res Function(GroupMembership) then,
  ) = _$GroupMembershipCopyWithImpl<$Res, GroupMembership>;
  @useResult
  $Res call({
    String id,
    String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) Group? group,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    DateTime joinedAt,
    int rotationOrder,
    bool rotationActive,
  });

  $GroupCopyWith<$Res>? get group;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GroupMembershipCopyWithImpl<$Res, $Val extends GroupMembership>
    implements $GroupMembershipCopyWith<$Res> {
  _$GroupMembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMembership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? group = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? joinedAt = null,
    Object? rotationOrder = null,
    Object? rotationActive = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            groupId: null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String,
            group: freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as Group?,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
            joinedAt: null == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            rotationOrder: null == rotationOrder
                ? _value.rotationOrder
                : rotationOrder // ignore: cast_nullable_to_non_nullable
                      as int,
            rotationActive: null == rotationActive
                ? _value.rotationActive
                : rotationActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupMembership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  /// Create a copy of GroupMembership
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
abstract class _$$GroupMembershipImplCopyWith<$Res>
    implements $GroupMembershipCopyWith<$Res> {
  factory _$$GroupMembershipImplCopyWith(
    _$GroupMembershipImpl value,
    $Res Function(_$GroupMembershipImpl) then,
  ) = __$$GroupMembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) Group? group,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    DateTime joinedAt,
    int rotationOrder,
    bool rotationActive,
  });

  @override
  $GroupCopyWith<$Res>? get group;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$GroupMembershipImplCopyWithImpl<$Res>
    extends _$GroupMembershipCopyWithImpl<$Res, _$GroupMembershipImpl>
    implements _$$GroupMembershipImplCopyWith<$Res> {
  __$$GroupMembershipImplCopyWithImpl(
    _$GroupMembershipImpl _value,
    $Res Function(_$GroupMembershipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupMembership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? group = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? joinedAt = null,
    Object? rotationOrder = null,
    Object? rotationActive = null,
  }) {
    return _then(
      _$GroupMembershipImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        groupId: null == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String,
        group: freezed == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as Group?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        joinedAt: null == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        rotationOrder: null == rotationOrder
            ? _value.rotationOrder
            : rotationOrder // ignore: cast_nullable_to_non_nullable
                  as int,
        rotationActive: null == rotationActive
            ? _value.rotationActive
            : rotationActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$GroupMembershipImpl extends _GroupMembership {
  const _$GroupMembershipImpl({
    required this.id,
    required this.groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.group,
    required this.userId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.user,
    required this.joinedAt,
    this.rotationOrder = 0,
    this.rotationActive = true,
  }) : super._();

  @override
  final String id;
  @override
  final String groupId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Group? group;
  @override
  final String userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final DateTime joinedAt;
  @override
  @JsonKey()
  final int rotationOrder;
  @override
  @JsonKey()
  final bool rotationActive;

  @override
  String toString() {
    return 'GroupMembership(id: $id, groupId: $groupId, group: $group, userId: $userId, user: $user, joinedAt: $joinedAt, rotationOrder: $rotationOrder, rotationActive: $rotationActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMembershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.rotationOrder, rotationOrder) ||
                other.rotationOrder == rotationOrder) &&
            (identical(other.rotationActive, rotationActive) ||
                other.rotationActive == rotationActive));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    groupId,
    group,
    userId,
    user,
    joinedAt,
    rotationOrder,
    rotationActive,
  );

  /// Create a copy of GroupMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMembershipImplCopyWith<_$GroupMembershipImpl> get copyWith =>
      __$$GroupMembershipImplCopyWithImpl<_$GroupMembershipImpl>(
        this,
        _$identity,
      );
}

abstract class _GroupMembership extends GroupMembership {
  const factory _GroupMembership({
    required final String id,
    required final String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) final Group? group,
    required final String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
    required final DateTime joinedAt,
    final int rotationOrder,
    final bool rotationActive,
  }) = _$GroupMembershipImpl;
  const _GroupMembership._() : super._();

  @override
  String get id;
  @override
  String get groupId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Group? get group;
  @override
  String get userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  DateTime get joinedAt;
  @override
  int get rotationOrder;
  @override
  bool get rotationActive;

  /// Create a copy of GroupMembership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMembershipImplCopyWith<_$GroupMembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGroupMembershipInput {
  String get groupId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int? get rotationOrder => throw _privateConstructorUsedError;
  bool? get rotationActive => throw _privateConstructorUsedError;

  /// Create a copy of CreateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGroupMembershipInputCopyWith<CreateGroupMembershipInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupMembershipInputCopyWith<$Res> {
  factory $CreateGroupMembershipInputCopyWith(
    CreateGroupMembershipInput value,
    $Res Function(CreateGroupMembershipInput) then,
  ) =
      _$CreateGroupMembershipInputCopyWithImpl<
        $Res,
        CreateGroupMembershipInput
      >;
  @useResult
  $Res call({
    String groupId,
    String userId,
    int? rotationOrder,
    bool? rotationActive,
  });
}

/// @nodoc
class _$CreateGroupMembershipInputCopyWithImpl<
  $Res,
  $Val extends CreateGroupMembershipInput
>
    implements $CreateGroupMembershipInputCopyWith<$Res> {
  _$CreateGroupMembershipInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
  }) {
    return _then(
      _value.copyWith(
            groupId: null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            rotationOrder: freezed == rotationOrder
                ? _value.rotationOrder
                : rotationOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            rotationActive: freezed == rotationActive
                ? _value.rotationActive
                : rotationActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGroupMembershipInputImplCopyWith<$Res>
    implements $CreateGroupMembershipInputCopyWith<$Res> {
  factory _$$CreateGroupMembershipInputImplCopyWith(
    _$CreateGroupMembershipInputImpl value,
    $Res Function(_$CreateGroupMembershipInputImpl) then,
  ) = __$$CreateGroupMembershipInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String groupId,
    String userId,
    int? rotationOrder,
    bool? rotationActive,
  });
}

/// @nodoc
class __$$CreateGroupMembershipInputImplCopyWithImpl<$Res>
    extends
        _$CreateGroupMembershipInputCopyWithImpl<
          $Res,
          _$CreateGroupMembershipInputImpl
        >
    implements _$$CreateGroupMembershipInputImplCopyWith<$Res> {
  __$$CreateGroupMembershipInputImplCopyWithImpl(
    _$CreateGroupMembershipInputImpl _value,
    $Res Function(_$CreateGroupMembershipInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
  }) {
    return _then(
      _$CreateGroupMembershipInputImpl(
        groupId: null == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        rotationOrder: freezed == rotationOrder
            ? _value.rotationOrder
            : rotationOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        rotationActive: freezed == rotationActive
            ? _value.rotationActive
            : rotationActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$CreateGroupMembershipInputImpl extends _CreateGroupMembershipInput {
  const _$CreateGroupMembershipInputImpl({
    required this.groupId,
    required this.userId,
    this.rotationOrder = 0,
    this.rotationActive = true,
  }) : super._();

  @override
  final String groupId;
  @override
  final String userId;
  @override
  @JsonKey()
  final int? rotationOrder;
  @override
  @JsonKey()
  final bool? rotationActive;

  @override
  String toString() {
    return 'CreateGroupMembershipInput(groupId: $groupId, userId: $userId, rotationOrder: $rotationOrder, rotationActive: $rotationActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupMembershipInputImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rotationOrder, rotationOrder) ||
                other.rotationOrder == rotationOrder) &&
            (identical(other.rotationActive, rotationActive) ||
                other.rotationActive == rotationActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, userId, rotationOrder, rotationActive);

  /// Create a copy of CreateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupMembershipInputImplCopyWith<_$CreateGroupMembershipInputImpl>
  get copyWith =>
      __$$CreateGroupMembershipInputImplCopyWithImpl<
        _$CreateGroupMembershipInputImpl
      >(this, _$identity);
}

abstract class _CreateGroupMembershipInput extends CreateGroupMembershipInput {
  const factory _CreateGroupMembershipInput({
    required final String groupId,
    required final String userId,
    final int? rotationOrder,
    final bool? rotationActive,
  }) = _$CreateGroupMembershipInputImpl;
  const _CreateGroupMembershipInput._() : super._();

  @override
  String get groupId;
  @override
  String get userId;
  @override
  int? get rotationOrder;
  @override
  bool? get rotationActive;

  /// Create a copy of CreateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupMembershipInputImplCopyWith<_$CreateGroupMembershipInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGroupMembershipInput {
  String? get groupId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get rotationOrder => throw _privateConstructorUsedError;
  bool? get rotationActive => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGroupMembershipInputCopyWith<UpdateGroupMembershipInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupMembershipInputCopyWith<$Res> {
  factory $UpdateGroupMembershipInputCopyWith(
    UpdateGroupMembershipInput value,
    $Res Function(UpdateGroupMembershipInput) then,
  ) =
      _$UpdateGroupMembershipInputCopyWithImpl<
        $Res,
        UpdateGroupMembershipInput
      >;
  @useResult
  $Res call({
    String? groupId,
    String? userId,
    int? rotationOrder,
    bool? rotationActive,
  });
}

/// @nodoc
class _$UpdateGroupMembershipInputCopyWithImpl<
  $Res,
  $Val extends UpdateGroupMembershipInput
>
    implements $UpdateGroupMembershipInputCopyWith<$Res> {
  _$UpdateGroupMembershipInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
  }) {
    return _then(
      _value.copyWith(
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            rotationOrder: freezed == rotationOrder
                ? _value.rotationOrder
                : rotationOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            rotationActive: freezed == rotationActive
                ? _value.rotationActive
                : rotationActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateGroupMembershipInputImplCopyWith<$Res>
    implements $UpdateGroupMembershipInputCopyWith<$Res> {
  factory _$$UpdateGroupMembershipInputImplCopyWith(
    _$UpdateGroupMembershipInputImpl value,
    $Res Function(_$UpdateGroupMembershipInputImpl) then,
  ) = __$$UpdateGroupMembershipInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? groupId,
    String? userId,
    int? rotationOrder,
    bool? rotationActive,
  });
}

/// @nodoc
class __$$UpdateGroupMembershipInputImplCopyWithImpl<$Res>
    extends
        _$UpdateGroupMembershipInputCopyWithImpl<
          $Res,
          _$UpdateGroupMembershipInputImpl
        >
    implements _$$UpdateGroupMembershipInputImplCopyWith<$Res> {
  __$$UpdateGroupMembershipInputImplCopyWithImpl(
    _$UpdateGroupMembershipInputImpl _value,
    $Res Function(_$UpdateGroupMembershipInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
  }) {
    return _then(
      _$UpdateGroupMembershipInputImpl(
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        rotationOrder: freezed == rotationOrder
            ? _value.rotationOrder
            : rotationOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        rotationActive: freezed == rotationActive
            ? _value.rotationActive
            : rotationActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateGroupMembershipInputImpl extends _UpdateGroupMembershipInput {
  const _$UpdateGroupMembershipInputImpl({
    this.groupId,
    this.userId,
    this.rotationOrder,
    this.rotationActive,
  }) : super._();

  @override
  final String? groupId;
  @override
  final String? userId;
  @override
  final int? rotationOrder;
  @override
  final bool? rotationActive;

  @override
  String toString() {
    return 'UpdateGroupMembershipInput(groupId: $groupId, userId: $userId, rotationOrder: $rotationOrder, rotationActive: $rotationActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupMembershipInputImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rotationOrder, rotationOrder) ||
                other.rotationOrder == rotationOrder) &&
            (identical(other.rotationActive, rotationActive) ||
                other.rotationActive == rotationActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, userId, rotationOrder, rotationActive);

  /// Create a copy of UpdateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupMembershipInputImplCopyWith<_$UpdateGroupMembershipInputImpl>
  get copyWith =>
      __$$UpdateGroupMembershipInputImplCopyWithImpl<
        _$UpdateGroupMembershipInputImpl
      >(this, _$identity);
}

abstract class _UpdateGroupMembershipInput extends UpdateGroupMembershipInput {
  const factory _UpdateGroupMembershipInput({
    final String? groupId,
    final String? userId,
    final int? rotationOrder,
    final bool? rotationActive,
  }) = _$UpdateGroupMembershipInputImpl;
  const _UpdateGroupMembershipInput._() : super._();

  @override
  String? get groupId;
  @override
  String? get userId;
  @override
  int? get rotationOrder;
  @override
  bool? get rotationActive;

  /// Create a copy of UpdateGroupMembershipInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroupMembershipInputImplCopyWith<_$UpdateGroupMembershipInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupMembershipWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of GroupMembershipWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMembershipWhereUniqueInputCopyWith<GroupMembershipWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembershipWhereUniqueInputCopyWith<$Res> {
  factory $GroupMembershipWhereUniqueInputCopyWith(
    GroupMembershipWhereUniqueInput value,
    $Res Function(GroupMembershipWhereUniqueInput) then,
  ) =
      _$GroupMembershipWhereUniqueInputCopyWithImpl<
        $Res,
        GroupMembershipWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GroupMembershipWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends GroupMembershipWhereUniqueInput
>
    implements $GroupMembershipWhereUniqueInputCopyWith<$Res> {
  _$GroupMembershipWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMembershipWhereUniqueInput
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
abstract class _$$GroupMembershipWhereUniqueInputImplCopyWith<$Res>
    implements $GroupMembershipWhereUniqueInputCopyWith<$Res> {
  factory _$$GroupMembershipWhereUniqueInputImplCopyWith(
    _$GroupMembershipWhereUniqueInputImpl value,
    $Res Function(_$GroupMembershipWhereUniqueInputImpl) then,
  ) = __$$GroupMembershipWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GroupMembershipWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$GroupMembershipWhereUniqueInputCopyWithImpl<
          $Res,
          _$GroupMembershipWhereUniqueInputImpl
        >
    implements _$$GroupMembershipWhereUniqueInputImplCopyWith<$Res> {
  __$$GroupMembershipWhereUniqueInputImplCopyWithImpl(
    _$GroupMembershipWhereUniqueInputImpl _value,
    $Res Function(_$GroupMembershipWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupMembershipWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$GroupMembershipWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GroupMembershipWhereUniqueInputImpl
    extends _GroupMembershipWhereUniqueInput {
  const _$GroupMembershipWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'GroupMembershipWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMembershipWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GroupMembershipWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMembershipWhereUniqueInputImplCopyWith<
    _$GroupMembershipWhereUniqueInputImpl
  >
  get copyWith =>
      __$$GroupMembershipWhereUniqueInputImplCopyWithImpl<
        _$GroupMembershipWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _GroupMembershipWhereUniqueInput
    extends GroupMembershipWhereUniqueInput {
  const factory _GroupMembershipWhereUniqueInput({final String? id}) =
      _$GroupMembershipWhereUniqueInputImpl;
  const _GroupMembershipWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of GroupMembershipWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMembershipWhereUniqueInputImplCopyWith<
    _$GroupMembershipWhereUniqueInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupMembershipWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get groupId => throw _privateConstructorUsedError;
  GroupRelationFilter? get group => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  DateTimeFilter? get joinedAt => throw _privateConstructorUsedError;
  IntFilter? get rotationOrder => throw _privateConstructorUsedError;
  BooleanFilter? get rotationActive => throw _privateConstructorUsedError;
  List<GroupMembershipWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<GroupMembershipWhereInput>? get OR => throw _privateConstructorUsedError;
  GroupMembershipWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMembershipWhereInputCopyWith<GroupMembershipWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembershipWhereInputCopyWith<$Res> {
  factory $GroupMembershipWhereInputCopyWith(
    GroupMembershipWhereInput value,
    $Res Function(GroupMembershipWhereInput) then,
  ) = _$GroupMembershipWhereInputCopyWithImpl<$Res, GroupMembershipWhereInput>;
  @useResult
  $Res call({
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
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get groupId;
  $GroupRelationFilterCopyWith<$Res>? get group;
  $StringFilterCopyWith<$Res>? get userId;
  $UserRelationFilterCopyWith<$Res>? get user;
  $DateTimeFilterCopyWith<$Res>? get joinedAt;
  $IntFilterCopyWith<$Res>? get rotationOrder;
  $BooleanFilterCopyWith<$Res>? get rotationActive;
  $GroupMembershipWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$GroupMembershipWhereInputCopyWithImpl<
  $Res,
  $Val extends GroupMembershipWhereInput
>
    implements $GroupMembershipWhereInputCopyWith<$Res> {
  _$GroupMembershipWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? group = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? joinedAt = freezed,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
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
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            group: freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as GroupRelationFilter?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            joinedAt: freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as DateTimeFilter?,
            rotationOrder: freezed == rotationOrder
                ? _value.rotationOrder
                : rotationOrder // ignore: cast_nullable_to_non_nullable
                      as IntFilter?,
            rotationActive: freezed == rotationActive
                ? _value.rotationActive
                : rotationActive // ignore: cast_nullable_to_non_nullable
                      as BooleanFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<GroupMembershipWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<GroupMembershipWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupMembershipWhereInput
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

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get groupId {
    if (_value.groupId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.groupId!, (value) {
      return _then(_value.copyWith(groupId: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupRelationFilterCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupRelationFilterCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipWhereInput
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

  /// Create a copy of GroupMembershipWhereInput
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

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get joinedAt {
    if (_value.joinedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.joinedAt!, (value) {
      return _then(_value.copyWith(joinedAt: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get rotationOrder {
    if (_value.rotationOrder == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.rotationOrder!, (value) {
      return _then(_value.copyWith(rotationOrder: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get rotationActive {
    if (_value.rotationActive == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.rotationActive!, (value) {
      return _then(_value.copyWith(rotationActive: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $GroupMembershipWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupMembershipWhereInputImplCopyWith<$Res>
    implements $GroupMembershipWhereInputCopyWith<$Res> {
  factory _$$GroupMembershipWhereInputImplCopyWith(
    _$GroupMembershipWhereInputImpl value,
    $Res Function(_$GroupMembershipWhereInputImpl) then,
  ) = __$$GroupMembershipWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get groupId;
  @override
  $GroupRelationFilterCopyWith<$Res>? get group;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $DateTimeFilterCopyWith<$Res>? get joinedAt;
  @override
  $IntFilterCopyWith<$Res>? get rotationOrder;
  @override
  $BooleanFilterCopyWith<$Res>? get rotationActive;
  @override
  $GroupMembershipWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$GroupMembershipWhereInputImplCopyWithImpl<$Res>
    extends
        _$GroupMembershipWhereInputCopyWithImpl<
          $Res,
          _$GroupMembershipWhereInputImpl
        >
    implements _$$GroupMembershipWhereInputImplCopyWith<$Res> {
  __$$GroupMembershipWhereInputImplCopyWithImpl(
    _$GroupMembershipWhereInputImpl _value,
    $Res Function(_$GroupMembershipWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? group = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? joinedAt = freezed,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$GroupMembershipWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        group: freezed == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as GroupRelationFilter?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        joinedAt: freezed == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as DateTimeFilter?,
        rotationOrder: freezed == rotationOrder
            ? _value.rotationOrder
            : rotationOrder // ignore: cast_nullable_to_non_nullable
                  as IntFilter?,
        rotationActive: freezed == rotationActive
            ? _value.rotationActive
            : rotationActive // ignore: cast_nullable_to_non_nullable
                  as BooleanFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<GroupMembershipWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<GroupMembershipWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GroupMembershipWhereInputImpl extends _GroupMembershipWhereInput {
  const _$GroupMembershipWhereInputImpl({
    this.id,
    this.groupId,
    this.group,
    this.userId,
    this.user,
    this.joinedAt,
    this.rotationOrder,
    this.rotationActive,
    final List<GroupMembershipWhereInput>? AND,
    final List<GroupMembershipWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? groupId;
  @override
  final GroupRelationFilter? group;
  @override
  final StringFilter? userId;
  @override
  final UserRelationFilter? user;
  @override
  final DateTimeFilter? joinedAt;
  @override
  final IntFilter? rotationOrder;
  @override
  final BooleanFilter? rotationActive;
  final List<GroupMembershipWhereInput>? _AND;
  @override
  List<GroupMembershipWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GroupMembershipWhereInput>? _OR;
  @override
  List<GroupMembershipWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GroupMembershipWhereInput? NOT;

  @override
  String toString() {
    return 'GroupMembershipWhereInput(id: $id, groupId: $groupId, group: $group, userId: $userId, user: $user, joinedAt: $joinedAt, rotationOrder: $rotationOrder, rotationActive: $rotationActive, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMembershipWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.rotationOrder, rotationOrder) ||
                other.rotationOrder == rotationOrder) &&
            (identical(other.rotationActive, rotationActive) ||
                other.rotationActive == rotationActive) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    groupId,
    group,
    userId,
    user,
    joinedAt,
    rotationOrder,
    rotationActive,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMembershipWhereInputImplCopyWith<_$GroupMembershipWhereInputImpl>
  get copyWith =>
      __$$GroupMembershipWhereInputImplCopyWithImpl<
        _$GroupMembershipWhereInputImpl
      >(this, _$identity);
}

abstract class _GroupMembershipWhereInput extends GroupMembershipWhereInput {
  const factory _GroupMembershipWhereInput({
    final StringFilter? id,
    final StringFilter? groupId,
    final GroupRelationFilter? group,
    final StringFilter? userId,
    final UserRelationFilter? user,
    final DateTimeFilter? joinedAt,
    final IntFilter? rotationOrder,
    final BooleanFilter? rotationActive,
    final List<GroupMembershipWhereInput>? AND,
    final List<GroupMembershipWhereInput>? OR,
    final GroupMembershipWhereInput? NOT,
  }) = _$GroupMembershipWhereInputImpl;
  const _GroupMembershipWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get groupId;
  @override
  GroupRelationFilter? get group;
  @override
  StringFilter? get userId;
  @override
  UserRelationFilter? get user;
  @override
  DateTimeFilter? get joinedAt;
  @override
  IntFilter? get rotationOrder;
  @override
  BooleanFilter? get rotationActive;
  @override
  List<GroupMembershipWhereInput>? get AND;
  @override
  List<GroupMembershipWhereInput>? get OR;
  @override
  GroupMembershipWhereInput? get NOT;

  /// Create a copy of GroupMembershipWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMembershipWhereInputImplCopyWith<_$GroupMembershipWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupMembershipListRelationFilter {
  GroupMembershipWhereInput? get some => throw _privateConstructorUsedError;
  GroupMembershipWhereInput? get every => throw _privateConstructorUsedError;
  GroupMembershipWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMembershipListRelationFilterCopyWith<GroupMembershipListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembershipListRelationFilterCopyWith<$Res> {
  factory $GroupMembershipListRelationFilterCopyWith(
    GroupMembershipListRelationFilter value,
    $Res Function(GroupMembershipListRelationFilter) then,
  ) =
      _$GroupMembershipListRelationFilterCopyWithImpl<
        $Res,
        GroupMembershipListRelationFilter
      >;
  @useResult
  $Res call({
    GroupMembershipWhereInput? some,
    GroupMembershipWhereInput? every,
    GroupMembershipWhereInput? none,
  });

  $GroupMembershipWhereInputCopyWith<$Res>? get some;
  $GroupMembershipWhereInputCopyWith<$Res>? get every;
  $GroupMembershipWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$GroupMembershipListRelationFilterCopyWithImpl<
  $Res,
  $Val extends GroupMembershipListRelationFilter
>
    implements $GroupMembershipListRelationFilterCopyWith<$Res> {
  _$GroupMembershipListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMembershipListRelationFilter
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
                      as GroupMembershipWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $GroupMembershipWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $GroupMembershipWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $GroupMembershipWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupMembershipListRelationFilterImplCopyWith<$Res>
    implements $GroupMembershipListRelationFilterCopyWith<$Res> {
  factory _$$GroupMembershipListRelationFilterImplCopyWith(
    _$GroupMembershipListRelationFilterImpl value,
    $Res Function(_$GroupMembershipListRelationFilterImpl) then,
  ) = __$$GroupMembershipListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GroupMembershipWhereInput? some,
    GroupMembershipWhereInput? every,
    GroupMembershipWhereInput? none,
  });

  @override
  $GroupMembershipWhereInputCopyWith<$Res>? get some;
  @override
  $GroupMembershipWhereInputCopyWith<$Res>? get every;
  @override
  $GroupMembershipWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$GroupMembershipListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GroupMembershipListRelationFilterCopyWithImpl<
          $Res,
          _$GroupMembershipListRelationFilterImpl
        >
    implements _$$GroupMembershipListRelationFilterImplCopyWith<$Res> {
  __$$GroupMembershipListRelationFilterImplCopyWithImpl(
    _$GroupMembershipListRelationFilterImpl _value,
    $Res Function(_$GroupMembershipListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$GroupMembershipListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GroupMembershipListRelationFilterImpl
    extends _GroupMembershipListRelationFilter {
  const _$GroupMembershipListRelationFilterImpl({
    this.some,
    this.every,
    this.none,
  }) : super._();

  @override
  final GroupMembershipWhereInput? some;
  @override
  final GroupMembershipWhereInput? every;
  @override
  final GroupMembershipWhereInput? none;

  @override
  String toString() {
    return 'GroupMembershipListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMembershipListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMembershipListRelationFilterImplCopyWith<
    _$GroupMembershipListRelationFilterImpl
  >
  get copyWith =>
      __$$GroupMembershipListRelationFilterImplCopyWithImpl<
        _$GroupMembershipListRelationFilterImpl
      >(this, _$identity);
}

abstract class _GroupMembershipListRelationFilter
    extends GroupMembershipListRelationFilter {
  const factory _GroupMembershipListRelationFilter({
    final GroupMembershipWhereInput? some,
    final GroupMembershipWhereInput? every,
    final GroupMembershipWhereInput? none,
  }) = _$GroupMembershipListRelationFilterImpl;
  const _GroupMembershipListRelationFilter._() : super._();

  @override
  GroupMembershipWhereInput? get some;
  @override
  GroupMembershipWhereInput? get every;
  @override
  GroupMembershipWhereInput? get none;

  /// Create a copy of GroupMembershipListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMembershipListRelationFilterImplCopyWith<
    _$GroupMembershipListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupMembershipRelationFilter {
  @JsonKey(name: 'is')
  GroupMembershipWhereInput? get is_ => throw _privateConstructorUsedError;
  GroupMembershipWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMembershipRelationFilterCopyWith<GroupMembershipRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembershipRelationFilterCopyWith<$Res> {
  factory $GroupMembershipRelationFilterCopyWith(
    GroupMembershipRelationFilter value,
    $Res Function(GroupMembershipRelationFilter) then,
  ) =
      _$GroupMembershipRelationFilterCopyWithImpl<
        $Res,
        GroupMembershipRelationFilter
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'is') GroupMembershipWhereInput? is_,
    GroupMembershipWhereInput? isNot,
  });

  $GroupMembershipWhereInputCopyWith<$Res>? get is_;
  $GroupMembershipWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$GroupMembershipRelationFilterCopyWithImpl<
  $Res,
  $Val extends GroupMembershipRelationFilter
>
    implements $GroupMembershipRelationFilterCopyWith<$Res> {
  _$GroupMembershipRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $GroupMembershipWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $GroupMembershipWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupMembershipRelationFilterImplCopyWith<$Res>
    implements $GroupMembershipRelationFilterCopyWith<$Res> {
  factory _$$GroupMembershipRelationFilterImplCopyWith(
    _$GroupMembershipRelationFilterImpl value,
    $Res Function(_$GroupMembershipRelationFilterImpl) then,
  ) = __$$GroupMembershipRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') GroupMembershipWhereInput? is_,
    GroupMembershipWhereInput? isNot,
  });

  @override
  $GroupMembershipWhereInputCopyWith<$Res>? get is_;
  @override
  $GroupMembershipWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$GroupMembershipRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GroupMembershipRelationFilterCopyWithImpl<
          $Res,
          _$GroupMembershipRelationFilterImpl
        >
    implements _$$GroupMembershipRelationFilterImplCopyWith<$Res> {
  __$$GroupMembershipRelationFilterImplCopyWithImpl(
    _$GroupMembershipRelationFilterImpl _value,
    $Res Function(_$GroupMembershipRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$GroupMembershipRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GroupMembershipRelationFilterImpl
    extends _GroupMembershipRelationFilter {
  const _$GroupMembershipRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final GroupMembershipWhereInput? is_;
  @override
  final GroupMembershipWhereInput? isNot;

  @override
  String toString() {
    return 'GroupMembershipRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMembershipRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMembershipRelationFilterImplCopyWith<
    _$GroupMembershipRelationFilterImpl
  >
  get copyWith =>
      __$$GroupMembershipRelationFilterImplCopyWithImpl<
        _$GroupMembershipRelationFilterImpl
      >(this, _$identity);
}

abstract class _GroupMembershipRelationFilter
    extends GroupMembershipRelationFilter {
  const factory _GroupMembershipRelationFilter({
    @JsonKey(name: 'is') final GroupMembershipWhereInput? is_,
    final GroupMembershipWhereInput? isNot,
  }) = _$GroupMembershipRelationFilterImpl;
  const _GroupMembershipRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  GroupMembershipWhereInput? get is_;
  @override
  GroupMembershipWhereInput? get isNot;

  /// Create a copy of GroupMembershipRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMembershipRelationFilterImplCopyWith<
    _$GroupMembershipRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupMembershipOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get groupId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get joinedAt => throw _privateConstructorUsedError;
  SortOrder? get rotationOrder => throw _privateConstructorUsedError;
  SortOrder? get rotationActive => throw _privateConstructorUsedError;

  /// Create a copy of GroupMembershipOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMembershipOrderByInputCopyWith<GroupMembershipOrderByInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembershipOrderByInputCopyWith<$Res> {
  factory $GroupMembershipOrderByInputCopyWith(
    GroupMembershipOrderByInput value,
    $Res Function(GroupMembershipOrderByInput) then,
  ) =
      _$GroupMembershipOrderByInputCopyWithImpl<
        $Res,
        GroupMembershipOrderByInput
      >;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? groupId,
    SortOrder? userId,
    SortOrder? joinedAt,
    SortOrder? rotationOrder,
    SortOrder? rotationActive,
  });
}

/// @nodoc
class _$GroupMembershipOrderByInputCopyWithImpl<
  $Res,
  $Val extends GroupMembershipOrderByInput
>
    implements $GroupMembershipOrderByInputCopyWith<$Res> {
  _$GroupMembershipOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMembershipOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? joinedAt = freezed,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            joinedAt: freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            rotationOrder: freezed == rotationOrder
                ? _value.rotationOrder
                : rotationOrder // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            rotationActive: freezed == rotationActive
                ? _value.rotationActive
                : rotationActive // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroupMembershipOrderByInputImplCopyWith<$Res>
    implements $GroupMembershipOrderByInputCopyWith<$Res> {
  factory _$$GroupMembershipOrderByInputImplCopyWith(
    _$GroupMembershipOrderByInputImpl value,
    $Res Function(_$GroupMembershipOrderByInputImpl) then,
  ) = __$$GroupMembershipOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? groupId,
    SortOrder? userId,
    SortOrder? joinedAt,
    SortOrder? rotationOrder,
    SortOrder? rotationActive,
  });
}

/// @nodoc
class __$$GroupMembershipOrderByInputImplCopyWithImpl<$Res>
    extends
        _$GroupMembershipOrderByInputCopyWithImpl<
          $Res,
          _$GroupMembershipOrderByInputImpl
        >
    implements _$$GroupMembershipOrderByInputImplCopyWith<$Res> {
  __$$GroupMembershipOrderByInputImplCopyWithImpl(
    _$GroupMembershipOrderByInputImpl _value,
    $Res Function(_$GroupMembershipOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupMembershipOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? joinedAt = freezed,
    Object? rotationOrder = freezed,
    Object? rotationActive = freezed,
  }) {
    return _then(
      _$GroupMembershipOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        joinedAt: freezed == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        rotationOrder: freezed == rotationOrder
            ? _value.rotationOrder
            : rotationOrder // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        rotationActive: freezed == rotationActive
            ? _value.rotationActive
            : rotationActive // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$GroupMembershipOrderByInputImpl extends _GroupMembershipOrderByInput {
  const _$GroupMembershipOrderByInputImpl({
    this.id,
    this.groupId,
    this.userId,
    this.joinedAt,
    this.rotationOrder,
    this.rotationActive,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? groupId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? joinedAt;
  @override
  final SortOrder? rotationOrder;
  @override
  final SortOrder? rotationActive;

  @override
  String toString() {
    return 'GroupMembershipOrderByInput(id: $id, groupId: $groupId, userId: $userId, joinedAt: $joinedAt, rotationOrder: $rotationOrder, rotationActive: $rotationActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMembershipOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.rotationOrder, rotationOrder) ||
                other.rotationOrder == rotationOrder) &&
            (identical(other.rotationActive, rotationActive) ||
                other.rotationActive == rotationActive));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    groupId,
    userId,
    joinedAt,
    rotationOrder,
    rotationActive,
  );

  /// Create a copy of GroupMembershipOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMembershipOrderByInputImplCopyWith<_$GroupMembershipOrderByInputImpl>
  get copyWith =>
      __$$GroupMembershipOrderByInputImplCopyWithImpl<
        _$GroupMembershipOrderByInputImpl
      >(this, _$identity);
}

abstract class _GroupMembershipOrderByInput
    extends GroupMembershipOrderByInput {
  const factory _GroupMembershipOrderByInput({
    final SortOrder? id,
    final SortOrder? groupId,
    final SortOrder? userId,
    final SortOrder? joinedAt,
    final SortOrder? rotationOrder,
    final SortOrder? rotationActive,
  }) = _$GroupMembershipOrderByInputImpl;
  const _GroupMembershipOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get groupId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get joinedAt;
  @override
  SortOrder? get rotationOrder;
  @override
  SortOrder? get rotationActive;

  /// Create a copy of GroupMembershipOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMembershipOrderByInputImplCopyWith<_$GroupMembershipOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
