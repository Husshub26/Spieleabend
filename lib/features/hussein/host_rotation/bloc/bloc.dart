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

  /// User id of the host of the most recent session (active or finished),
  /// or `null` when no session exists yet. This user's slot is frozen — they
  /// cannot be reordered, shuffled, or marked as Nächste:r — to keep the
  /// `_computeNextHostId` anchor stable.
  final String? lastHostUserId;

  /// Id of the currently logged-in user (for the self-toggle slider).
  final String currentUserId;

  /// Whether the logged-in user owns the group (only owners may reorder).
  final bool isOwner;

  const HostRotationLoaded({
    required this.entries,
    required this.nextHostUserId,
    required this.lastHostUserId,
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
    String? lastHostUserId,
    bool clearNext = false,
  }) {
    return HostRotationLoaded(
      entries: entries ?? this.entries,
      nextHostUserId: clearNext
          ? null
          : (nextHostUserId ?? this.nextHostUserId),
      lastHostUserId: lastHostUserId ?? this.lastHostUserId,
      currentUserId: currentUserId,
      isOwner: isOwner,
    );
  }

  @override
  List<Object?> get props => [
    entries,
    nextHostUserId,
    lastHostUserId,
    currentUserId,
    isOwner,
  ];
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
    on<HostRotationShuffleRequested>(_onShuffle);
    on<HostRotationMarkAsNextRequested>(_onMarkAsNext);
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
      final lastSession = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.desc),
      );
      emit(
        HostRotationLoaded(
          entries: entries,
          nextHostUserId: nextId,
          lastHostUserId: lastSession?.hostId,
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

    // The most-recent host is the anchor for _computeNextHostId. Moving them
    // around makes the "next" pointer shift unpredictably — refuse and snap
    // the UI back via a reload.
    if (event.userId == current.lastHostUserId) {
      await _onLoad(HostRotationLoadRequested(groupId), emit);
      return;
    }

    final ordered = [...current.entries]
      ..sort((a, b) => a.order.compareTo(b.order));
    // Remember where the locked last host originally sat so we can restore
    // them if this move would have nudged them out of place.
    final lastHostId = current.lastHostUserId;
    final originalLastIdx = lastHostId == null
        ? -1
        : ordered.indexWhere((e) => e.user.id == lastHostId);
    final movingIndex = ordered.indexWhere((e) => e.user.id == event.userId);
    if (movingIndex == -1) return;
    final moving = ordered.removeAt(movingIndex);
    final clamped = event.targetIndex.clamp(0, ordered.length);
    ordered.insert(clamped, moving);

    // Snap the locked last host back to their original slot — preserves the
    // `_computeNextHostId` anchor when somebody is dragged across them.
    if (originalLastIdx != -1) {
      final newLastIdx = ordered.indexWhere((e) => e.user.id == lastHostId);
      if (newLastIdx != -1 && newLastIdx != originalLastIdx) {
        final tmp = ordered[originalLastIdx];
        ordered[originalLastIdx] = ordered[newLastIdx];
        ordered[newLastIdx] = tmp;
      }
    }

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

  Future<void> _onMarkAsNext(
    HostRotationMarkAsNextRequested event,
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
      await _onLoad(HostRotationLoadRequested(groupId), emit);
      return;
    }
    final current = state;
    if (current is! HostRotationLoaded) return;
    if (event.userId == current.nextHostUserId) return;
    if (event.userId == current.lastHostUserId) return;
    final isActiveTarget = current.activeEntries.any(
      (e) => e.user.id == event.userId,
    );
    if (!isActiveTarget) return;
    final ordered = [...current.entries]
      ..sort((a, b) => a.order.compareTo(b.order));
    final nextSlotFullIdx = ordered.indexWhere(
      (e) => e.user.id == current.nextHostUserId,
    );
    if (nextSlotFullIdx < 0) return;
    add(
      HostRotationMoveRequested(
        userId: event.userId,
        targetIndex: nextSlotFullIdx,
      ),
    );
  }

  Future<void> _onShuffle(
    HostRotationShuffleRequested event,
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
      await _onLoad(HostRotationLoadRequested(groupId), emit);
      return;
    }
    final current = state;
    if (current is! HostRotationLoaded) return;
    final actives = [...current.activeEntries];
    if (actives.length < 2) return;
    final preservedNextId = current.nextHostUserId;
    final lastHostUserId = current.lastHostUserId;

    // Remember where the locked last host sits — they must end up back here.
    final lockedIdx = lastHostUserId == null
        ? -1
        : actives.indexWhere((e) => e.user.id == lastHostUserId);

    actives.shuffle();

    // Restore the locked last host to their original slot, swapping out
    // whoever the shuffle parked there.
    if (lockedIdx != -1) {
      final newLockedIdx = actives.indexWhere(
        (e) => e.user.id == lastHostUserId,
      );
      if (newLockedIdx != -1 && newLockedIdx != lockedIdx) {
        final tmp = actives[lockedIdx];
        actives[lockedIdx] = actives[newLockedIdx];
        actives[newLockedIdx] = tmp;
      }
    }

    if (preservedNextId != null) {
      final int targetSlot;
      if (lockedIdx == -1) {
        // No last session anchor at all → fall back to position 0.
        targetSlot = 0;
      } else {
        targetSlot = (lockedIdx + 1) % actives.length;
      }
      final preservedIdx = actives.indexWhere(
        (e) => e.user.id == preservedNextId,
      );
      // Never displace the locked host while preserving Nächste:r.
      if (preservedIdx != -1 &&
          preservedIdx != targetSlot &&
          preservedIdx != lockedIdx &&
          targetSlot != lockedIdx) {
        final tmp = actives[targetSlot];
        actives[targetSlot] = actives[preservedIdx];
        actives[preservedIdx] = tmp;
      }
    }
    final ordered = [...actives, ...current.inactiveEntries];
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
