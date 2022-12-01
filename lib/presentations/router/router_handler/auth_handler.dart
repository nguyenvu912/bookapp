import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/presentations/screen/auth/login/login_cubit.dart';
import 'package:flutter_base/presentations/screen/auth/login/login_page.dart';
import 'package:flutter_base/presentations/screen/auth/register/register_cubit.dart';
import 'package:flutter_base/presentations/screen/auth/register/register_page.dart';
import 'package:flutter_base/presentations/screen/splash/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Handler splashHandler = new Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
      SplashPage(),
);

Handler loginHandler = new Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider(
    create: (context) {
      final repository = RepositoryProvider.of<AuthRepository>(context);
      return LoginCubit(
        repository: repository,
      );
    },
    child: LoginPage(),
  );
});

// Handler changePasswordHandler = new Handler(
//     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
//   return BlocProvider(
//     create: (context) {
//       final repository = RepositoryProvider.of<AuthRepository>(context);
//       return ChangePasswordCubit(repository: repository);
//     },
//     child: ChangePasswordPage(),
//   );
// });

// Handler forgotPasswordHandler = new Handler(
//     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
//   return BlocProvider(
//     create: (context) {
//       final repository = RepositoryProvider.of<AuthRepository>(context);
//       return ForgotPasswordCubit(repository: repository);
//     },
//     child: ForgotPasswordPage(),
//   );
// });

Handler registryHandler = new Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider(
    create: (context) {
      final repository = RepositoryProvider.of<AuthRepository>(context);
      return RegisterCubit(repository: repository);
    },
    child: RegisterPage(),
  );
});
