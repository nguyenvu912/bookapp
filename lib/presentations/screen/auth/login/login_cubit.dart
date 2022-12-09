import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_data.dart';
import 'package:flutter_base/app/language/generated/intl/messages_en.dart';
import 'package:flutter_base/model/entity/request/login_request.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  AuthRepository? repository;
  LoginCubit({this.repository}) : super(LoginState());

  @override
  Future<void> close() {
    return super.close();
  }

  void requestLogin(String email, String password) async {
    emit(state.copyWith(loadStatus: LoadStatus.LOADING));
    try {
      final result = await repository!
          .login(LoginRequest(email: email, password: password));

      if (result.messageCode == 200) {
        emit(state.copyWith(loadStatus: LoadStatus.SUCCESS));
        GlobalData.instance.token = result.data!.token;
      } else if (result.messageCode == 400) {
        emit(state.copyWith(
            loadStatus: LoadStatus.FAILURE, errorMessage: result.message));
        AppSnackBar.showError(state.errorMessage);
      } else {
        emit(state.copyWith(
            loadStatus: LoadStatus.FAILURE, errorMessage: result.message));
      }
    } catch (e) {
      emit(state.copyWith(loadStatus: LoadStatus.FAILURE));
    }
    ;
  }

  void clearInformation() {
    emit(state.copyWith(email: '', password: ''));
  }

  void emailChange(String email) {
    emit(state.copyWith(email: email));
  }

  void passChange(String pass) {
    emit(state.copyWith(password: pass));
  }
}
