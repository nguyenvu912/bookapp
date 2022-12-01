part of 'login_cubit.dart';

class LoginState extends Equatable {
  final LoadStatus? loadStatus;
  final String? username;
  final String? password;

  LoginState({this.loadStatus, this.username, this.password});

  LoginState copyWith({
    LoadStatus? loadStatus,
    String? username,
    String? password,
  }) {
    return new LoginState(
      loadStatus: loadStatus ?? this.loadStatus,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [
        this.loadStatus,
        this.username,
        this.password,
      ];
}
