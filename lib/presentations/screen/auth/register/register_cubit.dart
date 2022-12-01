import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  AuthRepository? repository;
  RegisterCubit({this.repository}) : super(RegisterState());

  void fullNameChange(String fullName) {
    emit(state.copyWith(fullName: fullName));
  }

  void accountNameChange(String accountName) {
    emit(state.copyWith(accountName: accountName));
  }

  void passwordChange(String password) {
    emit(state.copyWith(password: password));
  }

  void phoneNumberChange(String phoneNumber) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }
}
