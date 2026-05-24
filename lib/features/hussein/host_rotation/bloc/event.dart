import 'package:equatable/equatable.dart';

sealed class HostRotationEvent extends Equatable {
  const HostRotationEvent();
  @override
  List<Object?> get props => [];
}

class HostRotationLoadRequested extends HostRotationEvent {
  final String groupId;
  const HostRotationLoadRequested(this.groupId);
  @override
  List<Object?> get props => [groupId];
}

/// Move [userId] so it ends up at [targetIndex] inside the active rotation
/// list. Other members are shifted, never swapped. Owner-only.
class HostRotationMoveRequested extends HostRotationEvent {
  final String userId;
  final int targetIndex;
  const HostRotationMoveRequested({
    required this.userId,
    required this.targetIndex,
  });
  @override
  List<Object?> get props => [userId, targetIndex];
}

/// Toggle the calling user's own opt-in flag. When false they are excluded
/// from the rotation entirely.
class HostRotationActiveToggled extends HostRotationEvent {
  final bool active;
  const HostRotationActiveToggled(this.active);
  @override
  List<Object?> get props => [active];
}
