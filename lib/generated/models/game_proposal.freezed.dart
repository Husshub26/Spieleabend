// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_proposal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameProposal {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session => throw _privateConstructorUsedError;
  String get proposedById => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get proposedBy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameVote>? get votes => throw _privateConstructorUsedError;

  /// Create a copy of GameProposal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameProposalCopyWith<GameProposal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameProposalCopyWith<$Res> {
  factory $GameProposalCopyWith(
    GameProposal value,
    $Res Function(GameProposal) then,
  ) = _$GameProposalCopyWithImpl<$Res, GameProposal>;
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String proposedById,
    @JsonKey(includeFromJson: false, includeToJson: false) User? proposedBy,
    String title,
    String description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameVote>? votes,
  });

  $GameSessionCopyWith<$Res>? get session;
  $UserCopyWith<$Res>? get proposedBy;
}

/// @nodoc
class _$GameProposalCopyWithImpl<$Res, $Val extends GameProposal>
    implements $GameProposalCopyWith<$Res> {
  _$GameProposalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameProposal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? proposedById = null,
    Object? proposedBy = freezed,
    Object? title = null,
    Object? description = null,
    Object? votes = freezed,
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
            proposedById: null == proposedById
                ? _value.proposedById
                : proposedById // ignore: cast_nullable_to_non_nullable
                      as String,
            proposedBy: freezed == proposedBy
                ? _value.proposedBy
                : proposedBy // ignore: cast_nullable_to_non_nullable
                      as User?,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            votes: freezed == votes
                ? _value.votes
                : votes // ignore: cast_nullable_to_non_nullable
                      as List<GameVote>?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameProposal
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

  /// Create a copy of GameProposal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get proposedBy {
    if (_value.proposedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.proposedBy!, (value) {
      return _then(_value.copyWith(proposedBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameProposalImplCopyWith<$Res>
    implements $GameProposalCopyWith<$Res> {
  factory _$$GameProposalImplCopyWith(
    _$GameProposalImpl value,
    $Res Function(_$GameProposalImpl) then,
  ) = __$$GameProposalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String proposedById,
    @JsonKey(includeFromJson: false, includeToJson: false) User? proposedBy,
    String title,
    String description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameVote>? votes,
  });

  @override
  $GameSessionCopyWith<$Res>? get session;
  @override
  $UserCopyWith<$Res>? get proposedBy;
}

/// @nodoc
class __$$GameProposalImplCopyWithImpl<$Res>
    extends _$GameProposalCopyWithImpl<$Res, _$GameProposalImpl>
    implements _$$GameProposalImplCopyWith<$Res> {
  __$$GameProposalImplCopyWithImpl(
    _$GameProposalImpl _value,
    $Res Function(_$GameProposalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameProposal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? proposedById = null,
    Object? proposedBy = freezed,
    Object? title = null,
    Object? description = null,
    Object? votes = freezed,
  }) {
    return _then(
      _$GameProposalImpl(
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
        proposedById: null == proposedById
            ? _value.proposedById
            : proposedById // ignore: cast_nullable_to_non_nullable
                  as String,
        proposedBy: freezed == proposedBy
            ? _value.proposedBy
            : proposedBy // ignore: cast_nullable_to_non_nullable
                  as User?,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        votes: freezed == votes
            ? _value._votes
            : votes // ignore: cast_nullable_to_non_nullable
                  as List<GameVote>?,
      ),
    );
  }
}

/// @nodoc

class _$GameProposalImpl extends _GameProposal {
  const _$GameProposalImpl({
    required this.id,
    required this.sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.session,
    required this.proposedById,
    @JsonKey(includeFromJson: false, includeToJson: false) this.proposedBy,
    required this.title,
    required this.description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameVote>? votes,
  }) : _votes = votes,
       super._();

  @override
  final String id;
  @override
  final String sessionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final GameSession? session;
  @override
  final String proposedById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? proposedBy;
  @override
  final String title;
  @override
  final String description;
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

  @override
  String toString() {
    return 'GameProposal(id: $id, sessionId: $sessionId, session: $session, proposedById: $proposedById, proposedBy: $proposedBy, title: $title, description: $description, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameProposalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.proposedById, proposedById) ||
                other.proposedById == proposedById) &&
            (identical(other.proposedBy, proposedBy) ||
                other.proposedBy == proposedBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    session,
    proposedById,
    proposedBy,
    title,
    description,
    const DeepCollectionEquality().hash(_votes),
  );

  /// Create a copy of GameProposal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameProposalImplCopyWith<_$GameProposalImpl> get copyWith =>
      __$$GameProposalImplCopyWithImpl<_$GameProposalImpl>(this, _$identity);
}

abstract class _GameProposal extends GameProposal {
  const factory _GameProposal({
    required final String id,
    required final String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final GameSession? session,
    required final String proposedById,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final User? proposedBy,
    required final String title,
    required final String description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<GameVote>? votes,
  }) = _$GameProposalImpl;
  const _GameProposal._() : super._();

  @override
  String get id;
  @override
  String get sessionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session;
  @override
  String get proposedById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get proposedBy;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<GameVote>? get votes;

  /// Create a copy of GameProposal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameProposalImplCopyWith<_$GameProposalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGameProposalInput {
  String get sessionId => throw _privateConstructorUsedError;
  String get proposedById => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of CreateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGameProposalInputCopyWith<CreateGameProposalInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameProposalInputCopyWith<$Res> {
  factory $CreateGameProposalInputCopyWith(
    CreateGameProposalInput value,
    $Res Function(CreateGameProposalInput) then,
  ) = _$CreateGameProposalInputCopyWithImpl<$Res, CreateGameProposalInput>;
  @useResult
  $Res call({
    String sessionId,
    String proposedById,
    String title,
    String description,
  });
}

/// @nodoc
class _$CreateGameProposalInputCopyWithImpl<
  $Res,
  $Val extends CreateGameProposalInput
>
    implements $CreateGameProposalInputCopyWith<$Res> {
  _$CreateGameProposalInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? proposedById = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            proposedById: null == proposedById
                ? _value.proposedById
                : proposedById // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGameProposalInputImplCopyWith<$Res>
    implements $CreateGameProposalInputCopyWith<$Res> {
  factory _$$CreateGameProposalInputImplCopyWith(
    _$CreateGameProposalInputImpl value,
    $Res Function(_$CreateGameProposalInputImpl) then,
  ) = __$$CreateGameProposalInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sessionId,
    String proposedById,
    String title,
    String description,
  });
}

/// @nodoc
class __$$CreateGameProposalInputImplCopyWithImpl<$Res>
    extends
        _$CreateGameProposalInputCopyWithImpl<
          $Res,
          _$CreateGameProposalInputImpl
        >
    implements _$$CreateGameProposalInputImplCopyWith<$Res> {
  __$$CreateGameProposalInputImplCopyWithImpl(
    _$CreateGameProposalInputImpl _value,
    $Res Function(_$CreateGameProposalInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? proposedById = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(
      _$CreateGameProposalInputImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        proposedById: null == proposedById
            ? _value.proposedById
            : proposedById // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateGameProposalInputImpl extends _CreateGameProposalInput {
  const _$CreateGameProposalInputImpl({
    required this.sessionId,
    required this.proposedById,
    required this.title,
    required this.description,
  }) : super._();

  @override
  final String sessionId;
  @override
  final String proposedById;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'CreateGameProposalInput(sessionId: $sessionId, proposedById: $proposedById, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGameProposalInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.proposedById, proposedById) ||
                other.proposedById == proposedById) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionId, proposedById, title, description);

  /// Create a copy of CreateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGameProposalInputImplCopyWith<_$CreateGameProposalInputImpl>
  get copyWith =>
      __$$CreateGameProposalInputImplCopyWithImpl<
        _$CreateGameProposalInputImpl
      >(this, _$identity);
}

abstract class _CreateGameProposalInput extends CreateGameProposalInput {
  const factory _CreateGameProposalInput({
    required final String sessionId,
    required final String proposedById,
    required final String title,
    required final String description,
  }) = _$CreateGameProposalInputImpl;
  const _CreateGameProposalInput._() : super._();

  @override
  String get sessionId;
  @override
  String get proposedById;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of CreateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGameProposalInputImplCopyWith<_$CreateGameProposalInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGameProposalInput {
  String? get sessionId => throw _privateConstructorUsedError;
  String? get proposedById => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGameProposalInputCopyWith<UpdateGameProposalInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGameProposalInputCopyWith<$Res> {
  factory $UpdateGameProposalInputCopyWith(
    UpdateGameProposalInput value,
    $Res Function(UpdateGameProposalInput) then,
  ) = _$UpdateGameProposalInputCopyWithImpl<$Res, UpdateGameProposalInput>;
  @useResult
  $Res call({
    String? sessionId,
    String? proposedById,
    String? title,
    String? description,
  });
}

/// @nodoc
class _$UpdateGameProposalInputCopyWithImpl<
  $Res,
  $Val extends UpdateGameProposalInput
>
    implements $UpdateGameProposalInputCopyWith<$Res> {
  _$UpdateGameProposalInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? proposedById = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _value.copyWith(
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            proposedById: freezed == proposedById
                ? _value.proposedById
                : proposedById // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateGameProposalInputImplCopyWith<$Res>
    implements $UpdateGameProposalInputCopyWith<$Res> {
  factory _$$UpdateGameProposalInputImplCopyWith(
    _$UpdateGameProposalInputImpl value,
    $Res Function(_$UpdateGameProposalInputImpl) then,
  ) = __$$UpdateGameProposalInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? sessionId,
    String? proposedById,
    String? title,
    String? description,
  });
}

/// @nodoc
class __$$UpdateGameProposalInputImplCopyWithImpl<$Res>
    extends
        _$UpdateGameProposalInputCopyWithImpl<
          $Res,
          _$UpdateGameProposalInputImpl
        >
    implements _$$UpdateGameProposalInputImplCopyWith<$Res> {
  __$$UpdateGameProposalInputImplCopyWithImpl(
    _$UpdateGameProposalInputImpl _value,
    $Res Function(_$UpdateGameProposalInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? proposedById = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$UpdateGameProposalInputImpl(
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        proposedById: freezed == proposedById
            ? _value.proposedById
            : proposedById // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateGameProposalInputImpl extends _UpdateGameProposalInput {
  const _$UpdateGameProposalInputImpl({
    this.sessionId,
    this.proposedById,
    this.title,
    this.description,
  }) : super._();

  @override
  final String? sessionId;
  @override
  final String? proposedById;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'UpdateGameProposalInput(sessionId: $sessionId, proposedById: $proposedById, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGameProposalInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.proposedById, proposedById) ||
                other.proposedById == proposedById) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionId, proposedById, title, description);

  /// Create a copy of UpdateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGameProposalInputImplCopyWith<_$UpdateGameProposalInputImpl>
  get copyWith =>
      __$$UpdateGameProposalInputImplCopyWithImpl<
        _$UpdateGameProposalInputImpl
      >(this, _$identity);
}

abstract class _UpdateGameProposalInput extends UpdateGameProposalInput {
  const factory _UpdateGameProposalInput({
    final String? sessionId,
    final String? proposedById,
    final String? title,
    final String? description,
  }) = _$UpdateGameProposalInputImpl;
  const _UpdateGameProposalInput._() : super._();

  @override
  String? get sessionId;
  @override
  String? get proposedById;
  @override
  String? get title;
  @override
  String? get description;

  /// Create a copy of UpdateGameProposalInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGameProposalInputImplCopyWith<_$UpdateGameProposalInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameProposalWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of GameProposalWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameProposalWhereUniqueInputCopyWith<GameProposalWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameProposalWhereUniqueInputCopyWith<$Res> {
  factory $GameProposalWhereUniqueInputCopyWith(
    GameProposalWhereUniqueInput value,
    $Res Function(GameProposalWhereUniqueInput) then,
  ) =
      _$GameProposalWhereUniqueInputCopyWithImpl<
        $Res,
        GameProposalWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GameProposalWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends GameProposalWhereUniqueInput
>
    implements $GameProposalWhereUniqueInputCopyWith<$Res> {
  _$GameProposalWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameProposalWhereUniqueInput
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
abstract class _$$GameProposalWhereUniqueInputImplCopyWith<$Res>
    implements $GameProposalWhereUniqueInputCopyWith<$Res> {
  factory _$$GameProposalWhereUniqueInputImplCopyWith(
    _$GameProposalWhereUniqueInputImpl value,
    $Res Function(_$GameProposalWhereUniqueInputImpl) then,
  ) = __$$GameProposalWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GameProposalWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$GameProposalWhereUniqueInputCopyWithImpl<
          $Res,
          _$GameProposalWhereUniqueInputImpl
        >
    implements _$$GameProposalWhereUniqueInputImplCopyWith<$Res> {
  __$$GameProposalWhereUniqueInputImplCopyWithImpl(
    _$GameProposalWhereUniqueInputImpl _value,
    $Res Function(_$GameProposalWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameProposalWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$GameProposalWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GameProposalWhereUniqueInputImpl extends _GameProposalWhereUniqueInput {
  const _$GameProposalWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'GameProposalWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameProposalWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GameProposalWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameProposalWhereUniqueInputImplCopyWith<
    _$GameProposalWhereUniqueInputImpl
  >
  get copyWith =>
      __$$GameProposalWhereUniqueInputImplCopyWithImpl<
        _$GameProposalWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _GameProposalWhereUniqueInput
    extends GameProposalWhereUniqueInput {
  const factory _GameProposalWhereUniqueInput({final String? id}) =
      _$GameProposalWhereUniqueInputImpl;
  const _GameProposalWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of GameProposalWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameProposalWhereUniqueInputImplCopyWith<
    _$GameProposalWhereUniqueInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameProposalWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get sessionId => throw _privateConstructorUsedError;
  GameSessionRelationFilter? get session => throw _privateConstructorUsedError;
  StringFilter? get proposedById => throw _privateConstructorUsedError;
  UserRelationFilter? get proposedBy => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  GameVoteListRelationFilter? get votes => throw _privateConstructorUsedError;
  List<GameProposalWhereInput>? get AND => throw _privateConstructorUsedError;
  List<GameProposalWhereInput>? get OR => throw _privateConstructorUsedError;
  GameProposalWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameProposalWhereInputCopyWith<GameProposalWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameProposalWhereInputCopyWith<$Res> {
  factory $GameProposalWhereInputCopyWith(
    GameProposalWhereInput value,
    $Res Function(GameProposalWhereInput) then,
  ) = _$GameProposalWhereInputCopyWithImpl<$Res, GameProposalWhereInput>;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? proposedById,
    UserRelationFilter? proposedBy,
    StringFilter? title,
    StringFilter? description,
    GameVoteListRelationFilter? votes,
    List<GameProposalWhereInput>? AND,
    List<GameProposalWhereInput>? OR,
    GameProposalWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get sessionId;
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  $StringFilterCopyWith<$Res>? get proposedById;
  $UserRelationFilterCopyWith<$Res>? get proposedBy;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $GameVoteListRelationFilterCopyWith<$Res>? get votes;
  $GameProposalWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$GameProposalWhereInputCopyWithImpl<
  $Res,
  $Val extends GameProposalWhereInput
>
    implements $GameProposalWhereInputCopyWith<$Res> {
  _$GameProposalWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? proposedById = freezed,
    Object? proposedBy = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? votes = freezed,
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
            proposedById: freezed == proposedById
                ? _value.proposedById
                : proposedById // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            proposedBy: freezed == proposedBy
                ? _value.proposedBy
                : proposedBy // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            votes: freezed == votes
                ? _value.votes
                : votes // ignore: cast_nullable_to_non_nullable
                      as GameVoteListRelationFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<GameProposalWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<GameProposalWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as GameProposalWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameProposalWhereInput
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

  /// Create a copy of GameProposalWhereInput
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

  /// Create a copy of GameProposalWhereInput
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

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get proposedById {
    if (_value.proposedById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.proposedById!, (value) {
      return _then(_value.copyWith(proposedById: value) as $Val);
    });
  }

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get proposedBy {
    if (_value.proposedBy == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.proposedBy!, (value) {
      return _then(_value.copyWith(proposedBy: value) as $Val);
    });
  }

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of GameProposalWhereInput
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

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $GameProposalWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameProposalWhereInputImplCopyWith<$Res>
    implements $GameProposalWhereInputCopyWith<$Res> {
  factory _$$GameProposalWhereInputImplCopyWith(
    _$GameProposalWhereInputImpl value,
    $Res Function(_$GameProposalWhereInputImpl) then,
  ) = __$$GameProposalWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? proposedById,
    UserRelationFilter? proposedBy,
    StringFilter? title,
    StringFilter? description,
    GameVoteListRelationFilter? votes,
    List<GameProposalWhereInput>? AND,
    List<GameProposalWhereInput>? OR,
    GameProposalWhereInput? NOT,
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get sessionId;
  @override
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  @override
  $StringFilterCopyWith<$Res>? get proposedById;
  @override
  $UserRelationFilterCopyWith<$Res>? get proposedBy;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $GameVoteListRelationFilterCopyWith<$Res>? get votes;
  @override
  $GameProposalWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$GameProposalWhereInputImplCopyWithImpl<$Res>
    extends
        _$GameProposalWhereInputCopyWithImpl<$Res, _$GameProposalWhereInputImpl>
    implements _$$GameProposalWhereInputImplCopyWith<$Res> {
  __$$GameProposalWhereInputImplCopyWithImpl(
    _$GameProposalWhereInputImpl _value,
    $Res Function(_$GameProposalWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? proposedById = freezed,
    Object? proposedBy = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? votes = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$GameProposalWhereInputImpl(
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
        proposedById: freezed == proposedById
            ? _value.proposedById
            : proposedById // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        proposedBy: freezed == proposedBy
            ? _value.proposedBy
            : proposedBy // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        votes: freezed == votes
            ? _value.votes
            : votes // ignore: cast_nullable_to_non_nullable
                  as GameVoteListRelationFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<GameProposalWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<GameProposalWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as GameProposalWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameProposalWhereInputImpl extends _GameProposalWhereInput {
  const _$GameProposalWhereInputImpl({
    this.id,
    this.sessionId,
    this.session,
    this.proposedById,
    this.proposedBy,
    this.title,
    this.description,
    this.votes,
    final List<GameProposalWhereInput>? AND,
    final List<GameProposalWhereInput>? OR,
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
  final StringFilter? proposedById;
  @override
  final UserRelationFilter? proposedBy;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final GameVoteListRelationFilter? votes;
  final List<GameProposalWhereInput>? _AND;
  @override
  List<GameProposalWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameProposalWhereInput>? _OR;
  @override
  List<GameProposalWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GameProposalWhereInput? NOT;

  @override
  String toString() {
    return 'GameProposalWhereInput(id: $id, sessionId: $sessionId, session: $session, proposedById: $proposedById, proposedBy: $proposedBy, title: $title, description: $description, votes: $votes, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameProposalWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.proposedById, proposedById) ||
                other.proposedById == proposedById) &&
            (identical(other.proposedBy, proposedBy) ||
                other.proposedBy == proposedBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.votes, votes) || other.votes == votes) &&
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
    proposedById,
    proposedBy,
    title,
    description,
    votes,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameProposalWhereInputImplCopyWith<_$GameProposalWhereInputImpl>
  get copyWith =>
      __$$GameProposalWhereInputImplCopyWithImpl<_$GameProposalWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GameProposalWhereInput extends GameProposalWhereInput {
  const factory _GameProposalWhereInput({
    final StringFilter? id,
    final StringFilter? sessionId,
    final GameSessionRelationFilter? session,
    final StringFilter? proposedById,
    final UserRelationFilter? proposedBy,
    final StringFilter? title,
    final StringFilter? description,
    final GameVoteListRelationFilter? votes,
    final List<GameProposalWhereInput>? AND,
    final List<GameProposalWhereInput>? OR,
    final GameProposalWhereInput? NOT,
  }) = _$GameProposalWhereInputImpl;
  const _GameProposalWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get sessionId;
  @override
  GameSessionRelationFilter? get session;
  @override
  StringFilter? get proposedById;
  @override
  UserRelationFilter? get proposedBy;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  GameVoteListRelationFilter? get votes;
  @override
  List<GameProposalWhereInput>? get AND;
  @override
  List<GameProposalWhereInput>? get OR;
  @override
  GameProposalWhereInput? get NOT;

  /// Create a copy of GameProposalWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameProposalWhereInputImplCopyWith<_$GameProposalWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameProposalListRelationFilter {
  GameProposalWhereInput? get some => throw _privateConstructorUsedError;
  GameProposalWhereInput? get every => throw _privateConstructorUsedError;
  GameProposalWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameProposalListRelationFilterCopyWith<GameProposalListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameProposalListRelationFilterCopyWith<$Res> {
  factory $GameProposalListRelationFilterCopyWith(
    GameProposalListRelationFilter value,
    $Res Function(GameProposalListRelationFilter) then,
  ) =
      _$GameProposalListRelationFilterCopyWithImpl<
        $Res,
        GameProposalListRelationFilter
      >;
  @useResult
  $Res call({
    GameProposalWhereInput? some,
    GameProposalWhereInput? every,
    GameProposalWhereInput? none,
  });

  $GameProposalWhereInputCopyWith<$Res>? get some;
  $GameProposalWhereInputCopyWith<$Res>? get every;
  $GameProposalWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$GameProposalListRelationFilterCopyWithImpl<
  $Res,
  $Val extends GameProposalListRelationFilter
>
    implements $GameProposalListRelationFilterCopyWith<$Res> {
  _$GameProposalListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameProposalListRelationFilter
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
                      as GameProposalWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as GameProposalWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as GameProposalWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $GameProposalWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $GameProposalWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $GameProposalWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameProposalListRelationFilterImplCopyWith<$Res>
    implements $GameProposalListRelationFilterCopyWith<$Res> {
  factory _$$GameProposalListRelationFilterImplCopyWith(
    _$GameProposalListRelationFilterImpl value,
    $Res Function(_$GameProposalListRelationFilterImpl) then,
  ) = __$$GameProposalListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GameProposalWhereInput? some,
    GameProposalWhereInput? every,
    GameProposalWhereInput? none,
  });

  @override
  $GameProposalWhereInputCopyWith<$Res>? get some;
  @override
  $GameProposalWhereInputCopyWith<$Res>? get every;
  @override
  $GameProposalWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$GameProposalListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GameProposalListRelationFilterCopyWithImpl<
          $Res,
          _$GameProposalListRelationFilterImpl
        >
    implements _$$GameProposalListRelationFilterImplCopyWith<$Res> {
  __$$GameProposalListRelationFilterImplCopyWithImpl(
    _$GameProposalListRelationFilterImpl _value,
    $Res Function(_$GameProposalListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$GameProposalListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as GameProposalWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as GameProposalWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as GameProposalWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameProposalListRelationFilterImpl
    extends _GameProposalListRelationFilter {
  const _$GameProposalListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final GameProposalWhereInput? some;
  @override
  final GameProposalWhereInput? every;
  @override
  final GameProposalWhereInput? none;

  @override
  String toString() {
    return 'GameProposalListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameProposalListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameProposalListRelationFilterImplCopyWith<
    _$GameProposalListRelationFilterImpl
  >
  get copyWith =>
      __$$GameProposalListRelationFilterImplCopyWithImpl<
        _$GameProposalListRelationFilterImpl
      >(this, _$identity);
}

abstract class _GameProposalListRelationFilter
    extends GameProposalListRelationFilter {
  const factory _GameProposalListRelationFilter({
    final GameProposalWhereInput? some,
    final GameProposalWhereInput? every,
    final GameProposalWhereInput? none,
  }) = _$GameProposalListRelationFilterImpl;
  const _GameProposalListRelationFilter._() : super._();

  @override
  GameProposalWhereInput? get some;
  @override
  GameProposalWhereInput? get every;
  @override
  GameProposalWhereInput? get none;

  /// Create a copy of GameProposalListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameProposalListRelationFilterImplCopyWith<
    _$GameProposalListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameProposalRelationFilter {
  @JsonKey(name: 'is')
  GameProposalWhereInput? get is_ => throw _privateConstructorUsedError;
  GameProposalWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameProposalRelationFilterCopyWith<GameProposalRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameProposalRelationFilterCopyWith<$Res> {
  factory $GameProposalRelationFilterCopyWith(
    GameProposalRelationFilter value,
    $Res Function(GameProposalRelationFilter) then,
  ) =
      _$GameProposalRelationFilterCopyWithImpl<
        $Res,
        GameProposalRelationFilter
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'is') GameProposalWhereInput? is_,
    GameProposalWhereInput? isNot,
  });

  $GameProposalWhereInputCopyWith<$Res>? get is_;
  $GameProposalWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$GameProposalRelationFilterCopyWithImpl<
  $Res,
  $Val extends GameProposalRelationFilter
>
    implements $GameProposalRelationFilterCopyWith<$Res> {
  _$GameProposalRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as GameProposalWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as GameProposalWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $GameProposalWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $GameProposalWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameProposalRelationFilterImplCopyWith<$Res>
    implements $GameProposalRelationFilterCopyWith<$Res> {
  factory _$$GameProposalRelationFilterImplCopyWith(
    _$GameProposalRelationFilterImpl value,
    $Res Function(_$GameProposalRelationFilterImpl) then,
  ) = __$$GameProposalRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') GameProposalWhereInput? is_,
    GameProposalWhereInput? isNot,
  });

  @override
  $GameProposalWhereInputCopyWith<$Res>? get is_;
  @override
  $GameProposalWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$GameProposalRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GameProposalRelationFilterCopyWithImpl<
          $Res,
          _$GameProposalRelationFilterImpl
        >
    implements _$$GameProposalRelationFilterImplCopyWith<$Res> {
  __$$GameProposalRelationFilterImplCopyWithImpl(
    _$GameProposalRelationFilterImpl _value,
    $Res Function(_$GameProposalRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$GameProposalRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as GameProposalWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as GameProposalWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameProposalRelationFilterImpl extends _GameProposalRelationFilter {
  const _$GameProposalRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final GameProposalWhereInput? is_;
  @override
  final GameProposalWhereInput? isNot;

  @override
  String toString() {
    return 'GameProposalRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameProposalRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameProposalRelationFilterImplCopyWith<_$GameProposalRelationFilterImpl>
  get copyWith =>
      __$$GameProposalRelationFilterImplCopyWithImpl<
        _$GameProposalRelationFilterImpl
      >(this, _$identity);
}

abstract class _GameProposalRelationFilter extends GameProposalRelationFilter {
  const factory _GameProposalRelationFilter({
    @JsonKey(name: 'is') final GameProposalWhereInput? is_,
    final GameProposalWhereInput? isNot,
  }) = _$GameProposalRelationFilterImpl;
  const _GameProposalRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  GameProposalWhereInput? get is_;
  @override
  GameProposalWhereInput? get isNot;

  /// Create a copy of GameProposalRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameProposalRelationFilterImplCopyWith<_$GameProposalRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameProposalOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get sessionId => throw _privateConstructorUsedError;
  SortOrder? get proposedById => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;

  /// Create a copy of GameProposalOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameProposalOrderByInputCopyWith<GameProposalOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameProposalOrderByInputCopyWith<$Res> {
  factory $GameProposalOrderByInputCopyWith(
    GameProposalOrderByInput value,
    $Res Function(GameProposalOrderByInput) then,
  ) = _$GameProposalOrderByInputCopyWithImpl<$Res, GameProposalOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? proposedById,
    SortOrder? title,
    SortOrder? description,
  });
}

/// @nodoc
class _$GameProposalOrderByInputCopyWithImpl<
  $Res,
  $Val extends GameProposalOrderByInput
>
    implements $GameProposalOrderByInputCopyWith<$Res> {
  _$GameProposalOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameProposalOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? proposedById = freezed,
    Object? title = freezed,
    Object? description = freezed,
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
            proposedById: freezed == proposedById
                ? _value.proposedById
                : proposedById // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameProposalOrderByInputImplCopyWith<$Res>
    implements $GameProposalOrderByInputCopyWith<$Res> {
  factory _$$GameProposalOrderByInputImplCopyWith(
    _$GameProposalOrderByInputImpl value,
    $Res Function(_$GameProposalOrderByInputImpl) then,
  ) = __$$GameProposalOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? proposedById,
    SortOrder? title,
    SortOrder? description,
  });
}

/// @nodoc
class __$$GameProposalOrderByInputImplCopyWithImpl<$Res>
    extends
        _$GameProposalOrderByInputCopyWithImpl<
          $Res,
          _$GameProposalOrderByInputImpl
        >
    implements _$$GameProposalOrderByInputImplCopyWith<$Res> {
  __$$GameProposalOrderByInputImplCopyWithImpl(
    _$GameProposalOrderByInputImpl _value,
    $Res Function(_$GameProposalOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameProposalOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? proposedById = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$GameProposalOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        proposedById: freezed == proposedById
            ? _value.proposedById
            : proposedById // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$GameProposalOrderByInputImpl extends _GameProposalOrderByInput {
  const _$GameProposalOrderByInputImpl({
    this.id,
    this.sessionId,
    this.proposedById,
    this.title,
    this.description,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? sessionId;
  @override
  final SortOrder? proposedById;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;

  @override
  String toString() {
    return 'GameProposalOrderByInput(id: $id, sessionId: $sessionId, proposedById: $proposedById, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameProposalOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.proposedById, proposedById) ||
                other.proposedById == proposedById) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, proposedById, title, description);

  /// Create a copy of GameProposalOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameProposalOrderByInputImplCopyWith<_$GameProposalOrderByInputImpl>
  get copyWith =>
      __$$GameProposalOrderByInputImplCopyWithImpl<
        _$GameProposalOrderByInputImpl
      >(this, _$identity);
}

abstract class _GameProposalOrderByInput extends GameProposalOrderByInput {
  const factory _GameProposalOrderByInput({
    final SortOrder? id,
    final SortOrder? sessionId,
    final SortOrder? proposedById,
    final SortOrder? title,
    final SortOrder? description,
  }) = _$GameProposalOrderByInputImpl;
  const _GameProposalOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get sessionId;
  @override
  SortOrder? get proposedById;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;

  /// Create a copy of GameProposalOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameProposalOrderByInputImplCopyWith<_$GameProposalOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
