import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository;
  // ProfileRepository profileRepository;
  AuthBloc({
    required this.authRepository,
    // required this.profileRepository
  }) : super(Uninitialized()) {}
}
