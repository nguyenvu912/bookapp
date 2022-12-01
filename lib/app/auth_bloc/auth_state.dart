part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class Uninitialized extends AuthState {
  @override
  List<Object> get props => [];
}

class Authenticated extends AuthState {
  final TokenEntity currentToken;
  final UserEntity currentUser;
  @override
  List<Object> get props => [currentToken, currentUser];

  const Authenticated({
    required this.currentToken,
    required this.currentUser,
  });

  Authenticated copyWith({
    TokenEntity? currentToken,
    UserEntity? currentUser,
  }) {
    return Authenticated(
      currentToken: currentToken ?? this.currentToken,
      currentUser: currentUser ?? this.currentUser,
    );
  }
}

class Unauthenticated extends AuthState {
  final bool isForceLoggedOut;

  @override
  List<Object> get props => [isForceLoggedOut];

  const Unauthenticated({
    required this.isForceLoggedOut,
  });
}
