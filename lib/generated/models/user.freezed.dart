// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameSession>? get hostedSessions => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GroupMembership>? get memberships => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Group>? get createdGroups => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameProposal>? get proposals => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameVote>? get votes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<EveningRating>? get ratings => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<QuickMessage>? get messages => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CuisinePreference>? get preferences =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<FoodOrder>? get orders => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String id,
    String username,
    String displayName,
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
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? displayName = null,
    Object? hostedSessions = freezed,
    Object? memberships = freezed,
    Object? createdGroups = freezed,
    Object? proposals = freezed,
    Object? votes = freezed,
    Object? ratings = freezed,
    Object? messages = freezed,
    Object? preferences = freezed,
    Object? orders = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            hostedSessions: freezed == hostedSessions
                ? _value.hostedSessions
                : hostedSessions // ignore: cast_nullable_to_non_nullable
                      as List<GameSession>?,
            memberships: freezed == memberships
                ? _value.memberships
                : memberships // ignore: cast_nullable_to_non_nullable
                      as List<GroupMembership>?,
            createdGroups: freezed == createdGroups
                ? _value.createdGroups
                : createdGroups // ignore: cast_nullable_to_non_nullable
                      as List<Group>?,
            proposals: freezed == proposals
                ? _value.proposals
                : proposals // ignore: cast_nullable_to_non_nullable
                      as List<GameProposal>?,
            votes: freezed == votes
                ? _value.votes
                : votes // ignore: cast_nullable_to_non_nullable
                      as List<GameVote>?,
            ratings: freezed == ratings
                ? _value.ratings
                : ratings // ignore: cast_nullable_to_non_nullable
                      as List<EveningRating>?,
            messages: freezed == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<QuickMessage>?,
            preferences: freezed == preferences
                ? _value.preferences
                : preferences // ignore: cast_nullable_to_non_nullable
                      as List<CuisinePreference>?,
            orders: freezed == orders
                ? _value.orders
                : orders // ignore: cast_nullable_to_non_nullable
                      as List<FoodOrder>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String username,
    String displayName,
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
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? displayName = null,
    Object? hostedSessions = freezed,
    Object? memberships = freezed,
    Object? createdGroups = freezed,
    Object? proposals = freezed,
    Object? votes = freezed,
    Object? ratings = freezed,
    Object? messages = freezed,
    Object? preferences = freezed,
    Object? orders = freezed,
  }) {
    return _then(
      _$UserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        hostedSessions: freezed == hostedSessions
            ? _value._hostedSessions
            : hostedSessions // ignore: cast_nullable_to_non_nullable
                  as List<GameSession>?,
        memberships: freezed == memberships
            ? _value._memberships
            : memberships // ignore: cast_nullable_to_non_nullable
                  as List<GroupMembership>?,
        createdGroups: freezed == createdGroups
            ? _value._createdGroups
            : createdGroups // ignore: cast_nullable_to_non_nullable
                  as List<Group>?,
        proposals: freezed == proposals
            ? _value._proposals
            : proposals // ignore: cast_nullable_to_non_nullable
                  as List<GameProposal>?,
        votes: freezed == votes
            ? _value._votes
            : votes // ignore: cast_nullable_to_non_nullable
                  as List<GameVote>?,
        ratings: freezed == ratings
            ? _value._ratings
            : ratings // ignore: cast_nullable_to_non_nullable
                  as List<EveningRating>?,
        messages: freezed == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<QuickMessage>?,
        preferences: freezed == preferences
            ? _value._preferences
            : preferences // ignore: cast_nullable_to_non_nullable
                  as List<CuisinePreference>?,
        orders: freezed == orders
            ? _value._orders
            : orders // ignore: cast_nullable_to_non_nullable
                  as List<FoodOrder>?,
      ),
    );
  }
}

/// @nodoc

class _$UserImpl extends _User {
  const _$UserImpl({
    required this.id,
    required this.username,
    required this.displayName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameSession>? hostedSessions,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<Group>? createdGroups,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameProposal>? proposals,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameVote>? votes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<EveningRating>? ratings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<QuickMessage>? messages,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<CuisinePreference>? preferences,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<FoodOrder>? orders,
  }) : _hostedSessions = hostedSessions,
       _memberships = memberships,
       _createdGroups = createdGroups,
       _proposals = proposals,
       _votes = votes,
       _ratings = ratings,
       _messages = messages,
       _preferences = preferences,
       _orders = orders,
       super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String displayName;
  final List<GameSession>? _hostedSessions;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameSession>? get hostedSessions {
    final value = _hostedSessions;
    if (value == null) return null;
    if (_hostedSessions is EqualUnmodifiableListView) return _hostedSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<Group>? _createdGroups;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Group>? get createdGroups {
    final value = _createdGroups;
    if (value == null) return null;
    if (_createdGroups is EqualUnmodifiableListView) return _createdGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameProposal>? _proposals;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameProposal>? get proposals {
    final value = _proposals;
    if (value == null) return null;
    if (_proposals is EqualUnmodifiableListView) return _proposals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameVote>? _votes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameVote>? get votes {
    final value = _votes;
    if (value == null) return null;
    if (_votes is EqualUnmodifiableListView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EveningRating>? _ratings;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<EveningRating>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QuickMessage>? _messages;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<QuickMessage>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CuisinePreference>? _preferences;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CuisinePreference>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableListView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FoodOrder>? _orders;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<FoodOrder>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(id: $id, username: $username, displayName: $displayName, hostedSessions: $hostedSessions, memberships: $memberships, createdGroups: $createdGroups, proposals: $proposals, votes: $votes, ratings: $ratings, messages: $messages, preferences: $preferences, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(
              other._hostedSessions,
              _hostedSessions,
            ) &&
            const DeepCollectionEquality().equals(
              other._memberships,
              _memberships,
            ) &&
            const DeepCollectionEquality().equals(
              other._createdGroups,
              _createdGroups,
            ) &&
            const DeepCollectionEquality().equals(
              other._proposals,
              _proposals,
            ) &&
            const DeepCollectionEquality().equals(other._votes, _votes) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(
              other._preferences,
              _preferences,
            ) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    username,
    displayName,
    const DeepCollectionEquality().hash(_hostedSessions),
    const DeepCollectionEquality().hash(_memberships),
    const DeepCollectionEquality().hash(_createdGroups),
    const DeepCollectionEquality().hash(_proposals),
    const DeepCollectionEquality().hash(_votes),
    const DeepCollectionEquality().hash(_ratings),
    const DeepCollectionEquality().hash(_messages),
    const DeepCollectionEquality().hash(_preferences),
    const DeepCollectionEquality().hash(_orders),
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User extends User {
  const factory _User({
    required final String id,
    required final String username,
    required final String displayName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameSession>? hostedSessions,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GroupMembership>? memberships,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<Group>? createdGroups,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameProposal>? proposals,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameVote>? votes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<EveningRating>? ratings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<QuickMessage>? messages,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<CuisinePreference>? preferences,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<FoodOrder>? orders,
  }) = _$UserImpl;
  const _User._() : super._();

  @override
  String get id;
  @override
  String get username;
  @override
  String get displayName;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameSession>? get hostedSessions;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GroupMembership>? get memberships;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Group>? get createdGroups;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameProposal>? get proposals;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameVote>? get votes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<EveningRating>? get ratings;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<QuickMessage>? get messages;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CuisinePreference>? get preferences;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<FoodOrder>? get orders;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateUserInput {
  String get username => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserInputCopyWith<CreateUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserInputCopyWith<$Res> {
  factory $CreateUserInputCopyWith(
    CreateUserInput value,
    $Res Function(CreateUserInput) then,
  ) = _$CreateUserInputCopyWithImpl<$Res, CreateUserInput>;
  @useResult
  $Res call({String username, String displayName});
}

/// @nodoc
class _$CreateUserInputCopyWithImpl<$Res, $Val extends CreateUserInput>
    implements $CreateUserInputCopyWith<$Res> {
  _$CreateUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? displayName = null}) {
    return _then(
      _value.copyWith(
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateUserInputImplCopyWith<$Res>
    implements $CreateUserInputCopyWith<$Res> {
  factory _$$CreateUserInputImplCopyWith(
    _$CreateUserInputImpl value,
    $Res Function(_$CreateUserInputImpl) then,
  ) = __$$CreateUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String displayName});
}

/// @nodoc
class __$$CreateUserInputImplCopyWithImpl<$Res>
    extends _$CreateUserInputCopyWithImpl<$Res, _$CreateUserInputImpl>
    implements _$$CreateUserInputImplCopyWith<$Res> {
  __$$CreateUserInputImplCopyWithImpl(
    _$CreateUserInputImpl _value,
    $Res Function(_$CreateUserInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? displayName = null}) {
    return _then(
      _$CreateUserInputImpl(
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateUserInputImpl extends _CreateUserInput {
  const _$CreateUserInputImpl({
    required this.username,
    required this.displayName,
  }) : super._();

  @override
  final String username;
  @override
  final String displayName;

  @override
  String toString() {
    return 'CreateUserInput(username: $username, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserInputImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, displayName);

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserInputImplCopyWith<_$CreateUserInputImpl> get copyWith =>
      __$$CreateUserInputImplCopyWithImpl<_$CreateUserInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateUserInput extends CreateUserInput {
  const factory _CreateUserInput({
    required final String username,
    required final String displayName,
  }) = _$CreateUserInputImpl;
  const _CreateUserInput._() : super._();

  @override
  String get username;
  @override
  String get displayName;

  /// Create a copy of CreateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserInputImplCopyWith<_$CreateUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateUserInput {
  String? get username => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserInputCopyWith<UpdateUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserInputCopyWith<$Res> {
  factory $UpdateUserInputCopyWith(
    UpdateUserInput value,
    $Res Function(UpdateUserInput) then,
  ) = _$UpdateUserInputCopyWithImpl<$Res, UpdateUserInput>;
  @useResult
  $Res call({String? username, String? displayName});
}

/// @nodoc
class _$UpdateUserInputCopyWithImpl<$Res, $Val extends UpdateUserInput>
    implements $UpdateUserInputCopyWith<$Res> {
  _$UpdateUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = freezed, Object? displayName = freezed}) {
    return _then(
      _value.copyWith(
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String?,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateUserInputImplCopyWith<$Res>
    implements $UpdateUserInputCopyWith<$Res> {
  factory _$$UpdateUserInputImplCopyWith(
    _$UpdateUserInputImpl value,
    $Res Function(_$UpdateUserInputImpl) then,
  ) = __$$UpdateUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? displayName});
}

/// @nodoc
class __$$UpdateUserInputImplCopyWithImpl<$Res>
    extends _$UpdateUserInputCopyWithImpl<$Res, _$UpdateUserInputImpl>
    implements _$$UpdateUserInputImplCopyWith<$Res> {
  __$$UpdateUserInputImplCopyWithImpl(
    _$UpdateUserInputImpl _value,
    $Res Function(_$UpdateUserInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = freezed, Object? displayName = freezed}) {
    return _then(
      _$UpdateUserInputImpl(
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateUserInputImpl extends _UpdateUserInput {
  const _$UpdateUserInputImpl({this.username, this.displayName}) : super._();

  @override
  final String? username;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'UpdateUserInput(username: $username, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInputImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, displayName);

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInputImplCopyWith<_$UpdateUserInputImpl> get copyWith =>
      __$$UpdateUserInputImplCopyWithImpl<_$UpdateUserInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateUserInput extends UpdateUserInput {
  const factory _UpdateUserInput({
    final String? username,
    final String? displayName,
  }) = _$UpdateUserInputImpl;
  const _UpdateUserInput._() : super._();

  @override
  String? get username;
  @override
  String? get displayName;

  /// Create a copy of UpdateUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserInputImplCopyWith<_$UpdateUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWhereUniqueInputCopyWith<UserWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWhereUniqueInputCopyWith<$Res> {
  factory $UserWhereUniqueInputCopyWith(
    UserWhereUniqueInput value,
    $Res Function(UserWhereUniqueInput) then,
  ) = _$UserWhereUniqueInputCopyWithImpl<$Res, UserWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? username});
}

/// @nodoc
class _$UserWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends UserWhereUniqueInput
>
    implements $UserWhereUniqueInputCopyWith<$Res> {
  _$UserWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? username = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserWhereUniqueInputImplCopyWith<$Res>
    implements $UserWhereUniqueInputCopyWith<$Res> {
  factory _$$UserWhereUniqueInputImplCopyWith(
    _$UserWhereUniqueInputImpl value,
    $Res Function(_$UserWhereUniqueInputImpl) then,
  ) = __$$UserWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? username});
}

/// @nodoc
class __$$UserWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$UserWhereUniqueInputCopyWithImpl<$Res, _$UserWhereUniqueInputImpl>
    implements _$$UserWhereUniqueInputImplCopyWith<$Res> {
  __$$UserWhereUniqueInputImplCopyWithImpl(
    _$UserWhereUniqueInputImpl _value,
    $Res Function(_$UserWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? username = freezed}) {
    return _then(
      _$UserWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UserWhereUniqueInputImpl extends _UserWhereUniqueInput {
  const _$UserWhereUniqueInputImpl({this.id, this.username}) : super._();

  @override
  final String? id;
  @override
  final String? username;

  @override
  String toString() {
    return 'UserWhereUniqueInput(id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWhereUniqueInputImplCopyWith<_$UserWhereUniqueInputImpl>
  get copyWith =>
      __$$UserWhereUniqueInputImplCopyWithImpl<_$UserWhereUniqueInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UserWhereUniqueInput extends UserWhereUniqueInput {
  const factory _UserWhereUniqueInput({
    final String? id,
    final String? username,
  }) = _$UserWhereUniqueInputImpl;
  const _UserWhereUniqueInput._() : super._();

  @override
  String? get id;
  @override
  String? get username;

  /// Create a copy of UserWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWhereUniqueInputImplCopyWith<_$UserWhereUniqueInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get username => throw _privateConstructorUsedError;
  StringFilter? get displayName => throw _privateConstructorUsedError;
  GameSessionListRelationFilter? get hostedSessions =>
      throw _privateConstructorUsedError;
  GroupMembershipListRelationFilter? get memberships =>
      throw _privateConstructorUsedError;
  GroupListRelationFilter? get createdGroups =>
      throw _privateConstructorUsedError;
  GameProposalListRelationFilter? get proposals =>
      throw _privateConstructorUsedError;
  GameVoteListRelationFilter? get votes => throw _privateConstructorUsedError;
  EveningRatingListRelationFilter? get ratings =>
      throw _privateConstructorUsedError;
  QuickMessageListRelationFilter? get messages =>
      throw _privateConstructorUsedError;
  CuisinePreferenceListRelationFilter? get preferences =>
      throw _privateConstructorUsedError;
  FoodOrderListRelationFilter? get orders => throw _privateConstructorUsedError;
  List<UserWhereInput>? get AND => throw _privateConstructorUsedError;
  List<UserWhereInput>? get OR => throw _privateConstructorUsedError;
  UserWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWhereInputCopyWith<UserWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWhereInputCopyWith<$Res> {
  factory $UserWhereInputCopyWith(
    UserWhereInput value,
    $Res Function(UserWhereInput) then,
  ) = _$UserWhereInputCopyWithImpl<$Res, UserWhereInput>;
  @useResult
  $Res call({
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
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get username;
  $StringFilterCopyWith<$Res>? get displayName;
  $GameSessionListRelationFilterCopyWith<$Res>? get hostedSessions;
  $GroupMembershipListRelationFilterCopyWith<$Res>? get memberships;
  $GroupListRelationFilterCopyWith<$Res>? get createdGroups;
  $GameProposalListRelationFilterCopyWith<$Res>? get proposals;
  $GameVoteListRelationFilterCopyWith<$Res>? get votes;
  $EveningRatingListRelationFilterCopyWith<$Res>? get ratings;
  $QuickMessageListRelationFilterCopyWith<$Res>? get messages;
  $CuisinePreferenceListRelationFilterCopyWith<$Res>? get preferences;
  $FoodOrderListRelationFilterCopyWith<$Res>? get orders;
  $UserWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$UserWhereInputCopyWithImpl<$Res, $Val extends UserWhereInput>
    implements $UserWhereInputCopyWith<$Res> {
  _$UserWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? displayName = freezed,
    Object? hostedSessions = freezed,
    Object? memberships = freezed,
    Object? createdGroups = freezed,
    Object? proposals = freezed,
    Object? votes = freezed,
    Object? ratings = freezed,
    Object? messages = freezed,
    Object? preferences = freezed,
    Object? orders = freezed,
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
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            hostedSessions: freezed == hostedSessions
                ? _value.hostedSessions
                : hostedSessions // ignore: cast_nullable_to_non_nullable
                      as GameSessionListRelationFilter?,
            memberships: freezed == memberships
                ? _value.memberships
                : memberships // ignore: cast_nullable_to_non_nullable
                      as GroupMembershipListRelationFilter?,
            createdGroups: freezed == createdGroups
                ? _value.createdGroups
                : createdGroups // ignore: cast_nullable_to_non_nullable
                      as GroupListRelationFilter?,
            proposals: freezed == proposals
                ? _value.proposals
                : proposals // ignore: cast_nullable_to_non_nullable
                      as GameProposalListRelationFilter?,
            votes: freezed == votes
                ? _value.votes
                : votes // ignore: cast_nullable_to_non_nullable
                      as GameVoteListRelationFilter?,
            ratings: freezed == ratings
                ? _value.ratings
                : ratings // ignore: cast_nullable_to_non_nullable
                      as EveningRatingListRelationFilter?,
            messages: freezed == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as QuickMessageListRelationFilter?,
            preferences: freezed == preferences
                ? _value.preferences
                : preferences // ignore: cast_nullable_to_non_nullable
                      as CuisinePreferenceListRelationFilter?,
            orders: freezed == orders
                ? _value.orders
                : orders // ignore: cast_nullable_to_non_nullable
                      as FoodOrderListRelationFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<UserWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<UserWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as UserWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get username {
    if (_value.username == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.username!, (value) {
      return _then(_value.copyWith(username: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get displayName {
    if (_value.displayName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.displayName!, (value) {
      return _then(_value.copyWith(displayName: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionListRelationFilterCopyWith<$Res>? get hostedSessions {
    if (_value.hostedSessions == null) {
      return null;
    }

    return $GameSessionListRelationFilterCopyWith<$Res>(
      _value.hostedSessions!,
      (value) {
        return _then(_value.copyWith(hostedSessions: value) as $Val);
      },
    );
  }

  /// Create a copy of UserWhereInput
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

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupListRelationFilterCopyWith<$Res>? get createdGroups {
    if (_value.createdGroups == null) {
      return null;
    }

    return $GroupListRelationFilterCopyWith<$Res>(_value.createdGroups!, (
      value,
    ) {
      return _then(_value.copyWith(createdGroups: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalListRelationFilterCopyWith<$Res>? get proposals {
    if (_value.proposals == null) {
      return null;
    }

    return $GameProposalListRelationFilterCopyWith<$Res>(_value.proposals!, (
      value,
    ) {
      return _then(_value.copyWith(proposals: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteListRelationFilterCopyWith<$Res>? get votes {
    if (_value.votes == null) {
      return null;
    }

    return $GameVoteListRelationFilterCopyWith<$Res>(_value.votes!, (value) {
      return _then(_value.copyWith(votes: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EveningRatingListRelationFilterCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $EveningRatingListRelationFilterCopyWith<$Res>(_value.ratings!, (
      value,
    ) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageListRelationFilterCopyWith<$Res>? get messages {
    if (_value.messages == null) {
      return null;
    }

    return $QuickMessageListRelationFilterCopyWith<$Res>(_value.messages!, (
      value,
    ) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisinePreferenceListRelationFilterCopyWith<$Res>? get preferences {
    if (_value.preferences == null) {
      return null;
    }

    return $CuisinePreferenceListRelationFilterCopyWith<$Res>(
      _value.preferences!,
      (value) {
        return _then(_value.copyWith(preferences: value) as $Val);
      },
    );
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodOrderListRelationFilterCopyWith<$Res>? get orders {
    if (_value.orders == null) {
      return null;
    }

    return $FoodOrderListRelationFilterCopyWith<$Res>(_value.orders!, (value) {
      return _then(_value.copyWith(orders: value) as $Val);
    });
  }

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserWhereInputImplCopyWith<$Res>
    implements $UserWhereInputCopyWith<$Res> {
  factory _$$UserWhereInputImplCopyWith(
    _$UserWhereInputImpl value,
    $Res Function(_$UserWhereInputImpl) then,
  ) = __$$UserWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get username;
  @override
  $StringFilterCopyWith<$Res>? get displayName;
  @override
  $GameSessionListRelationFilterCopyWith<$Res>? get hostedSessions;
  @override
  $GroupMembershipListRelationFilterCopyWith<$Res>? get memberships;
  @override
  $GroupListRelationFilterCopyWith<$Res>? get createdGroups;
  @override
  $GameProposalListRelationFilterCopyWith<$Res>? get proposals;
  @override
  $GameVoteListRelationFilterCopyWith<$Res>? get votes;
  @override
  $EveningRatingListRelationFilterCopyWith<$Res>? get ratings;
  @override
  $QuickMessageListRelationFilterCopyWith<$Res>? get messages;
  @override
  $CuisinePreferenceListRelationFilterCopyWith<$Res>? get preferences;
  @override
  $FoodOrderListRelationFilterCopyWith<$Res>? get orders;
  @override
  $UserWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$UserWhereInputImplCopyWithImpl<$Res>
    extends _$UserWhereInputCopyWithImpl<$Res, _$UserWhereInputImpl>
    implements _$$UserWhereInputImplCopyWith<$Res> {
  __$$UserWhereInputImplCopyWithImpl(
    _$UserWhereInputImpl _value,
    $Res Function(_$UserWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? displayName = freezed,
    Object? hostedSessions = freezed,
    Object? memberships = freezed,
    Object? createdGroups = freezed,
    Object? proposals = freezed,
    Object? votes = freezed,
    Object? ratings = freezed,
    Object? messages = freezed,
    Object? preferences = freezed,
    Object? orders = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$UserWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        hostedSessions: freezed == hostedSessions
            ? _value.hostedSessions
            : hostedSessions // ignore: cast_nullable_to_non_nullable
                  as GameSessionListRelationFilter?,
        memberships: freezed == memberships
            ? _value.memberships
            : memberships // ignore: cast_nullable_to_non_nullable
                  as GroupMembershipListRelationFilter?,
        createdGroups: freezed == createdGroups
            ? _value.createdGroups
            : createdGroups // ignore: cast_nullable_to_non_nullable
                  as GroupListRelationFilter?,
        proposals: freezed == proposals
            ? _value.proposals
            : proposals // ignore: cast_nullable_to_non_nullable
                  as GameProposalListRelationFilter?,
        votes: freezed == votes
            ? _value.votes
            : votes // ignore: cast_nullable_to_non_nullable
                  as GameVoteListRelationFilter?,
        ratings: freezed == ratings
            ? _value.ratings
            : ratings // ignore: cast_nullable_to_non_nullable
                  as EveningRatingListRelationFilter?,
        messages: freezed == messages
            ? _value.messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as QuickMessageListRelationFilter?,
        preferences: freezed == preferences
            ? _value.preferences
            : preferences // ignore: cast_nullable_to_non_nullable
                  as CuisinePreferenceListRelationFilter?,
        orders: freezed == orders
            ? _value.orders
            : orders // ignore: cast_nullable_to_non_nullable
                  as FoodOrderListRelationFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<UserWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<UserWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as UserWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$UserWhereInputImpl extends _UserWhereInput {
  const _$UserWhereInputImpl({
    this.id,
    this.username,
    this.displayName,
    this.hostedSessions,
    this.memberships,
    this.createdGroups,
    this.proposals,
    this.votes,
    this.ratings,
    this.messages,
    this.preferences,
    this.orders,
    final List<UserWhereInput>? AND,
    final List<UserWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? username;
  @override
  final StringFilter? displayName;
  @override
  final GameSessionListRelationFilter? hostedSessions;
  @override
  final GroupMembershipListRelationFilter? memberships;
  @override
  final GroupListRelationFilter? createdGroups;
  @override
  final GameProposalListRelationFilter? proposals;
  @override
  final GameVoteListRelationFilter? votes;
  @override
  final EveningRatingListRelationFilter? ratings;
  @override
  final QuickMessageListRelationFilter? messages;
  @override
  final CuisinePreferenceListRelationFilter? preferences;
  @override
  final FoodOrderListRelationFilter? orders;
  final List<UserWhereInput>? _AND;
  @override
  List<UserWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserWhereInput>? _OR;
  @override
  List<UserWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserWhereInput? NOT;

  @override
  String toString() {
    return 'UserWhereInput(id: $id, username: $username, displayName: $displayName, hostedSessions: $hostedSessions, memberships: $memberships, createdGroups: $createdGroups, proposals: $proposals, votes: $votes, ratings: $ratings, messages: $messages, preferences: $preferences, orders: $orders, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.hostedSessions, hostedSessions) ||
                other.hostedSessions == hostedSessions) &&
            (identical(other.memberships, memberships) ||
                other.memberships == memberships) &&
            (identical(other.createdGroups, createdGroups) ||
                other.createdGroups == createdGroups) &&
            (identical(other.proposals, proposals) ||
                other.proposals == proposals) &&
            (identical(other.votes, votes) || other.votes == votes) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.orders, orders) || other.orders == orders) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    username,
    displayName,
    hostedSessions,
    memberships,
    createdGroups,
    proposals,
    votes,
    ratings,
    messages,
    preferences,
    orders,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWhereInputImplCopyWith<_$UserWhereInputImpl> get copyWith =>
      __$$UserWhereInputImplCopyWithImpl<_$UserWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UserWhereInput extends UserWhereInput {
  const factory _UserWhereInput({
    final StringFilter? id,
    final StringFilter? username,
    final StringFilter? displayName,
    final GameSessionListRelationFilter? hostedSessions,
    final GroupMembershipListRelationFilter? memberships,
    final GroupListRelationFilter? createdGroups,
    final GameProposalListRelationFilter? proposals,
    final GameVoteListRelationFilter? votes,
    final EveningRatingListRelationFilter? ratings,
    final QuickMessageListRelationFilter? messages,
    final CuisinePreferenceListRelationFilter? preferences,
    final FoodOrderListRelationFilter? orders,
    final List<UserWhereInput>? AND,
    final List<UserWhereInput>? OR,
    final UserWhereInput? NOT,
  }) = _$UserWhereInputImpl;
  const _UserWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get username;
  @override
  StringFilter? get displayName;
  @override
  GameSessionListRelationFilter? get hostedSessions;
  @override
  GroupMembershipListRelationFilter? get memberships;
  @override
  GroupListRelationFilter? get createdGroups;
  @override
  GameProposalListRelationFilter? get proposals;
  @override
  GameVoteListRelationFilter? get votes;
  @override
  EveningRatingListRelationFilter? get ratings;
  @override
  QuickMessageListRelationFilter? get messages;
  @override
  CuisinePreferenceListRelationFilter? get preferences;
  @override
  FoodOrderListRelationFilter? get orders;
  @override
  List<UserWhereInput>? get AND;
  @override
  List<UserWhereInput>? get OR;
  @override
  UserWhereInput? get NOT;

  /// Create a copy of UserWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWhereInputImplCopyWith<_$UserWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListRelationFilter {
  UserWhereInput? get some => throw _privateConstructorUsedError;
  UserWhereInput? get every => throw _privateConstructorUsedError;
  UserWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListRelationFilterCopyWith<UserListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListRelationFilterCopyWith<$Res> {
  factory $UserListRelationFilterCopyWith(
    UserListRelationFilter value,
    $Res Function(UserListRelationFilter) then,
  ) = _$UserListRelationFilterCopyWithImpl<$Res, UserListRelationFilter>;
  @useResult
  $Res call({
    UserWhereInput? some,
    UserWhereInput? every,
    UserWhereInput? none,
  });

  $UserWhereInputCopyWith<$Res>? get some;
  $UserWhereInputCopyWith<$Res>? get every;
  $UserWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$UserListRelationFilterCopyWithImpl<
  $Res,
  $Val extends UserListRelationFilter
>
    implements $UserListRelationFilterCopyWith<$Res> {
  _$UserListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListRelationFilter
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
                      as UserWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as UserWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as UserWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListRelationFilterImplCopyWith<$Res>
    implements $UserListRelationFilterCopyWith<$Res> {
  factory _$$UserListRelationFilterImplCopyWith(
    _$UserListRelationFilterImpl value,
    $Res Function(_$UserListRelationFilterImpl) then,
  ) = __$$UserListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UserWhereInput? some,
    UserWhereInput? every,
    UserWhereInput? none,
  });

  @override
  $UserWhereInputCopyWith<$Res>? get some;
  @override
  $UserWhereInputCopyWith<$Res>? get every;
  @override
  $UserWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$UserListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$UserListRelationFilterCopyWithImpl<$Res, _$UserListRelationFilterImpl>
    implements _$$UserListRelationFilterImplCopyWith<$Res> {
  __$$UserListRelationFilterImplCopyWithImpl(
    _$UserListRelationFilterImpl _value,
    $Res Function(_$UserListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$UserListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as UserWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as UserWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as UserWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$UserListRelationFilterImpl extends _UserListRelationFilter {
  const _$UserListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final UserWhereInput? some;
  @override
  final UserWhereInput? every;
  @override
  final UserWhereInput? none;

  @override
  String toString() {
    return 'UserListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListRelationFilterImplCopyWith<_$UserListRelationFilterImpl>
  get copyWith =>
      __$$UserListRelationFilterImplCopyWithImpl<_$UserListRelationFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _UserListRelationFilter extends UserListRelationFilter {
  const factory _UserListRelationFilter({
    final UserWhereInput? some,
    final UserWhereInput? every,
    final UserWhereInput? none,
  }) = _$UserListRelationFilterImpl;
  const _UserListRelationFilter._() : super._();

  @override
  UserWhereInput? get some;
  @override
  UserWhereInput? get every;
  @override
  UserWhereInput? get none;

  /// Create a copy of UserListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListRelationFilterImplCopyWith<_$UserListRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserRelationFilter {
  @JsonKey(name: 'is')
  UserWhereInput? get is_ => throw _privateConstructorUsedError;
  UserWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRelationFilterCopyWith<UserRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRelationFilterCopyWith<$Res> {
  factory $UserRelationFilterCopyWith(
    UserRelationFilter value,
    $Res Function(UserRelationFilter) then,
  ) = _$UserRelationFilterCopyWithImpl<$Res, UserRelationFilter>;
  @useResult
  $Res call({@JsonKey(name: 'is') UserWhereInput? is_, UserWhereInput? isNot});

  $UserWhereInputCopyWith<$Res>? get is_;
  $UserWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$UserRelationFilterCopyWithImpl<$Res, $Val extends UserRelationFilter>
    implements $UserRelationFilterCopyWith<$Res> {
  _$UserRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as UserWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as UserWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $UserWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRelationFilterImplCopyWith<$Res>
    implements $UserRelationFilterCopyWith<$Res> {
  factory _$$UserRelationFilterImplCopyWith(
    _$UserRelationFilterImpl value,
    $Res Function(_$UserRelationFilterImpl) then,
  ) = __$$UserRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'is') UserWhereInput? is_, UserWhereInput? isNot});

  @override
  $UserWhereInputCopyWith<$Res>? get is_;
  @override
  $UserWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$UserRelationFilterImplCopyWithImpl<$Res>
    extends _$UserRelationFilterCopyWithImpl<$Res, _$UserRelationFilterImpl>
    implements _$$UserRelationFilterImplCopyWith<$Res> {
  __$$UserRelationFilterImplCopyWithImpl(
    _$UserRelationFilterImpl _value,
    $Res Function(_$UserRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$UserRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as UserWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as UserWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$UserRelationFilterImpl extends _UserRelationFilter {
  const _$UserRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot})
    : super._();

  @override
  @JsonKey(name: 'is')
  final UserWhereInput? is_;
  @override
  final UserWhereInput? isNot;

  @override
  String toString() {
    return 'UserRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRelationFilterImplCopyWith<_$UserRelationFilterImpl> get copyWith =>
      __$$UserRelationFilterImplCopyWithImpl<_$UserRelationFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _UserRelationFilter extends UserRelationFilter {
  const factory _UserRelationFilter({
    @JsonKey(name: 'is') final UserWhereInput? is_,
    final UserWhereInput? isNot,
  }) = _$UserRelationFilterImpl;
  const _UserRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  UserWhereInput? get is_;
  @override
  UserWhereInput? get isNot;

  /// Create a copy of UserRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRelationFilterImplCopyWith<_$UserRelationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get username => throw _privateConstructorUsedError;
  SortOrder? get displayName => throw _privateConstructorUsedError;

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserOrderByInputCopyWith<UserOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderByInputCopyWith<$Res> {
  factory $UserOrderByInputCopyWith(
    UserOrderByInput value,
    $Res Function(UserOrderByInput) then,
  ) = _$UserOrderByInputCopyWithImpl<$Res, UserOrderByInput>;
  @useResult
  $Res call({SortOrder? id, SortOrder? username, SortOrder? displayName});
}

/// @nodoc
class _$UserOrderByInputCopyWithImpl<$Res, $Val extends UserOrderByInput>
    implements $UserOrderByInputCopyWith<$Res> {
  _$UserOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? displayName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserOrderByInputImplCopyWith<$Res>
    implements $UserOrderByInputCopyWith<$Res> {
  factory _$$UserOrderByInputImplCopyWith(
    _$UserOrderByInputImpl value,
    $Res Function(_$UserOrderByInputImpl) then,
  ) = __$$UserOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortOrder? id, SortOrder? username, SortOrder? displayName});
}

/// @nodoc
class __$$UserOrderByInputImplCopyWithImpl<$Res>
    extends _$UserOrderByInputCopyWithImpl<$Res, _$UserOrderByInputImpl>
    implements _$$UserOrderByInputImplCopyWith<$Res> {
  __$$UserOrderByInputImplCopyWithImpl(
    _$UserOrderByInputImpl _value,
    $Res Function(_$UserOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? displayName = freezed,
  }) {
    return _then(
      _$UserOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$UserOrderByInputImpl extends _UserOrderByInput {
  const _$UserOrderByInputImpl({this.id, this.username, this.displayName})
    : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? username;
  @override
  final SortOrder? displayName;

  @override
  String toString() {
    return 'UserOrderByInput(id: $id, username: $username, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username, displayName);

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrderByInputImplCopyWith<_$UserOrderByInputImpl> get copyWith =>
      __$$UserOrderByInputImplCopyWithImpl<_$UserOrderByInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UserOrderByInput extends UserOrderByInput {
  const factory _UserOrderByInput({
    final SortOrder? id,
    final SortOrder? username,
    final SortOrder? displayName,
  }) = _$UserOrderByInputImpl;
  const _UserOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get username;
  @override
  SortOrder? get displayName;

  /// Create a copy of UserOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserOrderByInputImplCopyWith<_$UserOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
