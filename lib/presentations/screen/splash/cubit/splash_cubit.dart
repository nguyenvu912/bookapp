import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base/app/app_data.dart';
import 'package:flutter_base/model/entity/request/login_request.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';
import 'package:flutter_base/model/local_storage/shared_preferences_helper.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';

import 'package:rxdart/rxdart.dart';

part 'splash_state.dart';

enum SplashNavigator { OPEN_HOME, OPEN_LOGIN, OPEN_LOAD_DATA_FAILURE }

class SplashCubit extends Cubit<SplashState> {
  AuthRepository? authRepository;

  final messageController = PublishSubject<String>();
  final navigatorController = PublishSubject<SplashNavigator>();

  SplashCubit({
    this.authRepository,
  }) : super(SplashState());

  void fetchInitialData() async {
    String? token = (await SharedPreferencesHelper.getToken()) as String?;
    LoginResponse? userInfo = await SharedPreferencesHelper.getUserInfo();

    ///Check login and fetch profile
    if (token == null || token == "") {
      navigatorController.sink.add(SplashNavigator.OPEN_LOGIN);
    } else {
      GlobalData.instance.token = token;
      GlobalData.instance.userEntity = userInfo;
      navigatorController.sink.add(SplashNavigator.OPEN_HOME);
    }
  }

  @override
  Future<void> close() {
    messageController.close();
    navigatorController.close();
    return super.close();
  }
}
