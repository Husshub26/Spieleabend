import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api/prisma_client.dart';
import 'event.dart';

export 'event.dart';

enum AuthStatus { unknown, loggedOut, loggedIn, error }

class AuthState extends Equatable {
  final AuthStatus status;
  final User? currentUser;
  final List<String> recentUsernames;
  final String? errorMessage;

  const AuthState({
    required this.status,
    required this.currentUser,
    required this.recentUsernames,
    required this.errorMessage,
  });

  const AuthState.initial()
    : status = AuthStatus.unknown,
      currentUser = null,
      recentUsernames = const [],
      errorMessage = null;

  @override
  List<Object?> get props => [
    status,
    currentUser,
    recentUsernames,
    errorMessage,
  ];
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static const _kRecentKey = 'auth.recent_usernames';
  static const _kCurrentKey = 'auth.current_username';

  final PrismaClient db;

  AuthBloc({required this.db}) : super(const AuthState.initial()) {
    on<AuthStarted>(_onStarted);
    on<AuthLoginRequested>(_onLogin);
    on<AuthLogoutRequested>(_onLogout);
  }

  Future<void> _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final recent = prefs.getStringList(_kRecentKey) ?? const [];
    final current = prefs.getString(_kCurrentKey);
    if (current != null) {
      final user = await _resolveUser(current);
      if (user != null) {
        emit(
          AuthState(
            status: AuthStatus.loggedIn,
            currentUser: user,
            recentUsernames: recent,
            errorMessage: null,
          ),
        );
        return;
      }
    }
    emit(
      AuthState(
        status: AuthStatus.loggedOut,
        currentUser: null,
        recentUsernames: recent,
        errorMessage: null,
      ),
    );
  }

  Future<void> _onLogin(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final username = event.username.trim().toLowerCase();
      if (username.isEmpty) {
        emit(
          AuthState(
            status: AuthStatus.error,
            currentUser: state.currentUser,
            recentUsernames: state.recentUsernames,
            errorMessage: 'Bitte Benutzername eingeben.',
          ),
        );
        return;
      }
      final user = await _resolveUser(username);
      if (user == null) {
        emit(
          AuthState(
            status: AuthStatus.error,
            currentUser: state.currentUser,
            recentUsernames: state.recentUsernames,
            errorMessage: 'Benutzer nicht gefunden.',
          ),
        );
        return;
      }
      final updatedRecents = [
        username,
        ...state.recentUsernames.where((u) => u != username),
      ].take(5).toList();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_kRecentKey, updatedRecents);
      await prefs.setString(_kCurrentKey, username);
      emit(
        AuthState(
          status: AuthStatus.loggedIn,
          currentUser: user,
          recentUsernames: updatedRecents,
          errorMessage: null,
        ),
      );
    } catch (e, st) {
      debugPrint('AuthBloc login failed: $e\n$st');
      emit(
        AuthState(
          status: AuthStatus.error,
          currentUser: state.currentUser,
          recentUsernames: state.recentUsernames,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onLogout(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final current = state.currentUser?.username;
    final remaining = state.recentUsernames.where((u) => u != current).toList();
    await prefs.setStringList(_kRecentKey, remaining);
    await prefs.remove(_kCurrentKey);
    emit(
      AuthState(
        status: AuthStatus.loggedOut,
        currentUser: null,
        recentUsernames: remaining,
        errorMessage: null,
      ),
    );
  }

  Future<User?> _resolveUser(String username) async {
    final existing = await db.user.findUnique(
      where: UserWhereUniqueInput(username: username),
    );
    if (existing != null) return existing;
    final display = username.isEmpty
        ? username
        : '${username[0].toUpperCase()}${username.substring(1)}';
    return db.user.create(
      data: CreateUserInput(username: username, displayName: display),
    );
  }
}
