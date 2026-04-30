// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameVote {
  String get id => throw _privateConstructorUsedError;
  String get proposalId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameProposal? get proposal => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  /// Create a copy of GameVote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteCopyWith<GameVote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteCopyWith<$Res> {
  factory $GameVoteCopyWith(GameVote value, $Res Function(GameVote) then) =
      _$GameVoteCopyWithImpl<$Res, GameVote>;
  @useResult
  $Res call({
    String id,
    String proposalId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    GameProposal? proposal,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    int score,
  });

  $GameProposalCopyWith<$Res>? get proposal;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GameVoteCopyWithImpl<$Res, $Val extends GameVote>
    implements $GameVoteCopyWith<$Res> {
  _$GameVoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? proposalId = null,
    Object? proposal = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? score = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            proposalId: null == proposalId
                ? _value.proposalId
                : proposalId // ignore: cast_nullable_to_non_nullable
                      as String,
            proposal: freezed == proposal
                ? _value.proposal
                : proposal // ignore: cast_nullable_to_non_nullable
                      as GameProposal?,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of GameVote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalCopyWith<$Res>? get proposal {
    if (_value.proposal == null) {
      return null;
    }

    return $GameProposalCopyWith<$Res>(_value.proposal!, (value) {
      return _then(_value.copyWith(proposal: value) as $Val);
    });
  }

  /// Create a copy of GameVote
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
abstract class _$$GameVoteImplCopyWith<$Res>
    implements $GameVoteCopyWith<$Res> {
  factory _$$GameVoteImplCopyWith(
    _$GameVoteImpl value,
    $Res Function(_$GameVoteImpl) then,
  ) = __$$GameVoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String proposalId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    GameProposal? proposal,
    String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    int score,
  });

  @override
  $GameProposalCopyWith<$Res>? get proposal;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$GameVoteImplCopyWithImpl<$Res>
    extends _$GameVoteCopyWithImpl<$Res, _$GameVoteImpl>
    implements _$$GameVoteImplCopyWith<$Res> {
  __$$GameVoteImplCopyWithImpl(
    _$GameVoteImpl _value,
    $Res Function(_$GameVoteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameVote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? proposalId = null,
    Object? proposal = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? score = null,
  }) {
    return _then(
      _$GameVoteImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        proposalId: null == proposalId
            ? _value.proposalId
            : proposalId // ignore: cast_nullable_to_non_nullable
                  as String,
        proposal: freezed == proposal
            ? _value.proposal
            : proposal // ignore: cast_nullable_to_non_nullable
                  as GameProposal?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GameVoteImpl extends _GameVote {
  const _$GameVoteImpl({
    required this.id,
    required this.proposalId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.proposal,
    required this.userId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.user,
    required this.score,
  }) : super._();

  @override
  final String id;
  @override
  final String proposalId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final GameProposal? proposal;
  @override
  final String userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final int score;

  @override
  String toString() {
    return 'GameVote(id: $id, proposalId: $proposalId, proposal: $proposal, userId: $userId, user: $user, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, proposalId, proposal, userId, user, score);

  /// Create a copy of GameVote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteImplCopyWith<_$GameVoteImpl> get copyWith =>
      __$$GameVoteImplCopyWithImpl<_$GameVoteImpl>(this, _$identity);
}

abstract class _GameVote extends GameVote {
  const factory _GameVote({
    required final String id,
    required final String proposalId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final GameProposal? proposal,
    required final String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
    required final int score,
  }) = _$GameVoteImpl;
  const _GameVote._() : super._();

  @override
  String get id;
  @override
  String get proposalId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameProposal? get proposal;
  @override
  String get userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  int get score;

  /// Create a copy of GameVote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteImplCopyWith<_$GameVoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGameVoteInput {
  String get proposalId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  /// Create a copy of CreateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGameVoteInputCopyWith<CreateGameVoteInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameVoteInputCopyWith<$Res> {
  factory $CreateGameVoteInputCopyWith(
    CreateGameVoteInput value,
    $Res Function(CreateGameVoteInput) then,
  ) = _$CreateGameVoteInputCopyWithImpl<$Res, CreateGameVoteInput>;
  @useResult
  $Res call({String proposalId, String userId, int score});
}

/// @nodoc
class _$CreateGameVoteInputCopyWithImpl<$Res, $Val extends CreateGameVoteInput>
    implements $CreateGameVoteInputCopyWith<$Res> {
  _$CreateGameVoteInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposalId = null,
    Object? userId = null,
    Object? score = null,
  }) {
    return _then(
      _value.copyWith(
            proposalId: null == proposalId
                ? _value.proposalId
                : proposalId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateGameVoteInputImplCopyWith<$Res>
    implements $CreateGameVoteInputCopyWith<$Res> {
  factory _$$CreateGameVoteInputImplCopyWith(
    _$CreateGameVoteInputImpl value,
    $Res Function(_$CreateGameVoteInputImpl) then,
  ) = __$$CreateGameVoteInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String proposalId, String userId, int score});
}

/// @nodoc
class __$$CreateGameVoteInputImplCopyWithImpl<$Res>
    extends _$CreateGameVoteInputCopyWithImpl<$Res, _$CreateGameVoteInputImpl>
    implements _$$CreateGameVoteInputImplCopyWith<$Res> {
  __$$CreateGameVoteInputImplCopyWithImpl(
    _$CreateGameVoteInputImpl _value,
    $Res Function(_$CreateGameVoteInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposalId = null,
    Object? userId = null,
    Object? score = null,
  }) {
    return _then(
      _$CreateGameVoteInputImpl(
        proposalId: null == proposalId
            ? _value.proposalId
            : proposalId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CreateGameVoteInputImpl extends _CreateGameVoteInput {
  const _$CreateGameVoteInputImpl({
    required this.proposalId,
    required this.userId,
    required this.score,
  }) : super._();

  @override
  final String proposalId;
  @override
  final String userId;
  @override
  final int score;

  @override
  String toString() {
    return 'CreateGameVoteInput(proposalId: $proposalId, userId: $userId, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGameVoteInputImpl &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proposalId, userId, score);

  /// Create a copy of CreateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGameVoteInputImplCopyWith<_$CreateGameVoteInputImpl> get copyWith =>
      __$$CreateGameVoteInputImplCopyWithImpl<_$CreateGameVoteInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateGameVoteInput extends CreateGameVoteInput {
  const factory _CreateGameVoteInput({
    required final String proposalId,
    required final String userId,
    required final int score,
  }) = _$CreateGameVoteInputImpl;
  const _CreateGameVoteInput._() : super._();

  @override
  String get proposalId;
  @override
  String get userId;
  @override
  int get score;

  /// Create a copy of CreateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGameVoteInputImplCopyWith<_$CreateGameVoteInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGameVoteInput {
  String? get proposalId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  /// Create a copy of UpdateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateGameVoteInputCopyWith<UpdateGameVoteInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGameVoteInputCopyWith<$Res> {
  factory $UpdateGameVoteInputCopyWith(
    UpdateGameVoteInput value,
    $Res Function(UpdateGameVoteInput) then,
  ) = _$UpdateGameVoteInputCopyWithImpl<$Res, UpdateGameVoteInput>;
  @useResult
  $Res call({String? proposalId, String? userId, int? score});
}

/// @nodoc
class _$UpdateGameVoteInputCopyWithImpl<$Res, $Val extends UpdateGameVoteInput>
    implements $UpdateGameVoteInputCopyWith<$Res> {
  _$UpdateGameVoteInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposalId = freezed,
    Object? userId = freezed,
    Object? score = freezed,
  }) {
    return _then(
      _value.copyWith(
            proposalId: freezed == proposalId
                ? _value.proposalId
                : proposalId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateGameVoteInputImplCopyWith<$Res>
    implements $UpdateGameVoteInputCopyWith<$Res> {
  factory _$$UpdateGameVoteInputImplCopyWith(
    _$UpdateGameVoteInputImpl value,
    $Res Function(_$UpdateGameVoteInputImpl) then,
  ) = __$$UpdateGameVoteInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? proposalId, String? userId, int? score});
}

/// @nodoc
class __$$UpdateGameVoteInputImplCopyWithImpl<$Res>
    extends _$UpdateGameVoteInputCopyWithImpl<$Res, _$UpdateGameVoteInputImpl>
    implements _$$UpdateGameVoteInputImplCopyWith<$Res> {
  __$$UpdateGameVoteInputImplCopyWithImpl(
    _$UpdateGameVoteInputImpl _value,
    $Res Function(_$UpdateGameVoteInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposalId = freezed,
    Object? userId = freezed,
    Object? score = freezed,
  }) {
    return _then(
      _$UpdateGameVoteInputImpl(
        proposalId: freezed == proposalId
            ? _value.proposalId
            : proposalId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateGameVoteInputImpl extends _UpdateGameVoteInput {
  const _$UpdateGameVoteInputImpl({this.proposalId, this.userId, this.score})
    : super._();

  @override
  final String? proposalId;
  @override
  final String? userId;
  @override
  final int? score;

  @override
  String toString() {
    return 'UpdateGameVoteInput(proposalId: $proposalId, userId: $userId, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGameVoteInputImpl &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proposalId, userId, score);

  /// Create a copy of UpdateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGameVoteInputImplCopyWith<_$UpdateGameVoteInputImpl> get copyWith =>
      __$$UpdateGameVoteInputImplCopyWithImpl<_$UpdateGameVoteInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateGameVoteInput extends UpdateGameVoteInput {
  const factory _UpdateGameVoteInput({
    final String? proposalId,
    final String? userId,
    final int? score,
  }) = _$UpdateGameVoteInputImpl;
  const _UpdateGameVoteInput._() : super._();

  @override
  String? get proposalId;
  @override
  String? get userId;
  @override
  int? get score;

  /// Create a copy of UpdateGameVoteInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGameVoteInputImplCopyWith<_$UpdateGameVoteInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameVoteWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of GameVoteWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteWhereUniqueInputCopyWith<GameVoteWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteWhereUniqueInputCopyWith<$Res> {
  factory $GameVoteWhereUniqueInputCopyWith(
    GameVoteWhereUniqueInput value,
    $Res Function(GameVoteWhereUniqueInput) then,
  ) = _$GameVoteWhereUniqueInputCopyWithImpl<$Res, GameVoteWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GameVoteWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends GameVoteWhereUniqueInput
>
    implements $GameVoteWhereUniqueInputCopyWith<$Res> {
  _$GameVoteWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVoteWhereUniqueInput
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
abstract class _$$GameVoteWhereUniqueInputImplCopyWith<$Res>
    implements $GameVoteWhereUniqueInputCopyWith<$Res> {
  factory _$$GameVoteWhereUniqueInputImplCopyWith(
    _$GameVoteWhereUniqueInputImpl value,
    $Res Function(_$GameVoteWhereUniqueInputImpl) then,
  ) = __$$GameVoteWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GameVoteWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$GameVoteWhereUniqueInputCopyWithImpl<
          $Res,
          _$GameVoteWhereUniqueInputImpl
        >
    implements _$$GameVoteWhereUniqueInputImplCopyWith<$Res> {
  __$$GameVoteWhereUniqueInputImplCopyWithImpl(
    _$GameVoteWhereUniqueInputImpl _value,
    $Res Function(_$GameVoteWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameVoteWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$GameVoteWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GameVoteWhereUniqueInputImpl extends _GameVoteWhereUniqueInput {
  const _$GameVoteWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'GameVoteWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GameVoteWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteWhereUniqueInputImplCopyWith<_$GameVoteWhereUniqueInputImpl>
  get copyWith =>
      __$$GameVoteWhereUniqueInputImplCopyWithImpl<
        _$GameVoteWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _GameVoteWhereUniqueInput extends GameVoteWhereUniqueInput {
  const factory _GameVoteWhereUniqueInput({final String? id}) =
      _$GameVoteWhereUniqueInputImpl;
  const _GameVoteWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of GameVoteWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteWhereUniqueInputImplCopyWith<_$GameVoteWhereUniqueInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameVoteWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get proposalId => throw _privateConstructorUsedError;
  GameProposalRelationFilter? get proposal =>
      throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  IntFilter? get score => throw _privateConstructorUsedError;
  List<GameVoteWhereInput>? get AND => throw _privateConstructorUsedError;
  List<GameVoteWhereInput>? get OR => throw _privateConstructorUsedError;
  GameVoteWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteWhereInputCopyWith<GameVoteWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteWhereInputCopyWith<$Res> {
  factory $GameVoteWhereInputCopyWith(
    GameVoteWhereInput value,
    $Res Function(GameVoteWhereInput) then,
  ) = _$GameVoteWhereInputCopyWithImpl<$Res, GameVoteWhereInput>;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? proposalId,
    GameProposalRelationFilter? proposal,
    StringFilter? userId,
    UserRelationFilter? user,
    IntFilter? score,
    List<GameVoteWhereInput>? AND,
    List<GameVoteWhereInput>? OR,
    GameVoteWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get proposalId;
  $GameProposalRelationFilterCopyWith<$Res>? get proposal;
  $StringFilterCopyWith<$Res>? get userId;
  $UserRelationFilterCopyWith<$Res>? get user;
  $IntFilterCopyWith<$Res>? get score;
  $GameVoteWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$GameVoteWhereInputCopyWithImpl<$Res, $Val extends GameVoteWhereInput>
    implements $GameVoteWhereInputCopyWith<$Res> {
  _$GameVoteWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? proposalId = freezed,
    Object? proposal = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? score = freezed,
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
            proposalId: freezed == proposalId
                ? _value.proposalId
                : proposalId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            proposal: freezed == proposal
                ? _value.proposal
                : proposal // ignore: cast_nullable_to_non_nullable
                      as GameProposalRelationFilter?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as IntFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<GameVoteWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<GameVoteWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as GameVoteWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameVoteWhereInput
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

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get proposalId {
    if (_value.proposalId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.proposalId!, (value) {
      return _then(_value.copyWith(proposalId: value) as $Val);
    });
  }

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameProposalRelationFilterCopyWith<$Res>? get proposal {
    if (_value.proposal == null) {
      return null;
    }

    return $GameProposalRelationFilterCopyWith<$Res>(_value.proposal!, (value) {
      return _then(_value.copyWith(proposal: value) as $Val);
    });
  }

  /// Create a copy of GameVoteWhereInput
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

  /// Create a copy of GameVoteWhereInput
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

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get score {
    if (_value.score == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.score!, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $GameVoteWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameVoteWhereInputImplCopyWith<$Res>
    implements $GameVoteWhereInputCopyWith<$Res> {
  factory _$$GameVoteWhereInputImplCopyWith(
    _$GameVoteWhereInputImpl value,
    $Res Function(_$GameVoteWhereInputImpl) then,
  ) = __$$GameVoteWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? proposalId,
    GameProposalRelationFilter? proposal,
    StringFilter? userId,
    UserRelationFilter? user,
    IntFilter? score,
    List<GameVoteWhereInput>? AND,
    List<GameVoteWhereInput>? OR,
    GameVoteWhereInput? NOT,
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get proposalId;
  @override
  $GameProposalRelationFilterCopyWith<$Res>? get proposal;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $IntFilterCopyWith<$Res>? get score;
  @override
  $GameVoteWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$GameVoteWhereInputImplCopyWithImpl<$Res>
    extends _$GameVoteWhereInputCopyWithImpl<$Res, _$GameVoteWhereInputImpl>
    implements _$$GameVoteWhereInputImplCopyWith<$Res> {
  __$$GameVoteWhereInputImplCopyWithImpl(
    _$GameVoteWhereInputImpl _value,
    $Res Function(_$GameVoteWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? proposalId = freezed,
    Object? proposal = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? score = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$GameVoteWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        proposalId: freezed == proposalId
            ? _value.proposalId
            : proposalId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        proposal: freezed == proposal
            ? _value.proposal
            : proposal // ignore: cast_nullable_to_non_nullable
                  as GameProposalRelationFilter?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as IntFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<GameVoteWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<GameVoteWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as GameVoteWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameVoteWhereInputImpl extends _GameVoteWhereInput {
  const _$GameVoteWhereInputImpl({
    this.id,
    this.proposalId,
    this.proposal,
    this.userId,
    this.user,
    this.score,
    final List<GameVoteWhereInput>? AND,
    final List<GameVoteWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? proposalId;
  @override
  final GameProposalRelationFilter? proposal;
  @override
  final StringFilter? userId;
  @override
  final UserRelationFilter? user;
  @override
  final IntFilter? score;
  final List<GameVoteWhereInput>? _AND;
  @override
  List<GameVoteWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameVoteWhereInput>? _OR;
  @override
  List<GameVoteWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GameVoteWhereInput? NOT;

  @override
  String toString() {
    return 'GameVoteWhereInput(id: $id, proposalId: $proposalId, proposal: $proposal, userId: $userId, user: $user, score: $score, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    proposalId,
    proposal,
    userId,
    user,
    score,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteWhereInputImplCopyWith<_$GameVoteWhereInputImpl> get copyWith =>
      __$$GameVoteWhereInputImplCopyWithImpl<_$GameVoteWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GameVoteWhereInput extends GameVoteWhereInput {
  const factory _GameVoteWhereInput({
    final StringFilter? id,
    final StringFilter? proposalId,
    final GameProposalRelationFilter? proposal,
    final StringFilter? userId,
    final UserRelationFilter? user,
    final IntFilter? score,
    final List<GameVoteWhereInput>? AND,
    final List<GameVoteWhereInput>? OR,
    final GameVoteWhereInput? NOT,
  }) = _$GameVoteWhereInputImpl;
  const _GameVoteWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get proposalId;
  @override
  GameProposalRelationFilter? get proposal;
  @override
  StringFilter? get userId;
  @override
  UserRelationFilter? get user;
  @override
  IntFilter? get score;
  @override
  List<GameVoteWhereInput>? get AND;
  @override
  List<GameVoteWhereInput>? get OR;
  @override
  GameVoteWhereInput? get NOT;

  /// Create a copy of GameVoteWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteWhereInputImplCopyWith<_$GameVoteWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameVoteListRelationFilter {
  GameVoteWhereInput? get some => throw _privateConstructorUsedError;
  GameVoteWhereInput? get every => throw _privateConstructorUsedError;
  GameVoteWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteListRelationFilterCopyWith<GameVoteListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteListRelationFilterCopyWith<$Res> {
  factory $GameVoteListRelationFilterCopyWith(
    GameVoteListRelationFilter value,
    $Res Function(GameVoteListRelationFilter) then,
  ) =
      _$GameVoteListRelationFilterCopyWithImpl<
        $Res,
        GameVoteListRelationFilter
      >;
  @useResult
  $Res call({
    GameVoteWhereInput? some,
    GameVoteWhereInput? every,
    GameVoteWhereInput? none,
  });

  $GameVoteWhereInputCopyWith<$Res>? get some;
  $GameVoteWhereInputCopyWith<$Res>? get every;
  $GameVoteWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$GameVoteListRelationFilterCopyWithImpl<
  $Res,
  $Val extends GameVoteListRelationFilter
>
    implements $GameVoteListRelationFilterCopyWith<$Res> {
  _$GameVoteListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVoteListRelationFilter
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
                      as GameVoteWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as GameVoteWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as GameVoteWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $GameVoteWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $GameVoteWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $GameVoteWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameVoteListRelationFilterImplCopyWith<$Res>
    implements $GameVoteListRelationFilterCopyWith<$Res> {
  factory _$$GameVoteListRelationFilterImplCopyWith(
    _$GameVoteListRelationFilterImpl value,
    $Res Function(_$GameVoteListRelationFilterImpl) then,
  ) = __$$GameVoteListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GameVoteWhereInput? some,
    GameVoteWhereInput? every,
    GameVoteWhereInput? none,
  });

  @override
  $GameVoteWhereInputCopyWith<$Res>? get some;
  @override
  $GameVoteWhereInputCopyWith<$Res>? get every;
  @override
  $GameVoteWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$GameVoteListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GameVoteListRelationFilterCopyWithImpl<
          $Res,
          _$GameVoteListRelationFilterImpl
        >
    implements _$$GameVoteListRelationFilterImplCopyWith<$Res> {
  __$$GameVoteListRelationFilterImplCopyWithImpl(
    _$GameVoteListRelationFilterImpl _value,
    $Res Function(_$GameVoteListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$GameVoteListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as GameVoteWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as GameVoteWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as GameVoteWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameVoteListRelationFilterImpl extends _GameVoteListRelationFilter {
  const _$GameVoteListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final GameVoteWhereInput? some;
  @override
  final GameVoteWhereInput? every;
  @override
  final GameVoteWhereInput? none;

  @override
  String toString() {
    return 'GameVoteListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteListRelationFilterImplCopyWith<_$GameVoteListRelationFilterImpl>
  get copyWith =>
      __$$GameVoteListRelationFilterImplCopyWithImpl<
        _$GameVoteListRelationFilterImpl
      >(this, _$identity);
}

abstract class _GameVoteListRelationFilter extends GameVoteListRelationFilter {
  const factory _GameVoteListRelationFilter({
    final GameVoteWhereInput? some,
    final GameVoteWhereInput? every,
    final GameVoteWhereInput? none,
  }) = _$GameVoteListRelationFilterImpl;
  const _GameVoteListRelationFilter._() : super._();

  @override
  GameVoteWhereInput? get some;
  @override
  GameVoteWhereInput? get every;
  @override
  GameVoteWhereInput? get none;

  /// Create a copy of GameVoteListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteListRelationFilterImplCopyWith<_$GameVoteListRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameVoteRelationFilter {
  @JsonKey(name: 'is')
  GameVoteWhereInput? get is_ => throw _privateConstructorUsedError;
  GameVoteWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteRelationFilterCopyWith<GameVoteRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteRelationFilterCopyWith<$Res> {
  factory $GameVoteRelationFilterCopyWith(
    GameVoteRelationFilter value,
    $Res Function(GameVoteRelationFilter) then,
  ) = _$GameVoteRelationFilterCopyWithImpl<$Res, GameVoteRelationFilter>;
  @useResult
  $Res call({
    @JsonKey(name: 'is') GameVoteWhereInput? is_,
    GameVoteWhereInput? isNot,
  });

  $GameVoteWhereInputCopyWith<$Res>? get is_;
  $GameVoteWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$GameVoteRelationFilterCopyWithImpl<
  $Res,
  $Val extends GameVoteRelationFilter
>
    implements $GameVoteRelationFilterCopyWith<$Res> {
  _$GameVoteRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as GameVoteWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as GameVoteWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $GameVoteWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameVoteWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $GameVoteWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameVoteRelationFilterImplCopyWith<$Res>
    implements $GameVoteRelationFilterCopyWith<$Res> {
  factory _$$GameVoteRelationFilterImplCopyWith(
    _$GameVoteRelationFilterImpl value,
    $Res Function(_$GameVoteRelationFilterImpl) then,
  ) = __$$GameVoteRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') GameVoteWhereInput? is_,
    GameVoteWhereInput? isNot,
  });

  @override
  $GameVoteWhereInputCopyWith<$Res>? get is_;
  @override
  $GameVoteWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$GameVoteRelationFilterImplCopyWithImpl<$Res>
    extends
        _$GameVoteRelationFilterCopyWithImpl<$Res, _$GameVoteRelationFilterImpl>
    implements _$$GameVoteRelationFilterImplCopyWith<$Res> {
  __$$GameVoteRelationFilterImplCopyWithImpl(
    _$GameVoteRelationFilterImpl _value,
    $Res Function(_$GameVoteRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$GameVoteRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as GameVoteWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as GameVoteWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$GameVoteRelationFilterImpl extends _GameVoteRelationFilter {
  const _$GameVoteRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final GameVoteWhereInput? is_;
  @override
  final GameVoteWhereInput? isNot;

  @override
  String toString() {
    return 'GameVoteRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteRelationFilterImplCopyWith<_$GameVoteRelationFilterImpl>
  get copyWith =>
      __$$GameVoteRelationFilterImplCopyWithImpl<_$GameVoteRelationFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _GameVoteRelationFilter extends GameVoteRelationFilter {
  const factory _GameVoteRelationFilter({
    @JsonKey(name: 'is') final GameVoteWhereInput? is_,
    final GameVoteWhereInput? isNot,
  }) = _$GameVoteRelationFilterImpl;
  const _GameVoteRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  GameVoteWhereInput? get is_;
  @override
  GameVoteWhereInput? get isNot;

  /// Create a copy of GameVoteRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteRelationFilterImplCopyWith<_$GameVoteRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameVoteOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get proposalId => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get score => throw _privateConstructorUsedError;

  /// Create a copy of GameVoteOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteOrderByInputCopyWith<GameVoteOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteOrderByInputCopyWith<$Res> {
  factory $GameVoteOrderByInputCopyWith(
    GameVoteOrderByInput value,
    $Res Function(GameVoteOrderByInput) then,
  ) = _$GameVoteOrderByInputCopyWithImpl<$Res, GameVoteOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? proposalId,
    SortOrder? userId,
    SortOrder? score,
  });
}

/// @nodoc
class _$GameVoteOrderByInputCopyWithImpl<
  $Res,
  $Val extends GameVoteOrderByInput
>
    implements $GameVoteOrderByInputCopyWith<$Res> {
  _$GameVoteOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVoteOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? proposalId = freezed,
    Object? userId = freezed,
    Object? score = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            proposalId: freezed == proposalId
                ? _value.proposalId
                : proposalId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameVoteOrderByInputImplCopyWith<$Res>
    implements $GameVoteOrderByInputCopyWith<$Res> {
  factory _$$GameVoteOrderByInputImplCopyWith(
    _$GameVoteOrderByInputImpl value,
    $Res Function(_$GameVoteOrderByInputImpl) then,
  ) = __$$GameVoteOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? proposalId,
    SortOrder? userId,
    SortOrder? score,
  });
}

/// @nodoc
class __$$GameVoteOrderByInputImplCopyWithImpl<$Res>
    extends _$GameVoteOrderByInputCopyWithImpl<$Res, _$GameVoteOrderByInputImpl>
    implements _$$GameVoteOrderByInputImplCopyWith<$Res> {
  __$$GameVoteOrderByInputImplCopyWithImpl(
    _$GameVoteOrderByInputImpl _value,
    $Res Function(_$GameVoteOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameVoteOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? proposalId = freezed,
    Object? userId = freezed,
    Object? score = freezed,
  }) {
    return _then(
      _$GameVoteOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        proposalId: freezed == proposalId
            ? _value.proposalId
            : proposalId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$GameVoteOrderByInputImpl extends _GameVoteOrderByInput {
  const _$GameVoteOrderByInputImpl({
    this.id,
    this.proposalId,
    this.userId,
    this.score,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? proposalId;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? score;

  @override
  String toString() {
    return 'GameVoteOrderByInput(id: $id, proposalId: $proposalId, userId: $userId, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, proposalId, userId, score);

  /// Create a copy of GameVoteOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteOrderByInputImplCopyWith<_$GameVoteOrderByInputImpl>
  get copyWith =>
      __$$GameVoteOrderByInputImplCopyWithImpl<_$GameVoteOrderByInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GameVoteOrderByInput extends GameVoteOrderByInput {
  const factory _GameVoteOrderByInput({
    final SortOrder? id,
    final SortOrder? proposalId,
    final SortOrder? userId,
    final SortOrder? score,
  }) = _$GameVoteOrderByInputImpl;
  const _GameVoteOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get proposalId;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get score;

  /// Create a copy of GameVoteOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteOrderByInputImplCopyWith<_$GameVoteOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
