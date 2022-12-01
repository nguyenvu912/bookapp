import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base/app/app_data.dart';
import 'package:flutter_base/model/entity/token/token_entity.dart';
import 'package:flutter_base/model/entity/user/user_entity.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository;
  // ProfileRepository profileRepository;
  AuthBloc({
    required this.authRepository,
    // required this.profileRepository
  }) : super(Uninitialized()) {
    on<AppStarted>((event, emit) async {
      TokenEntity? storedToken = await authRepository.getToken();
      if (storedToken == null) {
        /// Haven't loggedIn
        add(LoggedOut());
      } else {
        add(LoggedOut());
      }
    });

    on<LoggedIn>((event, emit) {
      GlobalData.instance.token = event.token.token;
      authRepository.setToken(event.token);
      emit(Authenticated(currentToken: event.token, currentUser: event.user));
    });
    on<LoggedOut>((event, emit) {
      GlobalData.instance.token = null;
      authRepository.removeToken();
      emit(Unauthenticated(isForceLoggedOut: false));
    });

    on<Registered>((event, emit) async {
      ///For user case: Update Profile Required after first login

      if (state is Authenticated) {
        await authRepository.setToken((state as Authenticated)
            .currentToken
            .copyWith(isFirstTimeIssue: false));
        TokenEntity? storedToken = await authRepository.getToken();

        emit(Authenticated(
            currentToken: storedToken!, currentUser: event.updatedInfo));
      }
    });
  }
}
