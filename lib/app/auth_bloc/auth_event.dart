part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AppStarted extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class LoggedIn extends AuthEvent {
  final TokenEntity token;
  final UserEntity user;

  @override
  List<Object?> get props => [token, user];

  const LoggedIn({
    required this.token,
    required this.user,
  });
}

class LoggedOut extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class TokenExpired extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class Registered extends AuthEvent {
  final UserEntity updatedInfo;

  @override
  List<Object?> get props => [updatedInfo];

  const Registered({
    required this.updatedInfo,
  });
}
