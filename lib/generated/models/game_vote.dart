import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_proposal.dart';
import 'user.dart';
part 'game_vote.freezed.dart';

@freezed
class GameVote with _$GameVote {
  const GameVote._();

  const factory GameVote({
    required String id,
    required String proposalId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    GameProposal? proposal,
    required String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    required int score,
  }) = _GameVote;

  factory GameVote.fromJson(Map<String, dynamic> json) {
    return GameVote(
      id: json['id'] as String,
      proposalId: json['proposalId'] as String,
      userId: json['userId'] as String,
      score: (json['score'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'proposalId': proposalId,
      'userId': userId,
      'score': score,
    };
  }
}

/// Input for creating a new GameVote
@freezed
class CreateGameVoteInput with _$CreateGameVoteInput {
  const CreateGameVoteInput._();

  const factory CreateGameVoteInput({
    required String proposalId,
    required String userId,
    required int score,
  }) = _CreateGameVoteInput;

  factory CreateGameVoteInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateGameVoteInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'proposalId': proposalId,
      'userId': userId,
      'score': score,
    };
  }
}

/// Input for updating an existing GameVote
@freezed
class UpdateGameVoteInput with _$UpdateGameVoteInput {
  const UpdateGameVoteInput._();

  const factory UpdateGameVoteInput({
    String? proposalId,
    String? userId,
    int? score,
  }) = _UpdateGameVoteInput;

  factory UpdateGameVoteInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateGameVoteInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (proposalId != null) 'proposalId': proposalId,
      if (userId != null) 'userId': userId,
      if (score != null) 'score': score,
    };
  }
}

@freezed
class GameVoteWhereUniqueInput with _$GameVoteWhereUniqueInput {
  const GameVoteWhereUniqueInput._();

  const factory GameVoteWhereUniqueInput({String? id}) =
      _GameVoteWhereUniqueInput;

  factory GameVoteWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameVoteWhereUniqueInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class GameVoteWhereInput with _$GameVoteWhereInput {
  const GameVoteWhereInput._();

  const factory GameVoteWhereInput({
    StringFilter? id,
    StringFilter? proposalId,
    GameProposalRelationFilter? proposal,
    StringFilter? userId,
    UserRelationFilter? user,
    IntFilter? score,
    List<GameVoteWhereInput>? AND,
    List<GameVoteWhereInput>? OR,
    GameVoteWhereInput? NOT,
  }) = _GameVoteWhereInput;

  factory GameVoteWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameVoteWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (proposalId != null) 'proposalId': proposalId!.toJson(),
      if (proposal != null) 'proposal': proposal!.toJson(),
      if (userId != null) 'userId': userId!.toJson(),
      if (user != null) 'user': user!.toJson(),
      if (score != null) 'score': score!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class GameVoteListRelationFilter with _$GameVoteListRelationFilter {
  const GameVoteListRelationFilter._();

  const factory GameVoteListRelationFilter({
    GameVoteWhereInput? some,
    GameVoteWhereInput? every,
    GameVoteWhereInput? none,
  }) = _GameVoteListRelationFilter;

  factory GameVoteListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameVoteListRelationFilter.fromJson not needed');
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
class GameVoteRelationFilter with _$GameVoteRelationFilter {
  const GameVoteRelationFilter._();

  const factory GameVoteRelationFilter({
    @JsonKey(name: 'is') GameVoteWhereInput? is_,
    GameVoteWhereInput? isNot,
  }) = _GameVoteRelationFilter;

  factory GameVoteRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameVoteRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class GameVoteOrderByInput with _$GameVoteOrderByInput {
  const GameVoteOrderByInput._();

  const factory GameVoteOrderByInput({
    SortOrder? id,
    SortOrder? proposalId,
    SortOrder? userId,
    SortOrder? score,
  }) = _GameVoteOrderByInput;

  factory GameVoteOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('GameVoteOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (proposalId != null) 'proposalId': proposalId!.name,
      if (userId != null) 'userId': userId!.name,
      if (score != null) 'score': score!.name,
    };
  }
}
