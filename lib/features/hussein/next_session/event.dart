import 'package:equatable/equatable.dart';

sealed class NextSessionEvent extends Equatable {
  const NextSessionEvent();
  @override
  List<Object?> get props => [];
}

class NextSessionLoadRequested extends NextSessionEvent {
  final String groupId;
  const NextSessionLoadRequested(this.groupId);
  @override
  List<Object?> get props => [groupId];
}
