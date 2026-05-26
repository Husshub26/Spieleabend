// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameSession {
  String get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Group? get group => throw _privateConstructorUsedError;
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get host => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool get finished => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameProposal>? get proposals => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<EveningRating>? get ratings => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<QuickMessage>? get messages => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CuisinePreference>? get preferences =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<FoodOrder>? get orders => throw _privateConstructorUsedError;

  /// Create a copy of GameSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionCopyWith<GameSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionCopyWith<$Res> {
  factory $GameSessionCopyWith(
    GameSession value,
    $Res Function(GameSession) then,
  ) = _$GameSessionCopyWithImpl<$Res, GameSession>;
  @useResult
  $Res call({
    String id,
    String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) Group? group,
    DateTime scheduledAt,
    String hostId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? host,
    String location,
    bool finished,
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
  });

  $GroupCopyWith<$Res>? get group;
  $UserCopyWith<$Res>? get host;
}

/// @nodoc
class _$GameSessionCopyWithImpl<$Res, $Val extends GameSession>
    implements $GameSessionCopyWith<$Res> {
  _$GameSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? group = freezed,
    Object? scheduledAt = null,
    Object? hostId = null,
    Object? host = freezed,
    Object? location = null,
    Object? finished = null,
    Object? proposals = freezed,
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
            groupId: null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String,
            group: freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as Group?,
            scheduledAt: null == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            hostId: null == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as String,
            host: freezed == host
                ? _value.host
                : host // ignore: cast_nullable_to_non_nullable
                      as User?,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            finished: null == finished
                ? _value.finished
                : finished // ignore: cast_nullable_to_non_nullable
                      as bool,
            proposals: freezed == proposals
                ? _value.proposals
                : proposals // ignore: cast_nullable_to_non_nullable
                      as List<GameProposal>?,
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

  /// Create a copy of GameSession
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

  /// Create a copy of GameSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get host {
    if (_value.host == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.host!, (value) {
      return _then(_value.copyWith(host: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameSessionImplCopyWith<$Res>
    implements $GameSessionCopyWith<$Res> {
  factory _$$GameSessionImplCopyWith(
    _$GameSessionImpl value,
    $Res Function(_$GameSessionImpl) then,
  ) = __$$GameSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) Group? group,
    DateTime scheduledAt,
    String hostId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? host,
    String location,
    bool finished,
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
  });

  @override
  $GroupCopyWith<$Res>? get group;
  @override
  $UserCopyWith<$Res>? get host;
}

/// @nodoc
class __$$GameSessionImplCopyWithImpl<$Res>
    extends _$GameSessionCopyWithImpl<$Res, _$GameSessionImpl>
    implements _$$GameSessionImplCopyWith<$Res> {
  __$$GameSessionImplCopyWithImpl(
    _$GameSessionImpl _value,
    $Res Function(_$GameSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? group = freezed,
    Object? scheduledAt = null,
    Object? hostId = null,
    Object? host = freezed,
    Object? location = null,
    Object? finished = null,
    Object? proposals = freezed,
    Object? ratings = freezed,
    Object? messages = freezed,
    Object? preferences = freezed,
    Object? orders = freezed,
  }) {
    return _then(
      _$GameSessionImpl(
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
        scheduledAt: null == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        hostId: null == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as String,
        host: freezed == host
            ? _value.host
            : host // ignore: cast_nullable_to_non_nullable
                  as User?,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        finished: null == finished
            ? _value.finished
            : finished // ignore: cast_nullable_to_non_nullable
                  as bool,
        proposals: freezed == proposals
            ? _value._proposals
            : proposals // ignore: cast_nullable_to_non_nullable
                  as List<GameProposal>?,
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

class _$GameSessionImpl extends _GameSession {
  const _$GameSessionImpl({
    required this.id,
    required this.groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.group,
    required this.scheduledAt,
    required this.hostId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.host,
    required this.location,
    this.finished = false,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameProposal>? proposals,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<EveningRating>? ratings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<QuickMessage>? messages,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<CuisinePreference>? preferences,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<FoodOrder>? orders,
  }) : _proposals = proposals,
       _ratings = ratings,
       _messages = messages,
       _preferences = preferences,
       _orders = orders,
       super._();

  @override
  final String id;
  @override
  final String groupId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Group? group;
  @override
  final DateTime scheduledAt;
  @override
  final String hostId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? host;
  @override
  final String location;
  @override
  @JsonKey()
  final bool finished;
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
    return 'GameSession(id: $id, groupId: $groupId, group: $group, scheduledAt: $scheduledAt, hostId: $hostId, host: $host, location: $location, finished: $finished, proposals: $proposals, ratings: $ratings, messages: $messages, preferences: $preferences, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            const DeepCollectionEquality().equals(
              other._proposals,
              _proposals,
            ) &&
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
    groupId,
    group,
    scheduledAt,
    hostId,
    host,
    location,
    finished,
    const DeepCollectionEquality().hash(_proposals),
    const DeepCollectionEquality().hash(_ratings),
    const DeepCollectionEquality().hash(_messages),
    const DeepCollectionEquality().hash(_preferences),
    const DeepCollectionEquality().hash(_orders),
  );

  /// Create a copy of GameSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionImplCopyWith<_$GameSessionImpl> get copyWith =>
      __$$GameSessionImplCopyWithImpl<_$GameSessionImpl>(this, _$identity);
}

abstract class _GameSession extends GameSession {
  const factory _GameSession({
    required final String id,
    required final String groupId,
    @JsonKey(includeFromJson: false, includeToJson: false) final Group? group,
    required final DateTime scheduledAt,
    required final String hostId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? host,
    required final String location,
    final bool finished,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameProposal>? proposals,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<EveningRating>? ratings,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<QuickMessage>? messages,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<CuisinePreference>? preferences,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<FoodOrder>? orders,
  }) = _$GameSessionImpl;
  const _GameSession._() : super._();

  @override
  String get id;
  @override
  String get groupId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Group? get group;
  @override
  DateTime get scheduledAt;
  @override
  String get hostId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get host;
  @override
  String get location;
  @override
  bool get finished;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameProposal>? get proposals;
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

  /// Create a copy of GameSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionImplCopyWith<_$GameSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGameSessionInput {
  String get groupId => throw _privateConstructorUsedError;
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool? get finished => throw _privateConstructorUsedError;

  /// Create a copy of CreateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGameSessionInputCopyWith<CreateGameSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameSessionInputCopyWith<$Res> {
  factory $CreateGameSessionInputCopyWith(
    CreateGameSessionInput value,
    $Res Function(CreateGameSessionInput) then,
  ) = _$CreateGameSessionInputCopyWithImpl<$Res, CreateGameSessionInput>;
  @useResult
  $Res call({
    String groupId,
    DateTime scheduledAt,
    String hostId,
    String location,
    bool? finished,
  });
}

/// @nodoc
class _$CreateGameSessionInputCopyWithImpl<
  $Res,
  $Val extends CreateGameSessionInput
>
    implements $CreateGameSessionInputCopyWith<$Res> {
  _$CreateGameSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? scheduledAt = null,
    Object? hostId = null,
    Object? location = null,
    Object? finished = freezed,
  }) {
    return _then(
      _value.copyWith(
            groupId: null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String,
            scheduledAt: null == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            hostId: null == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            finished: freezed == finished
                ? _value.finished
                : finished // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGameSessionInputImplCopyWith<$Res>
    implements $CreateGameSessionInputCopyWith<$Res> {
  factory _$$CreateGameSessionInputImplCopyWith(
    _$CreateGameSessionInputImpl value,
    $Res Function(_$CreateGameSessionInputImpl) then,
  ) = __$$CreateGameSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String groupId,
    DateTime scheduledAt,
    String hostId,
    String location,
    bool? finished,
  });
}

/// @nodoc
class __$$CreateGameSessionInputImplCopyWithImpl<$Res>
    extends
        _$CreateGameSessionInputCopyWithImpl<$Res, _$CreateGameSessionInputImpl>
    implements _$$CreateGameSessionInputImplCopyWith<$Res> {
  __$$CreateGameSessionInputImplCopyWithImpl(
    _$CreateGameSessionInputImpl _value,
    $Res Function(_$CreateGameSessionInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? scheduledAt = null,
    Object? hostId = null,
    Object? location = null,
    Object? finished = freezed,
  }) {
    return _then(
      _$CreateGameSessionInputImpl(
        groupId: null == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String,
        scheduledAt: null == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        hostId: null == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        finished: freezed == finished
            ? _value.finished
            : finished // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$CreateGameSessionInputImpl extends _CreateGameSessionInput {
  const _$CreateGameSessionInputImpl({
    required this.groupId,
    required this.scheduledAt,
    required this.hostId,
    required this.location,
    this.finished = false,
  }) : super._();

  @override
  final String groupId;
  @override
  final DateTime scheduledAt;
  @override
  final String hostId;
  @override
  final String location;
  @override
  @JsonKey()
  final bool? finished;

  @override
  String toString() {
    return 'CreateGameSessionInput(groupId: $groupId, scheduledAt: $scheduledAt, hostId: $hostId, location: $location, finished: $finished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGameSessionInputImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.finished, finished) ||
                other.finished == finished));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    groupId,
    scheduledAt,
    hostId,
    location,
    finished,
  );

  /// Create a copy of CreateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGameSessionInputImplCopyWith<_$CreateGameSessionInputImpl>
  get copyWith =>
      __$$CreateGameSessionInputImplCopyWithImpl<_$CreateGameSessionInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateGameSessionInput extends CreateGameSessionInput {
  const factory _CreateGameSessionInput({
    required final String groupId,
    required final DateTime scheduledAt,
    required final String hostId,
    required final String location,
    final bool? finished,
  }) = _$CreateGameSessionInputImpl;
  const _CreateGameSessionInput._() : super._();

  @override
  String get groupId;
  @override
  DateTime get scheduledAt;
  @override
  String get hostId;
  @override
  String get location;
  @override
  bool? get finished;

  /// Create a copy of CreateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGameSessionInputImplCopyWith<_$CreateGameSessionInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGameSessionInput {
  String? get groupId => throw _privateConstructorUsedError;
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  String? get hostId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  bool? get finished => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGameSessionInputCopyWith<UpdateGameSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGameSessionInputCopyWith<$Res> {
  factory $UpdateGameSessionInputCopyWith(
    UpdateGameSessionInput value,
    $Res Function(UpdateGameSessionInput) then,
  ) = _$UpdateGameSessionInputCopyWithImpl<$Res, UpdateGameSessionInput>;
  @useResult
  $Res call({
    String? groupId,
    DateTime? scheduledAt,
    String? hostId,
    String? location,
    bool? finished,
  });
}

/// @nodoc
class _$UpdateGameSessionInputCopyWithImpl<
  $Res,
  $Val extends UpdateGameSessionInput
>
    implements $UpdateGameSessionInputCopyWith<$Res> {
  _$UpdateGameSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? scheduledAt = freezed,
    Object? hostId = freezed,
    Object? location = freezed,
    Object? finished = freezed,
  }) {
    return _then(
      _value.copyWith(
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String?,
            scheduledAt: freezed == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            hostId: freezed == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            finished: freezed == finished
                ? _value.finished
                : finished // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateGameSessionInputImplCopyWith<$Res>
    implements $UpdateGameSessionInputCopyWith<$Res> {
  factory _$$UpdateGameSessionInputImplCopyWith(
    _$UpdateGameSessionInputImpl value,
    $Res Function(_$UpdateGameSessionInputImpl) then,
  ) = __$$UpdateGameSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? groupId,
    DateTime? scheduledAt,
    String? hostId,
    String? location,
    bool? finished,
  });
}

/// @nodoc
class __$$UpdateGameSessionInputImplCopyWithImpl<$Res>
    extends
        _$UpdateGameSessionInputCopyWithImpl<$Res, _$UpdateGameSessionInputImpl>
    implements _$$UpdateGameSessionInputImplCopyWith<$Res> {
  __$$UpdateGameSessionInputImplCopyWithImpl(
    _$UpdateGameSessionInputImpl _value,
    $Res Function(_$UpdateGameSessionInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? scheduledAt = freezed,
    Object? hostId = freezed,
    Object? location = freezed,
    Object? finished = freezed,
  }) {
    return _then(
      _$UpdateGameSessionInputImpl(
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String?,
        scheduledAt: freezed == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        hostId: freezed == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        finished: freezed == finished
            ? _value.finished
            : finished // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateGameSessionInputImpl extends _UpdateGameSessionInput {
  const _$UpdateGameSessionInputImpl({
    this.groupId,
    this.scheduledAt,
    this.hostId,
    this.location,
    this.finished,
  }) : super._();

  @override
  final String? groupId;
  @override
  final DateTime? scheduledAt;
  @override
  final String? hostId;
  @override
  final String? location;
  @override
  final bool? finished;

  @override
  String toString() {
    return 'UpdateGameSessionInput(groupId: $groupId, scheduledAt: $scheduledAt, hostId: $hostId, location: $location, finished: $finished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGameSessionInputImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.finished, finished) ||
                other.finished == finished));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    groupId,
    scheduledAt,
    hostId,
    location,
    finished,
  );

  /// Create a copy of UpdateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGameSessionInputImplCopyWith<_$UpdateGameSessionInputImpl>
  get copyWith =>
      __$$UpdateGameSessionInputImplCopyWithImpl<_$UpdateGameSessionInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateGameSessionInput extends UpdateGameSessionInput {
  const factory _UpdateGameSessionInput({
    final String? groupId,
    final DateTime? scheduledAt,
    final String? hostId,
    final String? location,
    final bool? finished,
  }) = _$UpdateGameSessionInputImpl;
  const _UpdateGameSessionInput._() : super._();

  @override
  String? get groupId;
  @override
  DateTime? get scheduledAt;
  @override
  String? get hostId;
  @override
  String? get location;
  @override
  bool? get finished;

  /// Create a copy of UpdateGameSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGameSessionInputImplCopyWith<_$UpdateGameSessionInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameSessionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of GameSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionWhereUniqueInputCopyWith<GameSessionWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionWhereUniqueInputCopyWith<$Res> {
  factory $GameSessionWhereUniqueInputCopyWith(
    GameSessionWhereUniqueInput value,
    $Res Function(GameSessionWhereUniqueInput) then,
  ) =
      _$GameSessionWhereUniqueInputCopyWithImpl<
        $Res,
        GameSessionWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GameSessionWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends GameSessionWhereUniqueInput
>
    implements $GameSessionWhereUniqueInputCopyWith<$Res> {
  _$GameSessionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSessionWhereUniqueInput
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
abstract class _$$GameSessionWhereUniqueInputImplCopyWith<$Res>
    implements $GameSessionWhereUniqueInputCopyWith<$Res> {
  factory _$$GameSessionWhereUniqueInputImplCopyWith(
    _$GameSessionWhereUniqueInputImpl value,
    $Res Function(_$GameSessionWhereUniqueInputImpl) then,
  ) = __$$GameSessionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GameSessionWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$GameSessionWhereUniqueInputCopyWithImpl<
          $Res,
          _$GameSessionWhereUniqueInputImpl
        >
    implements _$$GameSessionWhereUniqueInputImplCopyWith<$Res> {
  __$$GameSessionWhereUniqueInputImplCopyWithImpl(
    _$GameSessionWhereUniqueInputImpl _value,
    $Res Function(_$GameSessionWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$GameSessionWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GameSessionWhereUniqueInputImpl extends _GameSessionWhereUniqueInput {
  const _$GameSessionWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'GameSessionWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GameSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionWhereUniqueInputImplCopyWith<_$GameSessionWhereUniqueInputImpl>
  get copyWith =>
      __$$GameSessionWhereUniqueInputImplCopyWithImpl<
        _$GameSessionWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _GameSessionWhereUniqueInput
    extends GameSessionWhereUniqueInput {
  const factory _GameSessionWhereUniqueInput({final String? id}) =
      _$GameSessionWhereUniqueInputImpl;
  const _GameSessionWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of GameSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionWhereUniqueInputImplCopyWith<_$GameSessionWhereUniqueInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameSessionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get groupId => throw _privateConstructorUsedError;
  GroupRelationFilter? get group => throw _privateConstructorUsedError;
  DateTimeFilter? get scheduledAt => throw _privateConstructorUsedError;
  StringFilter? get hostId => throw _privateConstructorUsedError;
  UserRelationFilter? get host => throw _privateConstructorUsedError;
  StringFilter? get location => throw _privateConstructorUsedError;
  BooleanFilter? get finished => throw _privateConstructorUsedError;
  GameProposalListRelationFilter? get proposals =>
      throw _privateConstructorUsedError;
  EveningRatingListRelationFilter? get ratings =>
      throw _privateConstructorUsedError;
  QuickMessageListRelationFilter? get messages =>
      throw _privateConstructorUsedError;
  CuisinePreferenceListRelationFilter? get preferences =>
      throw _privateConstructorUsedError;
  FoodOrderListRelationFilter? get orders => throw _privateConstructorUsedError;
  List<GameSessionWhereInput>? get AND => throw _privateConstructorUsedError;
  List<GameSessionWhereInput>? get OR => throw _privateConstructorUsedError;
  GameSessionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionWhereInputCopyWith<GameSessionWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionWhereInputCopyWith<$Res> {
  factory $GameSessionWhereInputCopyWith(
    GameSessionWhereInput value,
    $Res Function(GameSessionWhereInput) then,
  ) = _$GameSessionWhereInputCopyWithImpl<$Res, GameSessionWhereInput>;
  @useResult
  $Res call({
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
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get groupId;
  $GroupRelationFilterCopyWith<$Res>? get group;
  $DateTimeFilterCopyWith<$Res>? get scheduledAt;
  $StringFilterCopyWith<$Res>? get hostId;
  $UserRelationFilterCopyWith<$Res>? get host;
  $StringFilterCopyWith<$Res>? get location;
  $BooleanFilterCopyWith<$Res>? get finished;
  $GameProposalListRelationFilterCopyWith<$Res>? get proposals;
  $EveningRatingListRelationFilterCopyWith<$Res>? get ratings;
  $QuickMessageListRelationFilterCopyWith<$Res>? get messages;
  $CuisinePreferenceListRelationFilterCopyWith<$Res>? get preferences;
  $FoodOrderListRelationFilterCopyWith<$Res>? get orders;
  $GameSessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$GameSessionWhereInputCopyWithImpl<
  $Res,
  $Val extends GameSessionWhereInput
>
    implements $GameSessionWhereInputCopyWith<$Res> {
  _$GameSessionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? group = freezed,
    Object? scheduledAt = freezed,
    Object? hostId = freezed,
    Object? host = freezed,
    Object? location = freezed,
    Object? finished = freezed,
    Object? proposals = freezed,
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
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            group: freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as GroupRelationFilter?,
            scheduledAt: freezed == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTimeFilter?,
            hostId: freezed == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            host: freezed == host
                ? _value.host
                : host // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            finished: freezed == finished
                ? _value.finished
                : finished // ignore: cast_nullable_to_non_nullable
                      as BooleanFilter?,
            proposals: freezed == proposals
                ? _value.proposals
                : proposals // ignore: cast_nullable_to_non_nullable
                      as GameProposalListRelationFilter?,
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
                      as List<GameSessionWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<GameSessionWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as GameSessionWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get scheduledAt {
    if (_value.scheduledAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.scheduledAt!, (value) {
      return _then(_value.copyWith(scheduledAt: value) as $Val);
    });
  }

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get hostId {
    if (_value.hostId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.hostId!, (value) {
      return _then(_value.copyWith(hostId: value) as $Val);
    });
  }

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get host {
    if (_value.host == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.host!, (value) {
      return _then(_value.copyWith(host: value) as $Val);
    });
  }

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get finished {
    if (_value.finished == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.finished!, (value) {
      return _then(_value.copyWith(finished: value) as $Val);
    });
  }

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
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

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $GameSessionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameSessionWhereInputImplCopyWith<$Res>
    implements $GameSessionWhereInputCopyWith<$Res> {
  factory _$$GameSessionWhereInputImplCopyWith(
    _$GameSessionWhereInputImpl value,
    $Res Function(_$GameSessionWhereInputImpl) then,
  ) = __$$GameSessionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get groupId;
  @override
  $GroupRelationFilterCopyWith<$Res>? get group;
  @override
  $DateTimeFilterCopyWith<$Res>? get scheduledAt;
  @override
  $StringFilterCopyWith<$Res>? get hostId;
  @override
  $UserRelationFilterCopyWith<$Res>? get host;
  @override
  $StringFilterCopyWith<$Res>? get location;
  @override
  $BooleanFilterCopyWith<$Res>? get finished;
  @override
  $GameProposalListRelationFilterCopyWith<$Res>? get proposals;
  @override
  $EveningRatingListRelationFilterCopyWith<$Res>? get ratings;
  @override
  $QuickMessageListRelationFilterCopyWith<$Res>? get messages;
  @override
  $CuisinePreferenceListRelationFilterCopyWith<$Res>? get preferences;
  @override
  $FoodOrderListRelationFilterCopyWith<$Res>? get orders;
  @override
  $GameSessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$GameSessionWhereInputImplCopyWithImpl<$Res>
    extends
        _$GameSessionWhereInputCopyWithImpl<$Res, _$GameSessionWhereInputImpl>
    implements _$$GameSessionWhereInputImplCopyWith<$Res> {
  __$$GameSessionWhereInputImplCopyWithImpl(
    _$GameSessionWhereInputImpl _value,
    $Res Function(_$GameSessionWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? group = freezed,
    Object? scheduledAt = freezed,
    Object? hostId = freezed,
    Object? host = freezed,
    Object? location = freezed,
    Object? finished = freezed,
    Object? proposals = freezed,
    Object? ratings = freezed,
    Object? messages = freezed,
    Object? preferences = freezed,
    Object? orders = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$GameSessionWhereInputImpl(
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
        scheduledAt: freezed == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTimeFilter?,
        hostId: freezed == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        host: freezed == host
            ? _value.host
            : host // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        finished: freezed == finished
            ? _value.finished
            : finished // ignore: cast_nullable_to_non_nullable
                  as BooleanFilter?,
        proposals: freezed == proposals
            ? _value.proposals
            : proposals // ignore: cast_nullable_to_non_nullable
                  as GameProposalListRelationFilter?,
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
                  as List<GameSessionWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<GameSessionWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as GameSessionWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameSessionWhereInputImpl extends _GameSessionWhereInput {
  const _$GameSessionWhereInputImpl({
    this.id,
    this.groupId,
    this.group,
    this.scheduledAt,
    this.hostId,
    this.host,
    this.location,
    this.finished,
    this.proposals,
    this.ratings,
    this.messages,
    this.preferences,
    this.orders,
    final List<GameSessionWhereInput>? AND,
    final List<GameSessionWhereInput>? OR,
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
  final DateTimeFilter? scheduledAt;
  @override
  final StringFilter? hostId;
  @override
  final UserRelationFilter? host;
  @override
  final StringFilter? location;
  @override
  final BooleanFilter? finished;
  @override
  final GameProposalListRelationFilter? proposals;
  @override
  final EveningRatingListRelationFilter? ratings;
  @override
  final QuickMessageListRelationFilter? messages;
  @override
  final CuisinePreferenceListRelationFilter? preferences;
  @override
  final FoodOrderListRelationFilter? orders;
  final List<GameSessionWhereInput>? _AND;
  @override
  List<GameSessionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameSessionWhereInput>? _OR;
  @override
  List<GameSessionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GameSessionWhereInput? NOT;

  @override
  String toString() {
    return 'GameSessionWhereInput(id: $id, groupId: $groupId, group: $group, scheduledAt: $scheduledAt, hostId: $hostId, host: $host, location: $location, finished: $finished, proposals: $proposals, ratings: $ratings, messages: $messages, preferences: $preferences, orders: $orders, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            (identical(other.proposals, proposals) ||
                other.proposals == proposals) &&
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
    groupId,
    group,
    scheduledAt,
    hostId,
    host,
    location,
    finished,
    proposals,
    ratings,
    messages,
    preferences,
    orders,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionWhereInputImplCopyWith<_$GameSessionWhereInputImpl>
  get copyWith =>
      __$$GameSessionWhereInputImplCopyWithImpl<_$GameSessionWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GameSessionWhereInput extends GameSessionWhereInput {
  const factory _GameSessionWhereInput({
    final StringFilter? id,
    final StringFilter? groupId,
    final GroupRelationFilter? group,
    final DateTimeFilter? scheduledAt,
    final StringFilter? hostId,
    final UserRelationFilter? host,
    final StringFilter? location,
    final BooleanFilter? finished,
    final GameProposalListRelationFilter? proposals,
    final EveningRatingListRelationFilter? ratings,
    final QuickMessageListRelationFilter? messages,
    final CuisinePreferenceListRelationFilter? preferences,
    final FoodOrderListRelationFilter? orders,
    final List<GameSessionWhereInput>? AND,
    final List<GameSessionWhereInput>? OR,
    final GameSessionWhereInput? NOT,
  }) = _$GameSessionWhereInputImpl;
  const _GameSessionWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get groupId;
  @override
  GroupRelationFilter? get group;
  @override
  DateTimeFilter? get scheduledAt;
  @override
  StringFilter? get hostId;
  @override
  UserRelationFilter? get host;
  @override
  StringFilter? get location;
  @override
  BooleanFilter? get finished;
  @override
  GameProposalListRelationFilter? get proposals;
  @override
  EveningRatingListRelationFilter? get ratings;
  @override
  QuickMessageListRelationFilter? get messages;
  @override
  CuisinePreferenceListRelationFilter? get preferences;
  @override
  FoodOrderListRelationFilter? get orders;
  @override
  List<GameSessionWhereInput>? get AND;
  @override
  List<GameSessionWhereInput>? get OR;
  @override
  GameSessionWhereInput? get NOT;

  /// Create a copy of GameSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionWhereInputImplCopyWith<_$GameSessionWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameSessionListRelationFilter {
  GameSessionWhereInput? get some => throw _privateConstructorUsedError;
  GameSessionWhereInput? get every => throw _privateConstructorUsedError;
  GameSessionWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionListRelationFilterCopyWith<GameSessionListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionListRelationFilterCopyWith<$Res> {
  factory $GameSessionListRelationFilterCopyWith(
    GameSessionListRelationFilter value,
    $Res Function(GameSessionListRelationFilter) then,
  ) =
      _$GameSessionListRelationFilterCopyWithImpl<
        $Res,
        GameSessionListRelationFilter
      >;
  @useResult
  $Res call({
    GameSessionWhereInput? some,
    GameSessionWhereInput? every,
    GameSessionWhereInput? none,
  });

  $GameSessionWhereInputCopyWith<$Res>? get some;
  $GameSessionWhereInputCopyWith<$Res>? get every;
  $GameSessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$GameSessionListRelationFilterCopyWithImpl<
  $Res,
  $Val extends GameSessionListRelationFilter
>
    implements $GameSessionListRelationFilterCopyWith<$Res> {
  _$GameSessionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSessionListRelationFilter
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
                      as GameSessionWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as GameSessionWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as GameSessionWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $GameSessionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $GameSessionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $GameSessionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameSessionListRelationFilterImplCopyWith<$Res>
    implements $GameSessionListRelationFilterCopyWith<$Res> {
  factory _$$GameSessionListRelationFilterImplCopyWith(
    _$GameSessionListRelationFilterImpl value,
    $Res Function(_$GameSessionListRelationFilterImpl) then,
  ) = __$$GameSessionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GameSessionWhereInput? some,
    GameSessionWhereInput? every,
    GameSessionWhereInput? none,
  });

  @override
  $GameSessionWhereInputCopyWith<$Res>? get some;
  @override
  $GameSessionWhereInputCopyWith<$Res>? get every;
  @override
  $GameSessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$GameSessionListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GameSessionListRelationFilterCopyWithImpl<
          $Res,
          _$GameSessionListRelationFilterImpl
        >
    implements _$$GameSessionListRelationFilterImplCopyWith<$Res> {
  __$$GameSessionListRelationFilterImplCopyWithImpl(
    _$GameSessionListRelationFilterImpl _value,
    $Res Function(_$GameSessionListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$GameSessionListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as GameSessionWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as GameSessionWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as GameSessionWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameSessionListRelationFilterImpl
    extends _GameSessionListRelationFilter {
  const _$GameSessionListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final GameSessionWhereInput? some;
  @override
  final GameSessionWhereInput? every;
  @override
  final GameSessionWhereInput? none;

  @override
  String toString() {
    return 'GameSessionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionListRelationFilterImplCopyWith<
    _$GameSessionListRelationFilterImpl
  >
  get copyWith =>
      __$$GameSessionListRelationFilterImplCopyWithImpl<
        _$GameSessionListRelationFilterImpl
      >(this, _$identity);
}

abstract class _GameSessionListRelationFilter
    extends GameSessionListRelationFilter {
  const factory _GameSessionListRelationFilter({
    final GameSessionWhereInput? some,
    final GameSessionWhereInput? every,
    final GameSessionWhereInput? none,
  }) = _$GameSessionListRelationFilterImpl;
  const _GameSessionListRelationFilter._() : super._();

  @override
  GameSessionWhereInput? get some;
  @override
  GameSessionWhereInput? get every;
  @override
  GameSessionWhereInput? get none;

  /// Create a copy of GameSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionListRelationFilterImplCopyWith<
    _$GameSessionListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameSessionRelationFilter {
  @JsonKey(name: 'is')
  GameSessionWhereInput? get is_ => throw _privateConstructorUsedError;
  GameSessionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionRelationFilterCopyWith<GameSessionRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionRelationFilterCopyWith<$Res> {
  factory $GameSessionRelationFilterCopyWith(
    GameSessionRelationFilter value,
    $Res Function(GameSessionRelationFilter) then,
  ) = _$GameSessionRelationFilterCopyWithImpl<$Res, GameSessionRelationFilter>;
  @useResult
  $Res call({
    @JsonKey(name: 'is') GameSessionWhereInput? is_,
    GameSessionWhereInput? isNot,
  });

  $GameSessionWhereInputCopyWith<$Res>? get is_;
  $GameSessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$GameSessionRelationFilterCopyWithImpl<
  $Res,
  $Val extends GameSessionRelationFilter
>
    implements $GameSessionRelationFilterCopyWith<$Res> {
  _$GameSessionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as GameSessionWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as GameSessionWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $GameSessionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameSessionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $GameSessionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameSessionRelationFilterImplCopyWith<$Res>
    implements $GameSessionRelationFilterCopyWith<$Res> {
  factory _$$GameSessionRelationFilterImplCopyWith(
    _$GameSessionRelationFilterImpl value,
    $Res Function(_$GameSessionRelationFilterImpl) then,
  ) = __$$GameSessionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') GameSessionWhereInput? is_,
    GameSessionWhereInput? isNot,
  });

  @override
  $GameSessionWhereInputCopyWith<$Res>? get is_;
  @override
  $GameSessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$GameSessionRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GameSessionRelationFilterCopyWithImpl<
          $Res,
          _$GameSessionRelationFilterImpl
        >
    implements _$$GameSessionRelationFilterImplCopyWith<$Res> {
  __$$GameSessionRelationFilterImplCopyWithImpl(
    _$GameSessionRelationFilterImpl _value,
    $Res Function(_$GameSessionRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$GameSessionRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as GameSessionWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as GameSessionWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameSessionRelationFilterImpl extends _GameSessionRelationFilter {
  const _$GameSessionRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final GameSessionWhereInput? is_;
  @override
  final GameSessionWhereInput? isNot;

  @override
  String toString() {
    return 'GameSessionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionRelationFilterImplCopyWith<_$GameSessionRelationFilterImpl>
  get copyWith =>
      __$$GameSessionRelationFilterImplCopyWithImpl<
        _$GameSessionRelationFilterImpl
      >(this, _$identity);
}

abstract class _GameSessionRelationFilter extends GameSessionRelationFilter {
  const factory _GameSessionRelationFilter({
    @JsonKey(name: 'is') final GameSessionWhereInput? is_,
    final GameSessionWhereInput? isNot,
  }) = _$GameSessionRelationFilterImpl;
  const _GameSessionRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  GameSessionWhereInput? get is_;
  @override
  GameSessionWhereInput? get isNot;

  /// Create a copy of GameSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionRelationFilterImplCopyWith<_$GameSessionRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameSessionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get groupId => throw _privateConstructorUsedError;
  SortOrder? get scheduledAt => throw _privateConstructorUsedError;
  SortOrder? get hostId => throw _privateConstructorUsedError;
  SortOrder? get location => throw _privateConstructorUsedError;
  SortOrder? get finished => throw _privateConstructorUsedError;

  /// Create a copy of GameSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionOrderByInputCopyWith<GameSessionOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionOrderByInputCopyWith<$Res> {
  factory $GameSessionOrderByInputCopyWith(
    GameSessionOrderByInput value,
    $Res Function(GameSessionOrderByInput) then,
  ) = _$GameSessionOrderByInputCopyWithImpl<$Res, GameSessionOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? groupId,
    SortOrder? scheduledAt,
    SortOrder? hostId,
    SortOrder? location,
    SortOrder? finished,
  });
}

/// @nodoc
class _$GameSessionOrderByInputCopyWithImpl<
  $Res,
  $Val extends GameSessionOrderByInput
>
    implements $GameSessionOrderByInputCopyWith<$Res> {
  _$GameSessionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? scheduledAt = freezed,
    Object? hostId = freezed,
    Object? location = freezed,
    Object? finished = freezed,
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
            scheduledAt: freezed == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            hostId: freezed == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            finished: freezed == finished
                ? _value.finished
                : finished // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameSessionOrderByInputImplCopyWith<$Res>
    implements $GameSessionOrderByInputCopyWith<$Res> {
  factory _$$GameSessionOrderByInputImplCopyWith(
    _$GameSessionOrderByInputImpl value,
    $Res Function(_$GameSessionOrderByInputImpl) then,
  ) = __$$GameSessionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? groupId,
    SortOrder? scheduledAt,
    SortOrder? hostId,
    SortOrder? location,
    SortOrder? finished,
  });
}

/// @nodoc
class __$$GameSessionOrderByInputImplCopyWithImpl<$Res>
    extends
        _$GameSessionOrderByInputCopyWithImpl<
          $Res,
          _$GameSessionOrderByInputImpl
        >
    implements _$$GameSessionOrderByInputImplCopyWith<$Res> {
  __$$GameSessionOrderByInputImplCopyWithImpl(
    _$GameSessionOrderByInputImpl _value,
    $Res Function(_$GameSessionOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? scheduledAt = freezed,
    Object? hostId = freezed,
    Object? location = freezed,
    Object? finished = freezed,
  }) {
    return _then(
      _$GameSessionOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        scheduledAt: freezed == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        hostId: freezed == hostId
            ? _value.hostId
            : hostId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        finished: freezed == finished
            ? _value.finished
            : finished // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$GameSessionOrderByInputImpl extends _GameSessionOrderByInput {
  const _$GameSessionOrderByInputImpl({
    this.id,
    this.groupId,
    this.scheduledAt,
    this.hostId,
    this.location,
    this.finished,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? groupId;
  @override
  final SortOrder? scheduledAt;
  @override
  final SortOrder? hostId;
  @override
  final SortOrder? location;
  @override
  final SortOrder? finished;

  @override
  String toString() {
    return 'GameSessionOrderByInput(id: $id, groupId: $groupId, scheduledAt: $scheduledAt, hostId: $hostId, location: $location, finished: $finished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.finished, finished) ||
                other.finished == finished));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    groupId,
    scheduledAt,
    hostId,
    location,
    finished,
  );

  /// Create a copy of GameSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionOrderByInputImplCopyWith<_$GameSessionOrderByInputImpl>
  get copyWith =>
      __$$GameSessionOrderByInputImplCopyWithImpl<
        _$GameSessionOrderByInputImpl
      >(this, _$identity);
}

abstract class _GameSessionOrderByInput extends GameSessionOrderByInput {
  const factory _GameSessionOrderByInput({
    final SortOrder? id,
    final SortOrder? groupId,
    final SortOrder? scheduledAt,
    final SortOrder? hostId,
    final SortOrder? location,
    final SortOrder? finished,
  }) = _$GameSessionOrderByInputImpl;
  const _GameSessionOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get groupId;
  @override
  SortOrder? get scheduledAt;
  @override
  SortOrder? get hostId;
  @override
  SortOrder? get location;
  @override
  SortOrder? get finished;

  /// Create a copy of GameSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionOrderByInputImplCopyWith<_$GameSessionOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
