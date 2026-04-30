import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

class GroupsState extends Equatable {
  final bool loading;
  final User? user;
  final List<Group> groups;
  final Group? activeGroup;
  final User? activeCreator;
  final List<User> activeMembers;
  final String? errorMessage;
  final String? infoMessage;

  const GroupsState({
    required this.loading,
    required this.user,
    required this.groups,
    required this.activeGroup,
    required this.activeCreator,
    required this.activeMembers,
    required this.errorMessage,
    required this.infoMessage,
  });

  const GroupsState.initial()
    : loading = false,
      user = null,
      groups = const [],
      activeGroup = null,
      activeCreator = null,
      activeMembers = const [],
      errorMessage = null,
      infoMessage = null;

  /// `true` when the current user created the active group and therefore has
  /// permission to invite new members.
  bool get isActiveGroupOwner =>
      activeGroup != null &&
      user != null &&
      activeGroup!.createdById == user!.id;

  GroupsState copyWith({
    bool? loading,
    User? user,
    List<Group>? groups,
    Group? activeGroup,
    User? activeCreator,
    List<User>? activeMembers,
    String? errorMessage,
    String? infoMessage,
    bool clearActive = false,
    bool clearMessages = false,
  }) {
    return GroupsState(
      loading: loading ?? this.loading,
      user: user ?? this.user,
      groups: groups ?? this.groups,
      activeGroup: clearActive ? null : (activeGroup ?? this.activeGroup),
      activeCreator: clearActive ? null : (activeCreator ?? this.activeCreator),
      activeMembers: activeMembers ?? this.activeMembers,
      errorMessage: clearMessages ? null : (errorMessage ?? this.errorMessage),
      infoMessage: clearMessages ? null : (infoMessage ?? this.infoMessage),
    );
  }

  @override
  List<Object?> get props => [
    loading,
    user?.id,
    groups,
    activeGroup?.id,
    activeCreator?.id,
    activeMembers,
    errorMessage,
    infoMessage,
  ];
}

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  static const _kActiveKey = 'groups.active_id';

  final PrismaClient db;

  GroupsBloc({required this.db}) : super(const GroupsState.initial()) {
    on<GroupsUserChanged>(_onUserChanged);
    on<GroupSelected>(_onSelected);
    on<GroupCleared>(_onCleared);
    on<GroupCreateRequested>(_onCreate);
    on<GroupMembersRequested>(_onMembers);
    on<GroupInviteRequested>(_onInvite);
  }

  Future<void> _onUserChanged(
    GroupsUserChanged event,
    Emitter<GroupsState> emit,
  ) async {
    final user = event.user;
    if (user == null) {
      emit(const GroupsState.initial());
      return;
    }
    emit(state.copyWith(loading: true, user: user, clearMessages: true));
    final groups = await _loadGroupsForUser(user.id);
    final prefs = await SharedPreferences.getInstance();
    final storedId = prefs.getString(_kActiveKey);
    final active = groups
        .where((g) => g.id == storedId)
        .cast<Group?>()
        .firstOrNull;
    final creator = active == null ? null : await _loadCreator(active);
    final members = active == null
        ? const <User>[]
        : await _loadMembers(active.id);
    emit(
      state.copyWith(
        loading: false,
        user: user,
        groups: groups,
        activeGroup: active,
        activeCreator: creator,
        activeMembers: members,
        clearActive: active == null,
      ),
    );
  }

  Future<void> _onSelected(
    GroupSelected event,
    Emitter<GroupsState> emit,
  ) async {
    final group = state.groups.where((g) => g.id == event.groupId).firstOrNull;
    if (group == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kActiveKey, group.id);
    final creator = await _loadCreator(group);
    final members = await _loadMembers(group.id);
    emit(
      state.copyWith(
        activeGroup: group,
        activeCreator: creator,
        activeMembers: members,
        clearMessages: true,
      ),
    );
  }

  Future<void> _onCleared(GroupCleared event, Emitter<GroupsState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kActiveKey);
    emit(
      state.copyWith(
        clearActive: true,
        activeMembers: const [],
        clearMessages: true,
      ),
    );
  }

  Future<void> _onCreate(
    GroupCreateRequested event,
    Emitter<GroupsState> emit,
  ) async {
    final user = state.user;
    if (user == null) return;
    final name = event.name.trim();
    if (name.isEmpty) {
      emit(state.copyWith(errorMessage: 'Bitte einen Gruppennamen eingeben.'));
      return;
    }
    try {
      // Reject duplicates (case-insensitive) globally so two people can't
      // pick the same group name.
      final existingGroups = await db.group.findMany();
      final lower = name.toLowerCase();
      if (existingGroups.any((g) => g.name.toLowerCase() == lower)) {
        emit(
          state.copyWith(
            errorMessage: 'Eine Gruppe mit diesem Namen gibt es bereits.',
          ),
        );
        return;
      }
      final group = await db.group.create(
        data: CreateGroupInput(name: name, createdById: user.id),
      );
      await db.groupMembership.create(
        data: CreateGroupMembershipInput(groupId: group.id, userId: user.id),
      );
      final groups = await _loadGroupsForUser(user.id);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_kActiveKey, group.id);
      final members = await _loadMembers(group.id);
      emit(
        state.copyWith(
          groups: groups,
          activeGroup: group,
          activeCreator: user,
          activeMembers: members,
          infoMessage: 'Gruppe „${group.name}“ erstellt.',
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Erstellen fehlgeschlagen: $e'));
    }
  }

  Future<void> _onMembers(
    GroupMembersRequested event,
    Emitter<GroupsState> emit,
  ) async {
    try {
      final members = await _loadMembers(event.groupId);
      emit(state.copyWith(activeMembers: members, clearMessages: true));
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: 'Mitglieder konnten nicht geladen werden: $e',
        ),
      );
    }
  }

  Future<void> _onInvite(
    GroupInviteRequested event,
    Emitter<GroupsState> emit,
  ) async {
    final username = event.username.trim().toLowerCase();
    if (username.isEmpty) {
      emit(state.copyWith(errorMessage: 'Bitte Benutzername eingeben.'));
      return;
    }
    final group = state.activeGroup;
    final me = state.user;
    if (group == null || me == null) return;
    if (group.createdById != me.id) {
      emit(
        state.copyWith(
          errorMessage:
              'Nur ${state.activeCreator?.displayName ?? "der Ersteller"} '
              'kann neue Mitglieder einladen.',
        ),
      );
      return;
    }
    try {
      final user = await db.user.findUnique(
        where: UserWhereUniqueInput(username: username),
      );
      if (user == null) {
        emit(
          state.copyWith(
            errorMessage:
                'Benutzer „$username“ existiert nicht – '
                'er muss sich zuerst einmal eingeloggt haben.',
          ),
        );
        return;
      }
      final existing = await db.groupMembership.findFirst(
        where: GroupMembershipWhereInput(
          groupId: StringFilter(equals: event.groupId),
          userId: StringFilter(equals: user.id),
        ),
      );
      if (existing != null) {
        emit(
          state.copyWith(
            errorMessage: '${user.displayName} ist bereits in der Gruppe.',
          ),
        );
        return;
      }
      await db.groupMembership.create(
        data: CreateGroupMembershipInput(
          groupId: event.groupId,
          userId: user.id,
        ),
      );
      final members = await _loadMembers(event.groupId);
      emit(
        state.copyWith(
          activeMembers: members,
          infoMessage: '${user.displayName} eingeladen.',
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Einladung fehlgeschlagen: $e'));
    }
  }

  Future<List<Group>> _loadGroupsForUser(String userId) async {
    final memberships = await db.groupMembership.findMany(
      where: GroupMembershipWhereInput(userId: StringFilter(equals: userId)),
    );
    if (memberships.isEmpty) return const [];
    final groups = <Group>[];
    for (final m in memberships) {
      final g = await db.group.findUnique(
        where: GroupWhereUniqueInput(id: m.groupId),
      );
      if (g != null) groups.add(g);
    }
    groups.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    return groups;
  }

  Future<User?> _loadCreator(Group group) {
    return db.user.findUnique(
      where: UserWhereUniqueInput(id: group.createdById),
    );
  }

  Future<List<User>> _loadMembers(String groupId) async {
    final memberships = await db.groupMembership.findMany(
      where: GroupMembershipWhereInput(groupId: StringFilter(equals: groupId)),
    );
    final users = <User>[];
    for (final m in memberships) {
      final u = await db.user.findUnique(
        where: UserWhereUniqueInput(id: m.userId),
      );
      if (u != null) users.add(u);
    }
    users.sort(
      (a, b) =>
          a.displayName.toLowerCase().compareTo(b.displayName.toLowerCase()),
    );
    return users;
  }
}
