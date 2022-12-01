import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/model/repository/profile_repository.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/profile_cubit.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Handler profileHandler = new Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider(
    create: (context) {
      final profileRepository =
          RepositoryProvider.of<ProfileRepository>(context);
      final authRepository = RepositoryProvider.of<AuthRepository>(context);
      return ProfileCubit(
          profileRepository: profileRepository, authRepository: authRepository);
    },
    child: ProfilePage(),
  );
});
