part of 'app_cubit.dart';

class AppState extends Equatable {
  final LoadStatus? isLogin;

  @override
  List<Object?> get props => [this.isLogin];

  AppState({this.isLogin});

  AppState copyWith({LoadStatus? isLogin}) {
    return AppState(isLogin: isLogin ?? this.isLogin);
  }
}
