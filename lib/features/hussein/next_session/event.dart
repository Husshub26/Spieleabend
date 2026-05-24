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

/// Create a brand new active Spieltermin. Host is auto-assigned to the
/// next member in the rotation. Refused when one is already active.
class NextSessionCreateRequested extends NextSessionEvent {
  final String groupId;
  final DateTime scheduledAt;
  final String location;
  const NextSessionCreateRequested({
    required this.groupId,
    required this.scheduledAt,
    required this.location,
  });
  @override
  List<Object?> get props => [groupId, scheduledAt, location];
}

class NextSessionEditRequested extends NextSessionEvent {
  final String sessionId;
  final DateTime scheduledAt;
  final String location;
  const NextSessionEditRequested({
    required this.sessionId,
    required this.scheduledAt,
    required this.location,
  });
  @override
  List<Object?> get props => [sessionId, scheduledAt, location];
}

/// Mark the active session as finished. Host or group owner only.
class NextSessionFinishRequested extends NextSessionEvent {
  final String sessionId;
  const NextSessionFinishRequested(this.sessionId);
  @override
  List<Object?> get props => [sessionId];
}
