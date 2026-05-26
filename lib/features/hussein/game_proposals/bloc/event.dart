import 'package:equatable/equatable.dart';

sealed class GameProposalsEvent extends Equatable {
  const GameProposalsEvent();
  @override
  List<Object?> get props => [];
}

class GameProposalsLoadRequested extends GameProposalsEvent {
  final String groupId;
  const GameProposalsLoadRequested(this.groupId);
  @override
  List<Object?> get props => [groupId];
}

class GameProposalCreateRequested extends GameProposalsEvent {
  final String title;
  final String description;
  const GameProposalCreateRequested({
    required this.title,
    required this.description,
  });
  @override
  List<Object?> get props => [title, description];
}
