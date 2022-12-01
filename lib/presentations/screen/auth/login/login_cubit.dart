import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/subjects.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

enum LoginNavigator {
  OPEN_HOME,
}

class LoginCubit extends Cubit<LoginState> {
  AuthRepository? repository;
  LoginCubit({this.repository}) : super(LoginState());

  final navigatorController = PublishSubject<LoginNavigator>();

  @override
  Future<void> close() {
    navigatorController.close();
    // showMessageController.close();
    return super.close();
  }

  void clearInformation() {
    emit(state.copyWith(username: "", password: ""));
  }

  void usernameChange(String username) {
    emit(state.copyWith(username: username));
  }

  void passChange(String pass) {
    emit(state.copyWith(password: pass));
  }
}
