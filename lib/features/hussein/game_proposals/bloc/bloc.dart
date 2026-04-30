import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

sealed class GameProposalsState extends Equatable {
  const GameProposalsState();
  @override
  List<Object?> get props => [];
}

class GameProposalsLoading extends GameProposalsState {
  const GameProposalsLoading();
}

class GameProposalsLoaded extends GameProposalsState {
  /// The active (unfinished) session for the group, or null when none.
  final GameSession? session;
  final List<GameProposal> proposals;

  /// Resolved [User] for each proposal's [GameProposal.proposedById].
  final Map<String, User> proposers;
  final String? errorMessage;
  final String? infoMessage;

  const GameProposalsLoaded({
    required this.session,
    required this.proposals,
    required this.proposers,
    this.errorMessage,
    this.infoMessage,
  });

  @override
  List<Object?> get props => [
    session?.id,
    proposals,
    errorMessage,
    infoMessage,
  ];
}

class GameProposalsError extends GameProposalsState {
  final String message;
  const GameProposalsError(this.message);
  @override
  List<Object?> get props => [message];
}

class GameProposalsBloc extends Bloc<GameProposalsEvent, GameProposalsState> {
  final PrismaClient db;
  final String currentUserId;

  String? _groupId;

  GameProposalsBloc({required this.db, required this.currentUserId})
    : super(const GameProposalsLoading()) {
    on<GameProposalsLoadRequested>(_onLoad);
    on<GameProposalCreateRequested>(_onCreate);
  }

  Future<void> _onLoad(
    GameProposalsLoadRequested event,
    Emitter<GameProposalsState> emit, {
    String? errorMessage,
    String? infoMessage,
  }) async {
    _groupId = event.groupId;
    try {
      emit(const GameProposalsLoading());
      final session = await db.gameSession.findFirst(
        where: GameSessionWhereInput(
          groupId: StringFilter(equals: event.groupId),
          finished: const BooleanFilter(equals: false),
        ),
        orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
      );
      if (session == null) {
        emit(
          GameProposalsLoaded(
            session: null,
            proposals: const [],
            proposers: const {},
            errorMessage: errorMessage,
            infoMessage: infoMessage,
          ),
        );
        return;
      }
      final proposals = await db.gameProposal.findMany(
        where: GameProposalWhereInput(
          sessionId: StringFilter(equals: session.id),
        ),
      );
      final proposers = <String, User>{};
      for (final p in proposals) {
        if (proposers.containsKey(p.proposedById)) continue;
        final u = await db.user.findUnique(
          where: UserWhereUniqueInput(id: p.proposedById),
        );
        if (u != null) proposers[u.id] = u;
      }
      emit(
        GameProposalsLoaded(
          session: session,
          proposals: proposals,
          proposers: proposers,
          errorMessage: errorMessage,
          infoMessage: infoMessage,
        ),
      );
    } catch (e) {
      emit(GameProposalsError(e.toString()));
    }
  }

  Future<void> _onCreate(
    GameProposalCreateRequested event,
    Emitter<GameProposalsState> emit,
  ) async {
    final groupId = _groupId;
    if (groupId == null) return;
    final current = state;
    if (current is! GameProposalsLoaded || current.session == null) {
      await _onLoad(
        GameProposalsLoadRequested(groupId),
        emit,
        errorMessage: 'Es ist gerade kein aktiver Spieltermin geplant.',
      );
      return;
    }
    final title = event.title.trim();
    final desc = event.description.trim();
    if (title.isEmpty) {
      await _onLoad(
        GameProposalsLoadRequested(groupId),
        emit,
        errorMessage: 'Bitte einen Titel eingeben.',
      );
      return;
    }
    final lower = title.toLowerCase();
    if (current.proposals.any((p) => p.title.toLowerCase() == lower)) {
      await _onLoad(
        GameProposalsLoadRequested(groupId),
        emit,
        errorMessage: 'Dieses Spiel wurde bereits vorgeschlagen.',
      );
      return;
    }
    try {
      await db.gameProposal.create(
        data: CreateGameProposalInput(
          sessionId: current.session!.id,
          proposedById: currentUserId,
          title: title,
          description: desc,
        ),
      );
      await _onLoad(
        GameProposalsLoadRequested(groupId),
        emit,
        infoMessage: 'Vorschlag „$title“ hinzugefügt.',
      );
    } catch (e) {
      await _onLoad(
        GameProposalsLoadRequested(groupId),
        emit,
        errorMessage: 'Speichern fehlgeschlagen: $e',
      );
    }
  }
}
