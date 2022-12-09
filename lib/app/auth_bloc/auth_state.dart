part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class Uninitialized extends AuthState {
  @override
  List<Object> get props => [];
}

class Authenticated extends AuthState {
  final String? token;
  final LoginResponse? user;
  @override
  List<Object?> get props => [token, user];

  const Authenticated({this.user, this.token});

  Authenticated copyWith({
    LoginResponse? user,
    String? token,
  }) {
    return Authenticated(user: user ?? this.user, token: token ?? this.token);
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
