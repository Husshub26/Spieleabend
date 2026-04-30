import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

sealed class NextSessionState extends Equatable {
  const NextSessionState();
  @override
  List<Object?> get props => [];
}

class NextSessionLoading extends NextSessionState {
  const NextSessionLoading();
}

class NextSessionLoaded extends NextSessionState {
  /// Currently active (unfinished) session, or null when none exists.
  final GameSession? session;

  /// Resolved host of [session].
  final User? host;

  /// User who would be the host if a brand new session were created right
  /// now (i.e. the result of the rotation lookup). Null when nobody is
  /// active in the rotation.
  final User? proposedHost;

  /// Last 5 finished sessions, newest first.
  final List<GameSession> history;

  /// Optional one-shot info / error message to surface in the UI.
  final String? errorMessage;
  final String? infoMessage;

  const NextSessionLoaded({
    required this.session,
    required this.host,
    required this.proposedHost,
    required this.history,
    this.errorMessage,
    this.infoMessage,
  });

  NextSessionLoaded copyWith({
    GameSession? session,
    User? host,
    User? proposedHost,
    List<GameSession>? history,
    String? errorMessage,
    String? infoMessage,
    bool clearMessages = false,
    bool clearSession = false,
  }) {
    return NextSessionLoaded(
      session: clearSession ? null : (session ?? this.session),
      host: clearSession ? null : (host ?? this.host),
      proposedHost: proposedHost ?? this.proposedHost,
      history: history ?? this.history,
      errorMessage: clearMessages ? null : (errorMessage ?? this.errorMessage),
      infoMessage: clearMessages ? null : (infoMessage ?? this.infoMessage),
    );
  }

  @override
  List<Object?> get props => [
    session,
    host?.id,
    proposedHost?.id,
    history,
    errorMessage,
    infoMessage,
  ];
}

class NextSessionError extends NextSessionState {
  final String message;
  const NextSessionError(this.message);
  @override
  List<Object?> get props => [message];
}

class NextSessionBloc extends Bloc<NextSessionEvent, NextSessionState> {
  final PrismaClient db;
  final String currentUserId;
  final String groupOwnerId;

  String? _groupId;

  NextSessionBloc(
    this.db, {
    required this.currentUserId,
    required this.groupOwnerId,
  }) : super(const NextSessionLoading()) {
    on<NextSessionLoadRequested>(_onLoad);
    on<NextSessionCreateRequested>(_onCreate);
    on<NextSessionEditRequested>(_onEdit);
    on<NextSessionFinishRequested>(_onFinish);
  }

  Future<void> _onLoad(
    NextSessionLoadRequested event,
    Emitter<NextSessionState> emit, {
    String? errorMessage,
    String? infoMessage,
  }) async {
    _groupId = event.groupId;
    try {
      emit(const NextSessionLoading());
      final session = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: false),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
      );
      final host = session == null
          ? null
          : await db.user.findUnique(
              where: UserWhereUniqueInput(id: session.hostId),
            );
      final proposedHostId = await _computeNextHostId(event.groupId);
      final proposedHost = proposedHostId == null
          ? null
          : await db.user.findUnique(
              where: UserWhereUniqueInput(id: proposedHostId),
            );
      final finished = await db.gameSession.findMany(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: true),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.desc),
        take: 5,
      );
      emit(
        NextSessionLoaded(
          session: session,
          host: host,
          proposedHost: proposedHost,
          history: finished,
          errorMessage: errorMessage,
          infoMessage: infoMessage,
        ),
      );
    } catch (e) {
      emit(NextSessionError(e.toString()));
    }
  }

  Future<void> _onCreate(
    NextSessionCreateRequested event,
    Emitter<NextSessionState> emit,
  ) async {
    try {
      final existing = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: false),
        ),
      );
      if (existing != null) {
        await _onLoad(
          NextSessionLoadRequested(event.groupId),
          emit,
          errorMessage:
              'Es gibt bereits einen aktiven Termin. Bitte zuerst beenden.',
        );
        return;
      }
      final hostId = await _computeNextHostId(event.groupId);
      if (hostId == null) {
        await _onLoad(
          NextSessionLoadRequested(event.groupId),
          emit,
          errorMessage: 'Niemand ist gerade aktiv in der Gastgeber-Rotation.',
        );
        return;
      }
      final loc = event.location.trim();
      if (loc.isEmpty) {
        await _onLoad(
          NextSessionLoadRequested(event.groupId),
          emit,
          errorMessage: 'Bitte einen Ort angeben.',
        );
        return;
      }
      await db.gameSession.create(
        data: CreateGameSessionInput(
          groupId: event.groupId,
          scheduledAt: event.scheduledAt,
          hostId: hostId,
          location: loc,
        ),
      );
      await _onLoad(
        NextSessionLoadRequested(event.groupId),
        emit,
        infoMessage: 'Termin angelegt. Rotation wurde weitergedreht.',
      );
    } catch (e) {
      emit(NextSessionError(e.toString()));
    }
  }

  Future<void> _onEdit(
    NextSessionEditRequested event,
    Emitter<NextSessionState> emit,
  ) async {
    final groupId = _groupId;
    if (groupId == null) return;
    try {
      final loc = event.location.trim();
      if (loc.isEmpty) {
        await _onLoad(
          NextSessionLoadRequested(groupId),
          emit,
          errorMessage: 'Bitte einen Ort angeben.',
        );
        return;
      }
      await db.gameSession.update(
        where: GameSessionWhereUniqueInput(id: event.sessionId),
        data: UpdateGameSessionInput(
          scheduledAt: event.scheduledAt,
          location: loc,
        ),
      );
      await _onLoad(
        NextSessionLoadRequested(groupId),
        emit,
        infoMessage: 'Termin aktualisiert.',
      );
    } catch (e) {
      emit(NextSessionError(e.toString()));
    }
  }

  Future<void> _onFinish(
    NextSessionFinishRequested event,
    Emitter<NextSessionState> emit,
  ) async {
    final groupId = _groupId;
    if (groupId == null) return;
    try {
      final session = await db.gameSession.findUnique(
        where: GameSessionWhereUniqueInput(id: event.sessionId),
      );
      if (session == null) return;
      final allowed =
          session.hostId == currentUserId || currentUserId == groupOwnerId;
      if (!allowed) {
        await _onLoad(
          NextSessionLoadRequested(groupId),
          emit,
          errorMessage:
              'Nur Gastgeber:in oder Gruppenleitung können den Termin beenden.',
        );
        return;
      }
      await db.gameSession.update(
        where: GameSessionWhereUniqueInput(id: event.sessionId),
        data: const UpdateGameSessionInput(finished: true),
      );
      await _onLoad(
        NextSessionLoadRequested(groupId),
        emit,
        infoMessage:
            'Spieltermin beendet. Bewertungen können jetzt abgegeben werden.',
      );
    } catch (e) {
      emit(NextSessionError(e.toString()));
    }
  }

  /// Mirrors [HostRotationBloc._computeNextHostId] – kept duplicated so the
  /// two features stay decoupled.
  Future<String?> _computeNextHostId(String groupId) async {
    final memberships = await db.groupMembership.findMany(
      where: GroupMembershipWhereInput(
        groupId: StringFilter(equals: groupId),
        rotationActive: const BooleanFilter(equals: true),
      ),
    );
    if (memberships.isEmpty) return null;
    memberships.sort((a, b) => a.rotationOrder.compareTo(b.rotationOrder));
    final lastSession = await db.gameSession.findFirst(
      where: GameSessionWhereInput(groupId: StringFilter(equals: groupId)),
      orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.desc),
    );
    if (lastSession == null) return memberships.first.userId;
    final idx = memberships.indexWhere((m) => m.userId == lastSession.hostId);
    if (idx == -1) return memberships.first.userId;
    return memberships[(idx + 1) % memberships.length].userId;
  }
}
