part of 'login_cubit.dart';

class LoginState extends Equatable {
  final LoadStatus? loadStatus;
  final LoginResponse? user;
  final String? email;
  final String? password;
  final String? errorMessage;

  LoginState(
      {this.loadStatus,
      this.user,
      this.email,
      this.password,
      this.errorMessage});

  LoginState copyWith({
    LoadStatus? loadStatus,
    LoginResponse? user,
    String? email,
    String? password,
    String? errorMessage,
  }) {
    return new LoginState(
      loadStatus: loadStatus ?? this.loadStatus,
      user: user ?? this.user,
      password: password ?? this.password,
      email: email ?? this.email,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        this.loadStatus,
        this.user,
        this.email,
        this.password,
        this.errorMessage
      ];
}
