import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => [];
}

class AuthStarted extends AuthEvent {
  const AuthStarted();
}

class AuthLoginRequested extends AuthEvent {
  final String username;
  const AuthLoginRequested(this.username);
  @override
  List<Object?> get props => [username];
}

class AuthLogoutRequested extends AuthEvent {
  const AuthLogoutRequested();
}
