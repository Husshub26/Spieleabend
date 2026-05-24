import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_session.dart';
import 'user.dart';
part 'quick_message.freezed.dart';

@freezed
class QuickMessage with _$QuickMessage {
  const QuickMessage._();

  const factory QuickMessage({
    required String id,
    required String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    required String senderId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? sender,
    required String text,
    required DateTime sentAt,
  }) = _QuickMessage;

  factory QuickMessage.fromJson(Map<String, dynamic> json) {
    return QuickMessage(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      senderId: json['senderId'] as String,
      text: json['text'] as String,
      sentAt: json['sentAt'] is DateTime
          ? json['sentAt'] as DateTime
          : DateTime.parse(json['sentAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'sessionId': sessionId,
      'senderId': senderId,
      'text': text,
      'sentAt': sentAt.toIso8601String(),
    };
  }
}

/// Input for creating a new QuickMessage
@freezed
class CreateQuickMessageInput with _$CreateQuickMessageInput {
  const CreateQuickMessageInput._();

  const factory CreateQuickMessageInput({
    required String sessionId,
    required String senderId,
    required String text,
  }) = _CreateQuickMessageInput;

  factory CreateQuickMessageInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateQuickMessageInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sessionId': sessionId,
      'senderId': senderId,
      'text': text,
    };
  }
}

/// Input for updating an existing QuickMessage
@freezed
class UpdateQuickMessageInput with _$UpdateQuickMessageInput {
  const UpdateQuickMessageInput._();

  const factory UpdateQuickMessageInput({
    String? sessionId,
    String? senderId,
    String? text,
  }) = _UpdateQuickMessageInput;

  factory UpdateQuickMessageInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateQuickMessageInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (sessionId != null) 'sessionId': sessionId,
      if (senderId != null) 'senderId': senderId,
      if (text != null) 'text': text,
    };
  }
}

@freezed
class QuickMessageWhereUniqueInput with _$QuickMessageWhereUniqueInput {
  const QuickMessageWhereUniqueInput._();

  const factory QuickMessageWhereUniqueInput({String? id}) =
      _QuickMessageWhereUniqueInput;

  factory QuickMessageWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'QuickMessageWhereUniqueInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class QuickMessageWhereInput with _$QuickMessageWhereInput {
  const QuickMessageWhereInput._();

  const factory QuickMessageWhereInput({
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
  }) = _QuickMessageWhereInput;

  factory QuickMessageWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('QuickMessageWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (sessionId != null) 'sessionId': sessionId!.toJson(),
      if (session != null) 'session': session!.toJson(),
      if (senderId != null) 'senderId': senderId!.toJson(),
      if (sender != null) 'sender': sender!.toJson(),
      if (text != null) 'text': text!.toJson(),
      if (sentAt != null) 'sentAt': sentAt!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class QuickMessageListRelationFilter with _$QuickMessageListRelationFilter {
  const QuickMessageListRelationFilter._();

  const factory QuickMessageListRelationFilter({
    QuickMessageWhereInput? some,
    QuickMessageWhereInput? every,
    QuickMessageWhereInput? none,
  }) = _QuickMessageListRelationFilter;

  factory QuickMessageListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'QuickMessageListRelationFilter.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (some != null) 'some': some!.toJson(),
      if (every != null) 'every': every!.toJson(),
      if (none != null) 'none': none!.toJson(),
    };
  }
}

@freezed
class QuickMessageRelationFilter with _$QuickMessageRelationFilter {
  const QuickMessageRelationFilter._();

  const factory QuickMessageRelationFilter({
    @JsonKey(name: 'is') QuickMessageWhereInput? is_,
    QuickMessageWhereInput? isNot,
  }) = _QuickMessageRelationFilter;

  factory QuickMessageRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('QuickMessageRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class QuickMessageOrderByInput with _$QuickMessageOrderByInput {
  const QuickMessageOrderByInput._();

  const factory QuickMessageOrderByInput({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? senderId,
    SortOrder? text,
    SortOrder? sentAt,
  }) = _QuickMessageOrderByInput;

  factory QuickMessageOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('QuickMessageOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (sessionId != null) 'sessionId': sessionId!.name,
      if (senderId != null) 'senderId': senderId!.name,
      if (text != null) 'text': text!.name,
      if (sentAt != null) 'sentAt': sentAt!.name,
    };
  }
}
