import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AuthRepository authRepository;

  AppCubit({
    required this.authRepository,
  }) : super(AppState());

  void getData() async {
    // await LoadJsonHelper.shared.load();
  }

  // void getProfile() async {
  //   emit(state.copyWith(fetchUser: LoadStatus.LOADING));
  //   try {
  //     final userRes = await userRepository.getProfile();
  //
  //     emit(state.copyWith(user: userRes));
  //
  //     emit(state.copyWith(fetchUser: LoadStatus.SUCCESS));
  //   } catch (error) {
  //     logger.e(error);
  //     emit(state.copyWith(fetchUser: LoadStatus.FAILURE));
  //   }
  // }
  // ///Sign Out
  // void signOut() async {
  //   emit(state.copyWith(signOutStatus: LoadStatus.LOADING));
  //   try {
  //     final deviceToken = await FirebaseMessaging.instance.getToken();
  //     final param = SignOutParam(deviceToken: deviceToken);
  //     //Todo
  //     await authRepository.signOut(param);
  //     await FirebaseMessaging.instance.deleteToken();
  //     await authRepository.removeToken();
  //     GlobalData.instance.token = null;
  //     AppState newState = state.copyWith(signOutStatus: LoadStatus.SUCCESS);
  //     newState.user = null;
  //     emit(newState);
  //   } catch (e) {
  //     logger.e(e);
  //     emit(state.copyWith(signOutStatus: LoadStatus.FAILURE));
  //   }
  // }
}
