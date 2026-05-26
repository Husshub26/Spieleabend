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

/// Randomly reorder the active rotation. The user who is currently
/// "Nächste:r" stays "Nächste:r" after the shuffle. Owner-only.
class HostRotationShuffleRequested extends HostRotationEvent {
  const HostRotationShuffleRequested();
}

/// Reorder so [userId] becomes Nächste:r. Owner-only. Moves the user into
/// the rotation slot that `_computeNextHostId` resolves to; other actives
/// shift but keep their relative order. Paused (inactive) members keep
/// their relative positions. No-op when the user is already Nächste:r or
/// not in active rotation.
class HostRotationMarkAsNextRequested extends HostRotationEvent {
  final String userId;
  const HostRotationMarkAsNextRequested(this.userId);
  @override
  List<Object?> get props => [userId];
}
