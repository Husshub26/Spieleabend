// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Group {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get createdById => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GroupMembership>? get memberships => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameSession>? get sessions => throw _privateConstructorUsedError;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call({
    String id,
    String name,
    DateTime createdAt,
    String createdById,
    @JsonKey(includeFromJson: false, includeToJson: false) User? createdBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameSession>? sessions,
  });

  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? createdById = null,
    Object? createdBy = freezed,
    Object? memberships = freezed,
    Object? sessions = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            createdById: null == createdById
                ? _value.createdById
                : createdById // ignore: cast_nullable_to_non_nullable
                      as String,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as User?,
            memberships: freezed == memberships
                ? _value.memberships
                : memberships // ignore: cast_nullable_to_non_nullable
                      as List<GroupMembership>?,
            sessions: freezed == sessions
                ? _value.sessions
                : sessions // ignore: cast_nullable_to_non_nullable
                      as List<GameSession>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
    _$GroupImpl value,
    $Res Function(_$GroupImpl) then,
  ) = __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    DateTime createdAt,
    String createdById,
    @JsonKey(includeFromJson: false, includeToJson: false) User? createdBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameSession>? sessions,
  });

  @override
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
    _$GroupImpl _value,
    $Res Function(_$GroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? createdById = null,
    Object? createdBy = freezed,
    Object? memberships = freezed,
    Object? sessions = freezed,
  }) {
    return _then(
      _$GroupImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        createdById: null == createdById
            ? _value.createdById
            : createdById // ignore: cast_nullable_to_non_nullable
                  as String,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as User?,
        memberships: freezed == memberships
            ? _value._memberships
            : memberships // ignore: cast_nullable_to_non_nullable
                  as List<GroupMembership>?,
        sessions: freezed == sessions
            ? _value._sessions
            : sessions // ignore: cast_nullable_to_non_nullable
                  as List<GameSession>?,
      ),
    );
  }
}

/// @nodoc

class _$GroupImpl extends _Group {
  const _$GroupImpl({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.createdById,
    @JsonKey(includeFromJson: false, includeToJson: false) this.createdBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameSession>? sessions,
  }) : _memberships = memberships,
       _sessions = sessions,
       super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final String createdById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? createdBy;
  final List<GroupMembership>? _memberships;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GroupMembership>? get memberships {
    final value = _memberships;
    if (value == null) return null;
    if (_memberships is EqualUnmodifiableListView) return _memberships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameSession>? _sessions;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameSession>? get sessions {
    final value = _sessions;
    if (value == null) return null;
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Group(id: $id, name: $name, createdAt: $createdAt, createdById: $createdById, createdBy: $createdBy, memberships: $memberships, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(
              other._memberships,
              _memberships,
            ) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    createdAt,
    createdById,
    createdBy,
    const DeepCollectionEquality().hash(_memberships),
    const DeepCollectionEquality().hash(_sessions),
  );

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);
}

abstract class _Group extends Group {
  const factory _Group({
    required final String id,
    required final String name,
    required final DateTime createdAt,
    required final String createdById,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final User? createdBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameSession>? sessions,
  }) = _$GroupImpl;
  const _Group._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  String get createdById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get createdBy;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GroupMembership>? get memberships;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameSession>? get sessions;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGroupInput {
  String get name => throw _privateConstructorUsedError;
  String get createdById => throw _privateConstructorUsedError;

  /// Create a copy of CreateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGroupInputCopyWith<CreateGroupInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupInputCopyWith<$Res> {
  factory $CreateGroupInputCopyWith(
    CreateGroupInput value,
    $Res Function(CreateGroupInput) then,
  ) = _$CreateGroupInputCopyWithImpl<$Res, CreateGroupInput>;
  @useResult
  $Res call({String name, String createdById});
}

/// @nodoc
class _$CreateGroupInputCopyWithImpl<$Res, $Val extends CreateGroupInput>
    implements $CreateGroupInputCopyWith<$Res> {
  _$CreateGroupInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? createdById = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            createdById: null == createdById
                ? _value.createdById
                : createdById // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGroupInputImplCopyWith<$Res>
    implements $CreateGroupInputCopyWith<$Res> {
  factory _$$CreateGroupInputImplCopyWith(
    _$CreateGroupInputImpl value,
    $Res Function(_$CreateGroupInputImpl) then,
  ) = __$$CreateGroupInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String createdById});
}

/// @nodoc
class __$$CreateGroupInputImplCopyWithImpl<$Res>
    extends _$CreateGroupInputCopyWithImpl<$Res, _$CreateGroupInputImpl>
    implements _$$CreateGroupInputImplCopyWith<$Res> {
  __$$CreateGroupInputImplCopyWithImpl(
    _$CreateGroupInputImpl _value,
    $Res Function(_$CreateGroupInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? createdById = null}) {
    return _then(
      _$CreateGroupInputImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        createdById: null == createdById
            ? _value.createdById
            : createdById // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateGroupInputImpl extends _CreateGroupInput {
  const _$CreateGroupInputImpl({required this.name, required this.createdById})
    : super._();

  @override
  final String name;
  @override
  final String createdById;

  @override
  String toString() {
    return 'CreateGroupInput(name: $name, createdById: $createdById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, createdById);

  /// Create a copy of CreateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupInputImplCopyWith<_$CreateGroupInputImpl> get copyWith =>
      __$$CreateGroupInputImplCopyWithImpl<_$CreateGroupInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateGroupInput extends CreateGroupInput {
  const factory _CreateGroupInput({
    required final String name,
    required final String createdById,
  }) = _$CreateGroupInputImpl;
  const _CreateGroupInput._() : super._();

  @override
  String get name;
  @override
  String get createdById;

  /// Create a copy of CreateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupInputImplCopyWith<_$CreateGroupInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGroupInput {
  String? get name => throw _privateConstructorUsedError;
  String? get createdById => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGroupInputCopyWith<UpdateGroupInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupInputCopyWith<$Res> {
  factory $UpdateGroupInputCopyWith(
    UpdateGroupInput value,
    $Res Function(UpdateGroupInput) then,
  ) = _$UpdateGroupInputCopyWithImpl<$Res, UpdateGroupInput>;
  @useResult
  $Res call({String? name, String? createdById});
}

/// @nodoc
class _$UpdateGroupInputCopyWithImpl<$Res, $Val extends UpdateGroupInput>
    implements $UpdateGroupInputCopyWith<$Res> {
  _$UpdateGroupInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? createdById = freezed}) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdById: freezed == createdById
                ? _value.createdById
                : createdById // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateGroupInputImplCopyWith<$Res>
    implements $UpdateGroupInputCopyWith<$Res> {
  factory _$$UpdateGroupInputImplCopyWith(
    _$UpdateGroupInputImpl value,
    $Res Function(_$UpdateGroupInputImpl) then,
  ) = __$$UpdateGroupInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? createdById});
}

/// @nodoc
class __$$UpdateGroupInputImplCopyWithImpl<$Res>
    extends _$UpdateGroupInputCopyWithImpl<$Res, _$UpdateGroupInputImpl>
    implements _$$UpdateGroupInputImplCopyWith<$Res> {
  __$$UpdateGroupInputImplCopyWithImpl(
    _$UpdateGroupInputImpl _value,
    $Res Function(_$UpdateGroupInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? createdById = freezed}) {
    return _then(
      _$UpdateGroupInputImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdById: freezed == createdById
            ? _value.createdById
            : createdById // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateGroupInputImpl extends _UpdateGroupInput {
  const _$UpdateGroupInputImpl({this.name, this.createdById}) : super._();

  @override
  final String? name;
  @override
  final String? createdById;

  @override
  String toString() {
    return 'UpdateGroupInput(name: $name, createdById: $createdById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, createdById);

  /// Create a copy of UpdateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupInputImplCopyWith<_$UpdateGroupInputImpl> get copyWith =>
      __$$UpdateGroupInputImplCopyWithImpl<_$UpdateGroupInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateGroupInput extends UpdateGroupInput {
  const factory _UpdateGroupInput({
    final String? name,
    final String? createdById,
  }) = _$UpdateGroupInputImpl;
  const _UpdateGroupInput._() : super._();

  @override
  String? get name;
  @override
  String? get createdById;

  /// Create a copy of UpdateGroupInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroupInputImplCopyWith<_$UpdateGroupInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of GroupWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupWhereUniqueInputCopyWith<GroupWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWhereUniqueInputCopyWith<$Res> {
  factory $GroupWhereUniqueInputCopyWith(
    GroupWhereUniqueInput value,
    $Res Function(GroupWhereUniqueInput) then,
  ) = _$GroupWhereUniqueInputCopyWithImpl<$Res, GroupWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GroupWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends GroupWhereUniqueInput
>
    implements $GroupWhereUniqueInputCopyWith<$Res> {
  _$GroupWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupWhereUniqueInput
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
abstract class _$$GroupWhereUniqueInputImplCopyWith<$Res>
    implements $GroupWhereUniqueInputCopyWith<$Res> {
  factory _$$GroupWhereUniqueInputImplCopyWith(
    _$GroupWhereUniqueInputImpl value,
    $Res Function(_$GroupWhereUniqueInputImpl) then,
  ) = __$$GroupWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GroupWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$GroupWhereUniqueInputCopyWithImpl<$Res, _$GroupWhereUniqueInputImpl>
    implements _$$GroupWhereUniqueInputImplCopyWith<$Res> {
  __$$GroupWhereUniqueInputImplCopyWithImpl(
    _$GroupWhereUniqueInputImpl _value,
    $Res Function(_$GroupWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$GroupWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GroupWhereUniqueInputImpl extends _GroupWhereUniqueInput {
  const _$GroupWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'GroupWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GroupWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupWhereUniqueInputImplCopyWith<_$GroupWhereUniqueInputImpl>
  get copyWith =>
      __$$GroupWhereUniqueInputImplCopyWithImpl<_$GroupWhereUniqueInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GroupWhereUniqueInput extends GroupWhereUniqueInput {
  const factory _GroupWhereUniqueInput({final String? id}) =
      _$GroupWhereUniqueInputImpl;
  const _GroupWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of GroupWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupWhereUniqueInputImplCopyWith<_$GroupWhereUniqueInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  StringFilter? get createdById => throw _privateConstructorUsedError;
  UserRelationFilter? get createdBy => throw _privateConstructorUsedError;
  GroupMembershipListRelationFilter? get memberships =>
      throw _privateConstructorUsedError;
  GameSessionListRelationFilter? get sessions =>
      throw _privateConstructorUsedError;
  List<GroupWhereInput>? get AND => throw _privateConstructorUsedError;
  List<GroupWhereInput>? get OR => throw _privateConstructorUsedError;
  GroupWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupWhereInputCopyWith<GroupWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWhereInputCopyWith<$Res> {
  factory $GroupWhereInputCopyWith(
    GroupWhereInput value,
    $Res Function(GroupWhereInput) then,
  ) = _$GroupWhereInputCopyWithImpl<$Res, GroupWhereInput>;
  @useResult
  $Res call({
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
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $StringFilterCopyWith<$Res>? get createdById;
  $UserRelationFilterCopyWith<$Res>? get createdBy;
  $GroupMembershipListRelationFilterCopyWith<$Res>? get memberships;
  $GameSessionListRelationFilterCopyWith<$Res>? get sessions;
  $GroupWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$GroupWhereInputCopyWithImpl<$Res, $Val extends GroupWhereInput>
    implements $GroupWhereInputCopyWith<$Res> {
  _$GroupWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? createdById = freezed,
    Object? createdBy = freezed,
    Object? memberships = freezed,
    Object? sessions = freezed,
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
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTimeFilter?,
            createdById: freezed == createdById
                ? _value.createdById
                : createdById // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            memberships: freezed == memberships
                ? _value.memberships
                : memberships // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipListRelationFilter?,
            sessions: freezed == sessions
                ? _value.sessions
                : sessions // ignore: cast_nullable_to_non_nullable
                      as GameSessionListRelationFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<GroupWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<GroupWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as GroupWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupWhereInput
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

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get createdById {
    if (_value.createdById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.createdById!, (value) {
      return _then(_value.copyWith(createdById: value) as $Val);
    });
  }

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMembershipListRelationFilterCopyWith<$Res>? get memberships {
    if (_value.memberships == null) {
      return null;
    }

    return $GroupMembershipListRelationFilterCopyWith<$Res>(
      _value.memberships!,
      (value) {
        return _then(_value.copyWith(memberships: value) as $Val);
      },
    );
  }

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionListRelationFilterCopyWith<$Res>? get sessions {
    if (_value.sessions == null) {
      return null;
    }

    return $GameSessionListRelationFilterCopyWith<$Res>(_value.sessions!, (
      value,
    ) {
      return _then(_value.copyWith(sessions: value) as $Val);
    });
  }

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $GroupWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupWhereInputImplCopyWith<$Res>
    implements $GroupWhereInputCopyWith<$Res> {
  factory _$$GroupWhereInputImplCopyWith(
    _$GroupWhereInputImpl value,
    $Res Function(_$GroupWhereInputImpl) then,
  ) = __$$GroupWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $StringFilterCopyWith<$Res>? get createdById;
  @override
  $UserRelationFilterCopyWith<$Res>? get createdBy;
  @override
  $GroupMembershipListRelationFilterCopyWith<$Res>? get memberships;
  @override
  $GameSessionListRelationFilterCopyWith<$Res>? get sessions;
  @override
  $GroupWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$GroupWhereInputImplCopyWithImpl<$Res>
    extends _$GroupWhereInputCopyWithImpl<$Res, _$GroupWhereInputImpl>
    implements _$$GroupWhereInputImplCopyWith<$Res> {
  __$$GroupWhereInputImplCopyWithImpl(
    _$GroupWhereInputImpl _value,
    $Res Function(_$GroupWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? createdById = freezed,
    Object? createdBy = freezed,
    Object? memberships = freezed,
    Object? sessions = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$GroupWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTimeFilter?,
        createdById: freezed == createdById
            ? _value.createdById
            : createdById // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        memberships: freezed == memberships
            ? _value.memberships
            : memberships // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipListRelationFilter?,
        sessions: freezed == sessions
            ? _value.sessions
            : sessions // ignore: cast_nullable_to_non_nullable
                  as GameSessionListRelationFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<GroupWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<GroupWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as GroupWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GroupWhereInputImpl extends _GroupWhereInput {
  const _$GroupWhereInputImpl({
    this.id,
    this.name,
    this.createdAt,
    this.createdById,
    this.createdBy,
    this.memberships,
    this.sessions,
    final List<GroupWhereInput>? AND,
    final List<GroupWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;
  @override
  final DateTimeFilter? createdAt;
  @override
  final StringFilter? createdById;
  @override
  final UserRelationFilter? createdBy;
  @override
  final GroupMembershipListRelationFilter? memberships;
  @override
  final GameSessionListRelationFilter? sessions;
  final List<GroupWhereInput>? _AND;
  @override
  List<GroupWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GroupWhereInput>? _OR;
  @override
  List<GroupWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GroupWhereInput? NOT;

  @override
  String toString() {
    return 'GroupWhereInput(id: $id, name: $name, createdAt: $createdAt, createdById: $createdById, createdBy: $createdBy, memberships: $memberships, sessions: $sessions, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.memberships, memberships) ||
                other.memberships == memberships) &&
            (identical(other.sessions, sessions) ||
                other.sessions == sessions) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    createdAt,
    createdById,
    createdBy,
    memberships,
    sessions,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupWhereInputImplCopyWith<_$GroupWhereInputImpl> get copyWith =>
      __$$GroupWhereInputImplCopyWithImpl<_$GroupWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GroupWhereInput extends GroupWhereInput {
  const factory _GroupWhereInput({
    final StringFilter? id,
    final StringFilter? name,
    final DateTimeFilter? createdAt,
    final StringFilter? createdById,
    final UserRelationFilter? createdBy,
    final GroupMembershipListRelationFilter? memberships,
    final GameSessionListRelationFilter? sessions,
    final List<GroupWhereInput>? AND,
    final List<GroupWhereInput>? OR,
    final GroupWhereInput? NOT,
  }) = _$GroupWhereInputImpl;
  const _GroupWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;
  @override
  DateTimeFilter? get createdAt;
  @override
  StringFilter? get createdById;
  @override
  UserRelationFilter? get createdBy;
  @override
  GroupMembershipListRelationFilter? get memberships;
  @override
  GameSessionListRelationFilter? get sessions;
  @override
  List<GroupWhereInput>? get AND;
  @override
  List<GroupWhereInput>? get OR;
  @override
  GroupWhereInput? get NOT;

  /// Create a copy of GroupWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupWhereInputImplCopyWith<_$GroupWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupListRelationFilter {
  GroupWhereInput? get some => throw _privateConstructorUsedError;
  GroupWhereInput? get every => throw _privateConstructorUsedError;
  GroupWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupListRelationFilterCopyWith<GroupListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupListRelationFilterCopyWith<$Res> {
  factory $GroupListRelationFilterCopyWith(
    GroupListRelationFilter value,
    $Res Function(GroupListRelationFilter) then,
  ) = _$GroupListRelationFilterCopyWithImpl<$Res, GroupListRelationFilter>;
  @useResult
  $Res call({
    GroupWhereInput? some,
    GroupWhereInput? every,
    GroupWhereInput? none,
  });

  $GroupWhereInputCopyWith<$Res>? get some;
  $GroupWhereInputCopyWith<$Res>? get every;
  $GroupWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$GroupListRelationFilterCopyWithImpl<
  $Res,
  $Val extends GroupListRelationFilter
>
    implements $GroupListRelationFilterCopyWith<$Res> {
  _$GroupListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupListRelationFilter
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
                      as GroupWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as GroupWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as GroupWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $GroupWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $GroupWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $GroupWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupListRelationFilterImplCopyWith<$Res>
    implements $GroupListRelationFilterCopyWith<$Res> {
  factory _$$GroupListRelationFilterImplCopyWith(
    _$GroupListRelationFilterImpl value,
    $Res Function(_$GroupListRelationFilterImpl) then,
  ) = __$$GroupListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GroupWhereInput? some,
    GroupWhereInput? every,
    GroupWhereInput? none,
  });

  @override
  $GroupWhereInputCopyWith<$Res>? get some;
  @override
  $GroupWhereInputCopyWith<$Res>? get every;
  @override
  $GroupWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$GroupListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GroupListRelationFilterCopyWithImpl<
          $Res,
          _$GroupListRelationFilterImpl
        >
    implements _$$GroupListRelationFilterImplCopyWith<$Res> {
  __$$GroupListRelationFilterImplCopyWithImpl(
    _$GroupListRelationFilterImpl _value,
    $Res Function(_$GroupListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$GroupListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as GroupWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as GroupWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as GroupWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GroupListRelationFilterImpl extends _GroupListRelationFilter {
  const _$GroupListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final GroupWhereInput? some;
  @override
  final GroupWhereInput? every;
  @override
  final GroupWhereInput? none;

  @override
  String toString() {
    return 'GroupListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupListRelationFilterImplCopyWith<_$GroupListRelationFilterImpl>
  get copyWith =>
      __$$GroupListRelationFilterImplCopyWithImpl<
        _$GroupListRelationFilterImpl
      >(this, _$identity);
}

abstract class _GroupListRelationFilter extends GroupListRelationFilter {
  const factory _GroupListRelationFilter({
    final GroupWhereInput? some,
    final GroupWhereInput? every,
    final GroupWhereInput? none,
  }) = _$GroupListRelationFilterImpl;
  const _GroupListRelationFilter._() : super._();

  @override
  GroupWhereInput? get some;
  @override
  GroupWhereInput? get every;
  @override
  GroupWhereInput? get none;

  /// Create a copy of GroupListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupListRelationFilterImplCopyWith<_$GroupListRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupRelationFilter {
  @JsonKey(name: 'is')
  GroupWhereInput? get is_ => throw _privateConstructorUsedError;
  GroupWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupRelationFilterCopyWith<GroupRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupRelationFilterCopyWith<$Res> {
  factory $GroupRelationFilterCopyWith(
    GroupRelationFilter value,
    $Res Function(GroupRelationFilter) then,
  ) = _$GroupRelationFilterCopyWithImpl<$Res, GroupRelationFilter>;
  @useResult
  $Res call({
    @JsonKey(name: 'is') GroupWhereInput? is_,
    GroupWhereInput? isNot,
  });

  $GroupWhereInputCopyWith<$Res>? get is_;
  $GroupWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$GroupRelationFilterCopyWithImpl<$Res, $Val extends GroupRelationFilter>
    implements $GroupRelationFilterCopyWith<$Res> {
  _$GroupRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as GroupWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as GroupWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $GroupWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $GroupWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupRelationFilterImplCopyWith<$Res>
    implements $GroupRelationFilterCopyWith<$Res> {
  factory _$$GroupRelationFilterImplCopyWith(
    _$GroupRelationFilterImpl value,
    $Res Function(_$GroupRelationFilterImpl) then,
  ) = __$$GroupRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') GroupWhereInput? is_,
    GroupWhereInput? isNot,
  });

  @override
  $GroupWhereInputCopyWith<$Res>? get is_;
  @override
  $GroupWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$GroupRelationFilterImplCopyWithImpl<$Res>
    extends _$GroupRelationFilterCopyWithImpl<$Res, _$GroupRelationFilterImpl>
    implements _$$GroupRelationFilterImplCopyWith<$Res> {
  __$$GroupRelationFilterImplCopyWithImpl(
    _$GroupRelationFilterImpl _value,
    $Res Function(_$GroupRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$GroupRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as GroupWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as GroupWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GroupRelationFilterImpl extends _GroupRelationFilter {
  const _$GroupRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot})
    : super._();

  @override
  @JsonKey(name: 'is')
  final GroupWhereInput? is_;
  @override
  final GroupWhereInput? isNot;

  @override
  String toString() {
    return 'GroupRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupRelationFilterImplCopyWith<_$GroupRelationFilterImpl> get copyWith =>
      __$$GroupRelationFilterImplCopyWithImpl<_$GroupRelationFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _GroupRelationFilter extends GroupRelationFilter {
  const factory _GroupRelationFilter({
    @JsonKey(name: 'is') final GroupWhereInput? is_,
    final GroupWhereInput? isNot,
  }) = _$GroupRelationFilterImpl;
  const _GroupRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  GroupWhereInput? get is_;
  @override
  GroupWhereInput? get isNot;

  /// Create a copy of GroupRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupRelationFilterImplCopyWith<_$GroupRelationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get createdById => throw _privateConstructorUsedError;

  /// Create a copy of GroupOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupOrderByInputCopyWith<GroupOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOrderByInputCopyWith<$Res> {
  factory $GroupOrderByInputCopyWith(
    GroupOrderByInput value,
    $Res Function(GroupOrderByInput) then,
  ) = _$GroupOrderByInputCopyWithImpl<$Res, GroupOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? name,
    SortOrder? createdAt,
    SortOrder? createdById,
  });
}

/// @nodoc
class _$GroupOrderByInputCopyWithImpl<$Res, $Val extends GroupOrderByInput>
    implements $GroupOrderByInputCopyWith<$Res> {
  _$GroupOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? createdById = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            createdById: freezed == createdById
                ? _value.createdById
                : createdById // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroupOrderByInputImplCopyWith<$Res>
    implements $GroupOrderByInputCopyWith<$Res> {
  factory _$$GroupOrderByInputImplCopyWith(
    _$GroupOrderByInputImpl value,
    $Res Function(_$GroupOrderByInputImpl) then,
  ) = __$$GroupOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? name,
    SortOrder? createdAt,
    SortOrder? createdById,
  });
}

/// @nodoc
class __$$GroupOrderByInputImplCopyWithImpl<$Res>
    extends _$GroupOrderByInputCopyWithImpl<$Res, _$GroupOrderByInputImpl>
    implements _$$GroupOrderByInputImplCopyWith<$Res> {
  __$$GroupOrderByInputImplCopyWithImpl(
    _$GroupOrderByInputImpl _value,
    $Res Function(_$GroupOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? createdById = freezed,
  }) {
    return _then(
      _$GroupOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        createdById: freezed == createdById
            ? _value.createdById
            : createdById // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$GroupOrderByInputImpl extends _GroupOrderByInput {
  const _$GroupOrderByInputImpl({
    this.id,
    this.name,
    this.createdAt,
    this.createdById,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? createdById;

  @override
  String toString() {
    return 'GroupOrderByInput(id: $id, name: $name, createdAt: $createdAt, createdById: $createdById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdAt, createdById);

  /// Create a copy of GroupOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupOrderByInputImplCopyWith<_$GroupOrderByInputImpl> get copyWith =>
      __$$GroupOrderByInputImplCopyWithImpl<_$GroupOrderByInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GroupOrderByInput extends GroupOrderByInput {
  const factory _GroupOrderByInput({
    final SortOrder? id,
    final SortOrder? name,
    final SortOrder? createdAt,
    final SortOrder? createdById,
  }) = _$GroupOrderByInputImpl;
  const _GroupOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get createdById;

  /// Create a copy of GroupOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupOrderByInputImplCopyWith<_$GroupOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
