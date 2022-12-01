import 'package:fluro/fluro.dart';
import 'package:flutter_base/app/auth_bloc/auth_bloc.dart';
import 'package:flutter_base/app/main_bloc/app_cubit.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/presentations/screen/home/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:flutter_base/presentations/screen/home/home_cubit.dart';
import 'package:flutter_base/presentations/screen/home/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Handler homeHandler = new Handler(handlerFunc: (context, parameters) {
  return BlocProvider(
    create: (context) {
      final authRepository = RepositoryProvider.of<AuthRepository>(context);
      return AuthBloc(authRepository: authRepository);
    },
    child: HomePage(),
  );
});
