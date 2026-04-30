import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

/// One row in the rotation list — user + their membership flags.
class RotationEntry extends Equatable {
  final User user;
  final GroupMembership membership;
  const RotationEntry(this.user, this.membership);

  bool get rotationActive => membership.rotationActive;
  int get order => membership.rotationOrder;

  @override
  List<Object?> get props => [
    user.id,
    membership.id,
    membership.rotationOrder,
    membership.rotationActive,
  ];
}

sealed class HostRotationState extends Equatable {
  const HostRotationState();
  @override
  List<Object?> get props => [];
}

class HostRotationLoading extends HostRotationState {
  const HostRotationLoading();
}

class HostRotationLoaded extends HostRotationState {
  /// All memberships in the group, sorted by [RotationEntry.order]. Includes
  /// inactive members (UI shows them in a separate section).
  final List<RotationEntry> entries;

  /// User id of the user who is "next in line" — the host that would be
  /// pre-selected for a brand new Spieltermin. `null` when nobody is active.
  final String? nextHostUserId;

  /// Id of the currently logged-in user (for the self-toggle slider).
  final String currentUserId;

  /// Whether the logged-in user owns the group (only owners may reorder).
  final bool isOwner;

  const HostRotationLoaded({
    required this.entries,
    required this.nextHostUserId,
    required this.currentUserId,
    required this.isOwner,
  });

  List<RotationEntry> get activeEntries =>
      entries.where((e) => e.rotationActive).toList(growable: false);
  List<RotationEntry> get inactiveEntries =>
      entries.where((e) => !e.rotationActive).toList(growable: false);

  HostRotationLoaded copyWith({
    List<RotationEntry>? entries,
    String? nextHostUserId,
    bool clearNext = false,
  }) {
    return HostRotationLoaded(
      entries: entries ?? this.entries,
      nextHostUserId: clearNext
          ? null
          : (nextHostUserId ?? this.nextHostUserId),
      currentUserId: currentUserId,
      isOwner: isOwner,
    );
  }

  @override
  List<Object?> get props => [entries, nextHostUserId, currentUserId, isOwner];
}

class HostRotationError extends HostRotationState {
  final String message;
  const HostRotationError(this.message);
  @override
  List<Object?> get props => [message];
}

class HostRotationBloc extends Bloc<HostRotationEvent, HostRotationState> {
  final PrismaClient db;
  final String currentUserId;
  final String groupOwnerId;

  String? _groupId;

  HostRotationBloc({
    required this.db,
    required this.currentUserId,
    required this.groupOwnerId,
  }) : super(const HostRotationLoading()) {
    on<HostRotationLoadRequested>(_onLoad);
    on<HostRotationMoveRequested>(_onMove);
    on<HostRotationActiveToggled>(_onToggle);
  }

  Future<void> _onLoad(
    HostRotationLoadRequested event,
    Emitter<HostRotationState> emit,
  ) async {
    _groupId = event.groupId;
    try {
      emit(const HostRotationLoading());
      final entries = await _loadEntries(event.groupId);
      final nextId = await _computeNextHostId(event.groupId, entries);
      emit(
        HostRotationLoaded(
          entries: entries,
          nextHostUserId: nextId,
          currentUserId: currentUserId,
          isOwner: currentUserId == groupOwnerId,
        ),
      );
    } catch (e) {
      emit(HostRotationError(e.toString()));
    }
  }

  Future<void> _onMove(
    HostRotationMoveRequested event,
    Emitter<HostRotationState> emit,
  ) async {
    final groupId = _groupId;
    if (groupId == null) return;
    if (currentUserId != groupOwnerId) {
      emit(
        const HostRotationError(
          'Nur die Gruppenleitung darf die Reihenfolge ändern.',
        ),
      );
      // Re-load so the UI snaps back.
      await _onLoad(HostRotationLoadRequested(groupId), emit);
      return;
    }
    final current = state;
    if (current is! HostRotationLoaded) return;

    final ordered = [...current.entries]
      ..sort((a, b) => a.order.compareTo(b.order));
    final movingIndex = ordered.indexWhere((e) => e.user.id == event.userId);
    if (movingIndex == -1) return;
    final moving = ordered.removeAt(movingIndex);
    final clamped = event.targetIndex.clamp(0, ordered.length);
    ordered.insert(clamped, moving);

    // Persist new ordinals (1-based for display friendliness).
    for (var i = 0; i < ordered.length; i++) {
      final e = ordered[i];
      if (e.order == i + 1) continue;
      await db.groupMembership.update(
        where: GroupMembershipWhereUniqueInput(id: e.membership.id),
        data: UpdateGroupMembershipInput(rotationOrder: i + 1),
      );
    }
    await _onLoad(HostRotationLoadRequested(groupId), emit);
  }

  Future<void> _onToggle(
    HostRotationActiveToggled event,
    Emitter<HostRotationState> emit,
  ) async {
    final groupId = _groupId;
    if (groupId == null) return;
    final current = state;
    if (current is! HostRotationLoaded) return;
    final mine = current.entries
        .where((e) => e.user.id == currentUserId)
        .cast<RotationEntry?>()
        .firstOrNull;
    if (mine == null) return;
    await db.groupMembership.update(
      where: GroupMembershipWhereUniqueInput(id: mine.membership.id),
      data: UpdateGroupMembershipInput(rotationActive: event.active),
    );
    await _onLoad(HostRotationLoadRequested(groupId), emit);
  }

  Future<List<RotationEntry>> _loadEntries(String groupId) async {
    final memberships = await db.groupMembership.findMany(
      where: GroupMembershipWhereInput(groupId: StringFilter(equals: groupId)),
    );
    final entries = <RotationEntry>[];
    for (final m in memberships) {
      final u = await db.user.findUnique(
        where: UserWhereUniqueInput(id: m.userId),
      );
      if (u != null) entries.add(RotationEntry(u, m));
    }
    // Stable sort: rotationOrder asc, then displayName asc as tiebreaker
    // (covers freshly invited members that all start at order 0).
    entries.sort((a, b) {
      final c = a.order.compareTo(b.order);
      if (c != 0) return c;
      return a.user.displayName.toLowerCase().compareTo(
        b.user.displayName.toLowerCase(),
      );
    });
    return entries;
  }

  /// "Next host" = the active member that comes AFTER the most-recently
  /// scheduled session's host. When no past session exists or that host is
  /// no longer in the rotation, falls back to the first active member.
  Future<String?> _computeNextHostId(
    String groupId,
    List<RotationEntry> entries,
  ) async {
    final actives = entries.where((e) => e.rotationActive).toList();
    if (actives.isEmpty) return null;
    // Look at the latest session (active or finished) to know who hosted last.
    final lastSession = await db.gameSession.findFirst(
      where: GameSessionWhereInput(groupId: StringFilter(equals: groupId)),
      orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.desc),
    );
    if (lastSession == null) return actives.first.user.id;
    final lastIdx = actives.indexWhere((e) => e.user.id == lastSession.hostId);
    if (lastIdx == -1) return actives.first.user.id;
    return actives[(lastIdx + 1) % actives.length].user.id;
  }
}
