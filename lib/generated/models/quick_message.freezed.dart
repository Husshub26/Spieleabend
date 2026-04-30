// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuickMessage {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get sender => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;

  /// Create a copy of QuickMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickMessageCopyWith<QuickMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickMessageCopyWith<$Res> {
  factory $QuickMessageCopyWith(
    QuickMessage value,
    $Res Function(QuickMessage) then,
  ) = _$QuickMessageCopyWithImpl<$Res, QuickMessage>;
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String senderId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? sender,
    String text,
    DateTime sentAt,
  });

  $GameSessionCopyWith<$Res>? get session;
  $UserCopyWith<$Res>? get sender;
}

/// @nodoc
class _$QuickMessageCopyWithImpl<$Res, $Val extends QuickMessage>
    implements $QuickMessageCopyWith<$Res> {
  _$QuickMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? senderId = null,
    Object? sender = freezed,
    Object? text = null,
    Object? sentAt = null,
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
            senderId: null == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as String,
            sender: freezed == sender
                ? _value.sender
                : sender // ignore: cast_nullable_to_non_nullable
                      as User?,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            sentAt: null == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of QuickMessage
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

  /// Create a copy of QuickMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuickMessageImplCopyWith<$Res>
    implements $QuickMessageCopyWith<$Res> {
  factory _$$QuickMessageImplCopyWith(
    _$QuickMessageImpl value,
    $Res Function(_$QuickMessageImpl) then,
  ) = __$$QuickMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    String senderId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? sender,
    String text,
    DateTime sentAt,
  });

  @override
  $GameSessionCopyWith<$Res>? get session;
  @override
  $UserCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$QuickMessageImplCopyWithImpl<$Res>
    extends _$QuickMessageCopyWithImpl<$Res, _$QuickMessageImpl>
    implements _$$QuickMessageImplCopyWith<$Res> {
  __$$QuickMessageImplCopyWithImpl(
    _$QuickMessageImpl _value,
    $Res Function(_$QuickMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? session = freezed,
    Object? senderId = null,
    Object? sender = freezed,
    Object? text = null,
    Object? sentAt = null,
  }) {
    return _then(
      _$QuickMessageImpl(
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
        senderId: null == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as String,
        sender: freezed == sender
            ? _value.sender
            : sender // ignore: cast_nullable_to_non_nullable
                  as User?,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        sentAt: null == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$QuickMessageImpl extends _QuickMessage {
  const _$QuickMessageImpl({
    required this.id,
    required this.sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.session,
    required this.senderId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.sender,
    required this.text,
    required this.sentAt,
  }) : super._();

  @override
  final String id;
  @override
  final String sessionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final GameSession? session;
  @override
  final String senderId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? sender;
  @override
  final String text;
  @override
  final DateTime sentAt;

  @override
  String toString() {
    return 'QuickMessage(id: $id, sessionId: $sessionId, session: $session, senderId: $senderId, sender: $sender, text: $text, sentAt: $sentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    session,
    senderId,
    sender,
    text,
    sentAt,
  );

  /// Create a copy of QuickMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickMessageImplCopyWith<_$QuickMessageImpl> get copyWith =>
      __$$QuickMessageImplCopyWithImpl<_$QuickMessageImpl>(this, _$identity);
}

abstract class _QuickMessage extends QuickMessage {
  const factory _QuickMessage({
    required final String id,
    required final String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final GameSession? session,
    required final String senderId,
    @JsonKey(includeFromJson: false, includeToJson: false) final User? sender,
    required final String text,
    required final DateTime sentAt,
  }) = _$QuickMessageImpl;
  const _QuickMessage._() : super._();

  @override
  String get id;
  @override
  String get sessionId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  GameSession? get session;
  @override
  String get senderId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get sender;
  @override
  String get text;
  @override
  DateTime get sentAt;

  /// Create a copy of QuickMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickMessageImplCopyWith<_$QuickMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateQuickMessageInput {
  String get sessionId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Create a copy of CreateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateQuickMessageInputCopyWith<CreateQuickMessageInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuickMessageInputCopyWith<$Res> {
  factory $CreateQuickMessageInputCopyWith(
    CreateQuickMessageInput value,
    $Res Function(CreateQuickMessageInput) then,
  ) = _$CreateQuickMessageInputCopyWithImpl<$Res, CreateQuickMessageInput>;
  @useResult
  $Res call({String sessionId, String senderId, String text});
}

/// @nodoc
class _$CreateQuickMessageInputCopyWithImpl<
  $Res,
  $Val extends CreateQuickMessageInput
>
    implements $CreateQuickMessageInputCopyWith<$Res> {
  _$CreateQuickMessageInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? senderId = null,
    Object? text = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            senderId: null == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateQuickMessageInputImplCopyWith<$Res>
    implements $CreateQuickMessageInputCopyWith<$Res> {
  factory _$$CreateQuickMessageInputImplCopyWith(
    _$CreateQuickMessageInputImpl value,
    $Res Function(_$CreateQuickMessageInputImpl) then,
  ) = __$$CreateQuickMessageInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, String senderId, String text});
}

/// @nodoc
class __$$CreateQuickMessageInputImplCopyWithImpl<$Res>
    extends
        _$CreateQuickMessageInputCopyWithImpl<
          $Res,
          _$CreateQuickMessageInputImpl
        >
    implements _$$CreateQuickMessageInputImplCopyWith<$Res> {
  __$$CreateQuickMessageInputImplCopyWithImpl(
    _$CreateQuickMessageInputImpl _value,
    $Res Function(_$CreateQuickMessageInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? senderId = null,
    Object? text = null,
  }) {
    return _then(
      _$CreateQuickMessageInputImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        senderId: null == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateQuickMessageInputImpl extends _CreateQuickMessageInput {
  const _$CreateQuickMessageInputImpl({
    required this.sessionId,
    required this.senderId,
    required this.text,
  }) : super._();

  @override
  final String sessionId;
  @override
  final String senderId;
  @override
  final String text;

  @override
  String toString() {
    return 'CreateQuickMessageInput(sessionId: $sessionId, senderId: $senderId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuickMessageInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId, senderId, text);

  /// Create a copy of CreateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuickMessageInputImplCopyWith<_$CreateQuickMessageInputImpl>
  get copyWith =>
      __$$CreateQuickMessageInputImplCopyWithImpl<
        _$CreateQuickMessageInputImpl
      >(this, _$identity);
}

abstract class _CreateQuickMessageInput extends CreateQuickMessageInput {
  const factory _CreateQuickMessageInput({
    required final String sessionId,
    required final String senderId,
    required final String text,
  }) = _$CreateQuickMessageInputImpl;
  const _CreateQuickMessageInput._() : super._();

  @override
  String get sessionId;
  @override
  String get senderId;
  @override
  String get text;

  /// Create a copy of CreateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateQuickMessageInputImplCopyWith<_$CreateQuickMessageInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateQuickMessageInput {
  String? get sessionId => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  /// Create a copy of UpdateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateQuickMessageInputCopyWith<UpdateQuickMessageInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuickMessageInputCopyWith<$Res> {
  factory $UpdateQuickMessageInputCopyWith(
    UpdateQuickMessageInput value,
    $Res Function(UpdateQuickMessageInput) then,
  ) = _$UpdateQuickMessageInputCopyWithImpl<$Res, UpdateQuickMessageInput>;
  @useResult
  $Res call({String? sessionId, String? senderId, String? text});
}

/// @nodoc
class _$UpdateQuickMessageInputCopyWithImpl<
  $Res,
  $Val extends UpdateQuickMessageInput
>
    implements $UpdateQuickMessageInputCopyWith<$Res> {
  _$UpdateQuickMessageInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
  }) {
    return _then(
      _value.copyWith(
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            senderId: freezed == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateQuickMessageInputImplCopyWith<$Res>
    implements $UpdateQuickMessageInputCopyWith<$Res> {
  factory _$$UpdateQuickMessageInputImplCopyWith(
    _$UpdateQuickMessageInputImpl value,
    $Res Function(_$UpdateQuickMessageInputImpl) then,
  ) = __$$UpdateQuickMessageInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionId, String? senderId, String? text});
}

/// @nodoc
class __$$UpdateQuickMessageInputImplCopyWithImpl<$Res>
    extends
        _$UpdateQuickMessageInputCopyWithImpl<
          $Res,
          _$UpdateQuickMessageInputImpl
        >
    implements _$$UpdateQuickMessageInputImplCopyWith<$Res> {
  __$$UpdateQuickMessageInputImplCopyWithImpl(
    _$UpdateQuickMessageInputImpl _value,
    $Res Function(_$UpdateQuickMessageInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
  }) {
    return _then(
      _$UpdateQuickMessageInputImpl(
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        senderId: freezed == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateQuickMessageInputImpl extends _UpdateQuickMessageInput {
  const _$UpdateQuickMessageInputImpl({
    this.sessionId,
    this.senderId,
    this.text,
  }) : super._();

  @override
  final String? sessionId;
  @override
  final String? senderId;
  @override
  final String? text;

  @override
  String toString() {
    return 'UpdateQuickMessageInput(sessionId: $sessionId, senderId: $senderId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuickMessageInputImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId, senderId, text);

  /// Create a copy of UpdateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuickMessageInputImplCopyWith<_$UpdateQuickMessageInputImpl>
  get copyWith =>
      __$$UpdateQuickMessageInputImplCopyWithImpl<
        _$UpdateQuickMessageInputImpl
      >(this, _$identity);
}

abstract class _UpdateQuickMessageInput extends UpdateQuickMessageInput {
  const factory _UpdateQuickMessageInput({
    final String? sessionId,
    final String? senderId,
    final String? text,
  }) = _$UpdateQuickMessageInputImpl;
  const _UpdateQuickMessageInput._() : super._();

  @override
  String? get sessionId;
  @override
  String? get senderId;
  @override
  String? get text;

  /// Create a copy of UpdateQuickMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuickMessageInputImplCopyWith<_$UpdateQuickMessageInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickMessageWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of QuickMessageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickMessageWhereUniqueInputCopyWith<QuickMessageWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickMessageWhereUniqueInputCopyWith<$Res> {
  factory $QuickMessageWhereUniqueInputCopyWith(
    QuickMessageWhereUniqueInput value,
    $Res Function(QuickMessageWhereUniqueInput) then,
  ) =
      _$QuickMessageWhereUniqueInputCopyWithImpl<
        $Res,
        QuickMessageWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$QuickMessageWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends QuickMessageWhereUniqueInput
>
    implements $QuickMessageWhereUniqueInputCopyWith<$Res> {
  _$QuickMessageWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickMessageWhereUniqueInput
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
abstract class _$$QuickMessageWhereUniqueInputImplCopyWith<$Res>
    implements $QuickMessageWhereUniqueInputCopyWith<$Res> {
  factory _$$QuickMessageWhereUniqueInputImplCopyWith(
    _$QuickMessageWhereUniqueInputImpl value,
    $Res Function(_$QuickMessageWhereUniqueInputImpl) then,
  ) = __$$QuickMessageWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$QuickMessageWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$QuickMessageWhereUniqueInputCopyWithImpl<
          $Res,
          _$QuickMessageWhereUniqueInputImpl
        >
    implements _$$QuickMessageWhereUniqueInputImplCopyWith<$Res> {
  __$$QuickMessageWhereUniqueInputImplCopyWithImpl(
    _$QuickMessageWhereUniqueInputImpl _value,
    $Res Function(_$QuickMessageWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickMessageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$QuickMessageWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$QuickMessageWhereUniqueInputImpl extends _QuickMessageWhereUniqueInput {
  const _$QuickMessageWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'QuickMessageWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickMessageWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of QuickMessageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickMessageWhereUniqueInputImplCopyWith<
    _$QuickMessageWhereUniqueInputImpl
  >
  get copyWith =>
      __$$QuickMessageWhereUniqueInputImplCopyWithImpl<
        _$QuickMessageWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _QuickMessageWhereUniqueInput
    extends QuickMessageWhereUniqueInput {
  const factory _QuickMessageWhereUniqueInput({final String? id}) =
      _$QuickMessageWhereUniqueInputImpl;
  const _QuickMessageWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of QuickMessageWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickMessageWhereUniqueInputImplCopyWith<
    _$QuickMessageWhereUniqueInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickMessageWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get sessionId => throw _privateConstructorUsedError;
  GameSessionRelationFilter? get session => throw _privateConstructorUsedError;
  StringFilter? get senderId => throw _privateConstructorUsedError;
  UserRelationFilter? get sender => throw _privateConstructorUsedError;
  StringFilter? get text => throw _privateConstructorUsedError;
  DateTimeFilter? get sentAt => throw _privateConstructorUsedError;
  List<QuickMessageWhereInput>? get AND => throw _privateConstructorUsedError;
  List<QuickMessageWhereInput>? get OR => throw _privateConstructorUsedError;
  QuickMessageWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickMessageWhereInputCopyWith<QuickMessageWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickMessageWhereInputCopyWith<$Res> {
  factory $QuickMessageWhereInputCopyWith(
    QuickMessageWhereInput value,
    $Res Function(QuickMessageWhereInput) then,
  ) = _$QuickMessageWhereInputCopyWithImpl<$Res, QuickMessageWhereInput>;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? senderId,
    UserRelationFilter? sender,
    StringFilter? text,
    DateTimeFilter? sentAt,
    List<QuickMessageWhereInput>? AND,
    List<QuickMessageWhereInput>? OR,
    QuickMessageWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get sessionId;
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  $StringFilterCopyWith<$Res>? get senderId;
  $UserRelationFilterCopyWith<$Res>? get sender;
  $StringFilterCopyWith<$Res>? get text;
  $DateTimeFilterCopyWith<$Res>? get sentAt;
  $QuickMessageWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$QuickMessageWhereInputCopyWithImpl<
  $Res,
  $Val extends QuickMessageWhereInput
>
    implements $QuickMessageWhereInputCopyWith<$Res> {
  _$QuickMessageWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? senderId = freezed,
    Object? sender = freezed,
    Object? text = freezed,
    Object? sentAt = freezed,
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
            senderId: freezed == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            sender: freezed == sender
                ? _value.sender
                : sender // ignore: cast_nullable_to_non_nullable
                      as UserRelationFilter?,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            sentAt: freezed == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as DateTimeFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<QuickMessageWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<QuickMessageWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as QuickMessageWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of QuickMessageWhereInput
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

  /// Create a copy of QuickMessageWhereInput
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

  /// Create a copy of QuickMessageWhereInput
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

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get senderId {
    if (_value.senderId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.senderId!, (value) {
      return _then(_value.copyWith(senderId: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get sentAt {
    if (_value.sentAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.sentAt!, (value) {
      return _then(_value.copyWith(sentAt: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $QuickMessageWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuickMessageWhereInputImplCopyWith<$Res>
    implements $QuickMessageWhereInputCopyWith<$Res> {
  factory _$$QuickMessageWhereInputImplCopyWith(
    _$QuickMessageWhereInputImpl value,
    $Res Function(_$QuickMessageWhereInputImpl) then,
  ) = __$$QuickMessageWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? senderId,
    UserRelationFilter? sender,
    StringFilter? text,
    DateTimeFilter? sentAt,
    List<QuickMessageWhereInput>? AND,
    List<QuickMessageWhereInput>? OR,
    QuickMessageWhereInput? NOT,
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get sessionId;
  @override
  $GameSessionRelationFilterCopyWith<$Res>? get session;
  @override
  $StringFilterCopyWith<$Res>? get senderId;
  @override
  $UserRelationFilterCopyWith<$Res>? get sender;
  @override
  $StringFilterCopyWith<$Res>? get text;
  @override
  $DateTimeFilterCopyWith<$Res>? get sentAt;
  @override
  $QuickMessageWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$QuickMessageWhereInputImplCopyWithImpl<$Res>
    extends
        _$QuickMessageWhereInputCopyWithImpl<$Res, _$QuickMessageWhereInputImpl>
    implements _$$QuickMessageWhereInputImplCopyWith<$Res> {
  __$$QuickMessageWhereInputImplCopyWithImpl(
    _$QuickMessageWhereInputImpl _value,
    $Res Function(_$QuickMessageWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? session = freezed,
    Object? senderId = freezed,
    Object? sender = freezed,
    Object? text = freezed,
    Object? sentAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$QuickMessageWhereInputImpl(
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
        senderId: freezed == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        sender: freezed == sender
            ? _value.sender
            : sender // ignore: cast_nullable_to_non_nullable
                  as UserRelationFilter?,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        sentAt: freezed == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as DateTimeFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<QuickMessageWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<QuickMessageWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as QuickMessageWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$QuickMessageWhereInputImpl extends _QuickMessageWhereInput {
  const _$QuickMessageWhereInputImpl({
    this.id,
    this.sessionId,
    this.session,
    this.senderId,
    this.sender,
    this.text,
    this.sentAt,
    final List<QuickMessageWhereInput>? AND,
    final List<QuickMessageWhereInput>? OR,
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
  final StringFilter? senderId;
  @override
  final UserRelationFilter? sender;
  @override
  final StringFilter? text;
  @override
  final DateTimeFilter? sentAt;
  final List<QuickMessageWhereInput>? _AND;
  @override
  List<QuickMessageWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QuickMessageWhereInput>? _OR;
  @override
  List<QuickMessageWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final QuickMessageWhereInput? NOT;

  @override
  String toString() {
    return 'QuickMessageWhereInput(id: $id, sessionId: $sessionId, session: $session, senderId: $senderId, sender: $sender, text: $text, sentAt: $sentAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickMessageWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
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
    senderId,
    sender,
    text,
    sentAt,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickMessageWhereInputImplCopyWith<_$QuickMessageWhereInputImpl>
  get copyWith =>
      __$$QuickMessageWhereInputImplCopyWithImpl<_$QuickMessageWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _QuickMessageWhereInput extends QuickMessageWhereInput {
  const factory _QuickMessageWhereInput({
    final StringFilter? id,
    final StringFilter? sessionId,
    final GameSessionRelationFilter? session,
    final StringFilter? senderId,
    final UserRelationFilter? sender,
    final StringFilter? text,
    final DateTimeFilter? sentAt,
    final List<QuickMessageWhereInput>? AND,
    final List<QuickMessageWhereInput>? OR,
    final QuickMessageWhereInput? NOT,
  }) = _$QuickMessageWhereInputImpl;
  const _QuickMessageWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get sessionId;
  @override
  GameSessionRelationFilter? get session;
  @override
  StringFilter? get senderId;
  @override
  UserRelationFilter? get sender;
  @override
  StringFilter? get text;
  @override
  DateTimeFilter? get sentAt;
  @override
  List<QuickMessageWhereInput>? get AND;
  @override
  List<QuickMessageWhereInput>? get OR;
  @override
  QuickMessageWhereInput? get NOT;

  /// Create a copy of QuickMessageWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickMessageWhereInputImplCopyWith<_$QuickMessageWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickMessageListRelationFilter {
  QuickMessageWhereInput? get some => throw _privateConstructorUsedError;
  QuickMessageWhereInput? get every => throw _privateConstructorUsedError;
  QuickMessageWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickMessageListRelationFilterCopyWith<QuickMessageListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickMessageListRelationFilterCopyWith<$Res> {
  factory $QuickMessageListRelationFilterCopyWith(
    QuickMessageListRelationFilter value,
    $Res Function(QuickMessageListRelationFilter) then,
  ) =
      _$QuickMessageListRelationFilterCopyWithImpl<
        $Res,
        QuickMessageListRelationFilter
      >;
  @useResult
  $Res call({
    QuickMessageWhereInput? some,
    QuickMessageWhereInput? every,
    QuickMessageWhereInput? none,
  });

  $QuickMessageWhereInputCopyWith<$Res>? get some;
  $QuickMessageWhereInputCopyWith<$Res>? get every;
  $QuickMessageWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$QuickMessageListRelationFilterCopyWithImpl<
  $Res,
  $Val extends QuickMessageListRelationFilter
>
    implements $QuickMessageListRelationFilterCopyWith<$Res> {
  _$QuickMessageListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickMessageListRelationFilter
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
                      as QuickMessageWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as QuickMessageWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as QuickMessageWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $QuickMessageWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $QuickMessageWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $QuickMessageWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuickMessageListRelationFilterImplCopyWith<$Res>
    implements $QuickMessageListRelationFilterCopyWith<$Res> {
  factory _$$QuickMessageListRelationFilterImplCopyWith(
    _$QuickMessageListRelationFilterImpl value,
    $Res Function(_$QuickMessageListRelationFilterImpl) then,
  ) = __$$QuickMessageListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    QuickMessageWhereInput? some,
    QuickMessageWhereInput? every,
    QuickMessageWhereInput? none,
  });

  @override
  $QuickMessageWhereInputCopyWith<$Res>? get some;
  @override
  $QuickMessageWhereInputCopyWith<$Res>? get every;
  @override
  $QuickMessageWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$QuickMessageListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$QuickMessageListRelationFilterCopyWithImpl<
          $Res,
          _$QuickMessageListRelationFilterImpl
        >
    implements _$$QuickMessageListRelationFilterImplCopyWith<$Res> {
  __$$QuickMessageListRelationFilterImplCopyWithImpl(
    _$QuickMessageListRelationFilterImpl _value,
    $Res Function(_$QuickMessageListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$QuickMessageListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as QuickMessageWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as QuickMessageWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as QuickMessageWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$QuickMessageListRelationFilterImpl
    extends _QuickMessageListRelationFilter {
  const _$QuickMessageListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final QuickMessageWhereInput? some;
  @override
  final QuickMessageWhereInput? every;
  @override
  final QuickMessageWhereInput? none;

  @override
  String toString() {
    return 'QuickMessageListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickMessageListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickMessageListRelationFilterImplCopyWith<
    _$QuickMessageListRelationFilterImpl
  >
  get copyWith =>
      __$$QuickMessageListRelationFilterImplCopyWithImpl<
        _$QuickMessageListRelationFilterImpl
      >(this, _$identity);
}

abstract class _QuickMessageListRelationFilter
    extends QuickMessageListRelationFilter {
  const factory _QuickMessageListRelationFilter({
    final QuickMessageWhereInput? some,
    final QuickMessageWhereInput? every,
    final QuickMessageWhereInput? none,
  }) = _$QuickMessageListRelationFilterImpl;
  const _QuickMessageListRelationFilter._() : super._();

  @override
  QuickMessageWhereInput? get some;
  @override
  QuickMessageWhereInput? get every;
  @override
  QuickMessageWhereInput? get none;

  /// Create a copy of QuickMessageListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickMessageListRelationFilterImplCopyWith<
    _$QuickMessageListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickMessageRelationFilter {
  @JsonKey(name: 'is')
  QuickMessageWhereInput? get is_ => throw _privateConstructorUsedError;
  QuickMessageWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickMessageRelationFilterCopyWith<QuickMessageRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickMessageRelationFilterCopyWith<$Res> {
  factory $QuickMessageRelationFilterCopyWith(
    QuickMessageRelationFilter value,
    $Res Function(QuickMessageRelationFilter) then,
  ) =
      _$QuickMessageRelationFilterCopyWithImpl<
        $Res,
        QuickMessageRelationFilter
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'is') QuickMessageWhereInput? is_,
    QuickMessageWhereInput? isNot,
  });

  $QuickMessageWhereInputCopyWith<$Res>? get is_;
  $QuickMessageWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$QuickMessageRelationFilterCopyWithImpl<
  $Res,
  $Val extends QuickMessageRelationFilter
>
    implements $QuickMessageRelationFilterCopyWith<$Res> {
  _$QuickMessageRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as QuickMessageWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as QuickMessageWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $QuickMessageWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuickMessageWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $QuickMessageWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuickMessageRelationFilterImplCopyWith<$Res>
    implements $QuickMessageRelationFilterCopyWith<$Res> {
  factory _$$QuickMessageRelationFilterImplCopyWith(
    _$QuickMessageRelationFilterImpl value,
    $Res Function(_$QuickMessageRelationFilterImpl) then,
  ) = __$$QuickMessageRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') QuickMessageWhereInput? is_,
    QuickMessageWhereInput? isNot,
  });

  @override
  $QuickMessageWhereInputCopyWith<$Res>? get is_;
  @override
  $QuickMessageWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$QuickMessageRelationFilterImplCopyWithImpl<$Res>
    extends
        _$QuickMessageRelationFilterCopyWithImpl<
          $Res,
          _$QuickMessageRelationFilterImpl
        >
    implements _$$QuickMessageRelationFilterImplCopyWith<$Res> {
  __$$QuickMessageRelationFilterImplCopyWithImpl(
    _$QuickMessageRelationFilterImpl _value,
    $Res Function(_$QuickMessageRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$QuickMessageRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as QuickMessageWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as QuickMessageWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$QuickMessageRelationFilterImpl extends _QuickMessageRelationFilter {
  const _$QuickMessageRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final QuickMessageWhereInput? is_;
  @override
  final QuickMessageWhereInput? isNot;

  @override
  String toString() {
    return 'QuickMessageRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickMessageRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickMessageRelationFilterImplCopyWith<_$QuickMessageRelationFilterImpl>
  get copyWith =>
      __$$QuickMessageRelationFilterImplCopyWithImpl<
        _$QuickMessageRelationFilterImpl
      >(this, _$identity);
}

abstract class _QuickMessageRelationFilter extends QuickMessageRelationFilter {
  const factory _QuickMessageRelationFilter({
    @JsonKey(name: 'is') final QuickMessageWhereInput? is_,
    final QuickMessageWhereInput? isNot,
  }) = _$QuickMessageRelationFilterImpl;
  const _QuickMessageRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  QuickMessageWhereInput? get is_;
  @override
  QuickMessageWhereInput? get isNot;

  /// Create a copy of QuickMessageRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickMessageRelationFilterImplCopyWith<_$QuickMessageRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickMessageOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get sessionId => throw _privateConstructorUsedError;
  SortOrder? get senderId => throw _privateConstructorUsedError;
  SortOrder? get text => throw _privateConstructorUsedError;
  SortOrder? get sentAt => throw _privateConstructorUsedError;

  /// Create a copy of QuickMessageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickMessageOrderByInputCopyWith<QuickMessageOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickMessageOrderByInputCopyWith<$Res> {
  factory $QuickMessageOrderByInputCopyWith(
    QuickMessageOrderByInput value,
    $Res Function(QuickMessageOrderByInput) then,
  ) = _$QuickMessageOrderByInputCopyWithImpl<$Res, QuickMessageOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? senderId,
    SortOrder? text,
    SortOrder? sentAt,
  });
}

/// @nodoc
class _$QuickMessageOrderByInputCopyWithImpl<
  $Res,
  $Val extends QuickMessageOrderByInput
>
    implements $QuickMessageOrderByInputCopyWith<$Res> {
  _$QuickMessageOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickMessageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
    Object? sentAt = freezed,
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
            senderId: freezed == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            sentAt: freezed == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuickMessageOrderByInputImplCopyWith<$Res>
    implements $QuickMessageOrderByInputCopyWith<$Res> {
  factory _$$QuickMessageOrderByInputImplCopyWith(
    _$QuickMessageOrderByInputImpl value,
    $Res Function(_$QuickMessageOrderByInputImpl) then,
  ) = __$$QuickMessageOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? senderId,
    SortOrder? text,
    SortOrder? sentAt,
  });
}

/// @nodoc
class __$$QuickMessageOrderByInputImplCopyWithImpl<$Res>
    extends
        _$QuickMessageOrderByInputCopyWithImpl<
          $Res,
          _$QuickMessageOrderByInputImpl
        >
    implements _$$QuickMessageOrderByInputImplCopyWith<$Res> {
  __$$QuickMessageOrderByInputImplCopyWithImpl(
    _$QuickMessageOrderByInputImpl _value,
    $Res Function(_$QuickMessageOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickMessageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(
      _$QuickMessageOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        senderId: freezed == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        sentAt: freezed == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$QuickMessageOrderByInputImpl extends _QuickMessageOrderByInput {
  const _$QuickMessageOrderByInputImpl({
    this.id,
    this.sessionId,
    this.senderId,
    this.text,
    this.sentAt,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? sessionId;
  @override
  final SortOrder? senderId;
  @override
  final SortOrder? text;
  @override
  final SortOrder? sentAt;

  @override
  String toString() {
    return 'QuickMessageOrderByInput(id: $id, sessionId: $sessionId, senderId: $senderId, text: $text, sentAt: $sentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickMessageOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, senderId, text, sentAt);

  /// Create a copy of QuickMessageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickMessageOrderByInputImplCopyWith<_$QuickMessageOrderByInputImpl>
  get copyWith =>
      __$$QuickMessageOrderByInputImplCopyWithImpl<
        _$QuickMessageOrderByInputImpl
      >(this, _$identity);
}

abstract class _QuickMessageOrderByInput extends QuickMessageOrderByInput {
  const factory _QuickMessageOrderByInput({
    final SortOrder? id,
    final SortOrder? sessionId,
    final SortOrder? senderId,
    final SortOrder? text,
    final SortOrder? sentAt,
  }) = _$QuickMessageOrderByInputImpl;
  const _QuickMessageOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get sessionId;
  @override
  SortOrder? get senderId;
  @override
  SortOrder? get text;
  @override
  SortOrder? get sentAt;

  /// Create a copy of QuickMessageOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickMessageOrderByInputImplCopyWith<_$QuickMessageOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
