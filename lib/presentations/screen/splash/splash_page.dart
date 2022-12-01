import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/app/language/generated/l10n.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/presentations/common_widget/dialog/app_dialog.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_base/presentations/screen/splash/cubit/splash_cubit.dart';
import 'package:flutter_base/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashCubit _cubit;
  late StreamSubscription _navigationSubscription;

  @override
  void initState() {
    final authRepository = RepositoryProvider.of<AuthRepository>(context);
    _cubit = SplashCubit(
      authRepository: authRepository,
    );
    super.initState();
    Utils.determinePosition();

    _navigationSubscription = _cubit.navigatorController.stream.listen((event) {
      Future.delayed(const Duration(seconds: 3), () {
        switch (event) {
          case SplashNavigator.OPEN_HOME:
            showHome();
            break;
          case SplashNavigator.OPEN_LOGIN:
            showLogin();
            break;
          case SplashNavigator.OPEN_LOAD_DATA_FAILURE:
            showErrorHapped();
            break;
        }
      });
    });
    _setup();
  }

  void _setup() async {
    //Request permission
    var status = await Permission.storage.status;
    if (status.isDenied) {
      // You can request multiple permissions at once.
      await Permission.storage.request();
    }
    _cubit.fetchInitialData();
  }

  @override
  void dispose() {
    _navigationSubscription.cancel();
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  children: [
                    Image.asset(AppImages.icLogoApp, width: 128, height: 128),
                    const SizedBox(height: 23),
                    Text(
                      'BOOK SHARE APP',
                      style: AppTextStyle.main(16, weight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: 20 + MediaQuery.of(context).viewPadding.bottom),
                child: Text(
                  'Copyright 2022, by HUCE',
                  style: AppTextStyle.main(14, weight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void showHome() {
    Application.router?.navigateTo(context, Routes.login, replace: true);
  }

  void showLogin() {
    Application.router?.navigateTo(context, Routes.login, replace: true);
  }

  void showErrorHapped() {
    AppDialog(
      context: context,
      type: DialogType.ERROR,
      title: S.of(context).common_fetchDataFailure,
      description: "Không thể kết nối tới máy chủ. Xin vui lòng thử lại!",
      okText: "Thử lại",
      onOkPressed: () {
        _cubit.fetchInitialData();
      },
      dismissible: false,
    ).show();
  }
}
