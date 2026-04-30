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
  final GameSession? session;
  final User? host;
  const NextSessionLoaded({required this.session, required this.host});
  @override
  List<Object?> get props => [session, host];
}

class NextSessionError extends NextSessionState {
  final String message;
  const NextSessionError(this.message);
  @override
  List<Object?> get props => [message];
}

class NextSessionBloc extends Bloc<NextSessionEvent, NextSessionState> {
  final PrismaClient db;
  NextSessionBloc(this.db) : super(const NextSessionLoading()) {
    on<NextSessionLoadRequested>(_onLoad);
  }

  Future<void> _onLoad(
    NextSessionLoadRequested event,
    Emitter<NextSessionState> emit,
  ) async {
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
      emit(NextSessionLoaded(session: session, host: host));
    } catch (e) {
      emit(NextSessionError(e.toString()));
    }
  }
}
