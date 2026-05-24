import 'package:equatable/equatable.dart';

import '../../api/prisma_client.dart';

sealed class GroupsEvent extends Equatable {
  const GroupsEvent();
  @override
  List<Object?> get props => [];
}

/// Reload memberships for the given user (or clear when null).
class GroupsUserChanged extends GroupsEvent {
  final User? user;
  const GroupsUserChanged(this.user);
  @override
  List<Object?> get props => [user?.id];
}

class GroupSelected extends GroupsEvent {
  final String groupId;
  const GroupSelected(this.groupId);
  @override
  List<Object?> get props => [groupId];
}

class GroupCleared extends GroupsEvent {
  const GroupCleared();
}

class GroupCreateRequested extends GroupsEvent {
  final String name;
  const GroupCreateRequested(this.name);
  @override
  List<Object?> get props => [name];
}

class GroupMembersRequested extends GroupsEvent {
  final String groupId;
  const GroupMembersRequested(this.groupId);
  @override
  List<Object?> get props => [groupId];
}

class GroupInviteRequested extends GroupsEvent {
  final String groupId;
  final String username;
  const GroupInviteRequested({required this.groupId, required this.username});
  @override
  List<Object?> get props => [groupId, username];
}
