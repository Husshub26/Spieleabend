import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_session.dart';
import 'user.dart';
import 'game_vote.dart';
part 'game_proposal.freezed.dart';

@freezed
class GameProposal with _$GameProposal {
  const GameProposal._();

  const factory GameProposal({
    required String id,
    required String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    required String proposedById,
    @JsonKey(includeFromJson: false, includeToJson: false) User? proposedBy,
    required String title,
    required String description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<GameVote>? votes,
  }) = _GameProposal;

  factory GameProposal.fromJson(Map<String, dynamic> json) {
    return GameProposal(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      proposedById: json['proposedById'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'sessionId': sessionId,
      'proposedById': proposedById,
      'title': title,
      'description': description,
    };
  }
}

/// Input for creating a new GameProposal
@freezed
class CreateGameProposalInput with _$CreateGameProposalInput {
  const CreateGameProposalInput._();

  const factory CreateGameProposalInput({
    required String sessionId,
    required String proposedById,
    required String title,
    required String description,
  }) = _CreateGameProposalInput;

  factory CreateGameProposalInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateGameProposalInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sessionId': sessionId,
      'proposedById': proposedById,
      'title': title,
      'description': description,
    };
  }
}

/// Input for updating an existing GameProposal
@freezed
class UpdateGameProposalInput with _$UpdateGameProposalInput {
  const UpdateGameProposalInput._();

  const factory UpdateGameProposalInput({
    String? sessionId,
    String? proposedById,
    String? title,
    String? description,
  }) = _UpdateGameProposalInput;

  factory UpdateGameProposalInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateGameProposalInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (sessionId != null) 'sessionId': sessionId,
      if (proposedById != null) 'proposedById': proposedById,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
    };
  }
}

@freezed
class GameProposalWhereUniqueInput with _$GameProposalWhereUniqueInput {
  const GameProposalWhereUniqueInput._();

  const factory GameProposalWhereUniqueInput({String? id}) =
      _GameProposalWhereUniqueInput;

  factory GameProposalWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'GameProposalWhereUniqueInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class GameProposalWhereInput with _$GameProposalWhereInput {
  const GameProposalWhereInput._();

  const factory GameProposalWhereInput({
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
  }) = _GameProposalWhereInput;

  factory GameProposalWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameProposalWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (sessionId != null) 'sessionId': sessionId!.toJson(),
      if (session != null) 'session': session!.toJson(),
      if (proposedById != null) 'proposedById': proposedById!.toJson(),
      if (proposedBy != null) 'proposedBy': proposedBy!.toJson(),
      if (title != null) 'title': title!.toJson(),
      if (description != null) 'description': description!.toJson(),
      if (votes != null) 'votes': votes!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class GameProposalListRelationFilter with _$GameProposalListRelationFilter {
  const GameProposalListRelationFilter._();

  const factory GameProposalListRelationFilter({
    GameProposalWhereInput? some,
    GameProposalWhereInput? every,
    GameProposalWhereInput? none,
  }) = _GameProposalListRelationFilter;

  factory GameProposalListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'GameProposalListRelationFilter.fromJson not needed',
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
class GameProposalRelationFilter with _$GameProposalRelationFilter {
  const GameProposalRelationFilter._();

  const factory GameProposalRelationFilter({
    @JsonKey(name: 'is') GameProposalWhereInput? is_,
    GameProposalWhereInput? isNot,
  }) = _GameProposalRelationFilter;

  factory GameProposalRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameProposalRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class GameProposalOrderByInput with _$GameProposalOrderByInput {
  const GameProposalOrderByInput._();

  const factory GameProposalOrderByInput({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? proposedById,
    SortOrder? title,
    SortOrder? description,
  }) = _GameProposalOrderByInput;

  factory GameProposalOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameProposalOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (sessionId != null) 'sessionId': sessionId!.name,
      if (proposedById != null) 'proposedById': proposedById!.name,
      if (title != null) 'title': title!.name,
      if (description != null) 'description': description!.name,
    };
  }
}
