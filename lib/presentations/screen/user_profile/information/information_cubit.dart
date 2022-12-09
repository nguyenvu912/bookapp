import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/repository/profile_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'information_state.dart';

class InformationCubit extends Cubit<InformationState> {
  ProfileRepository repository;
  InformationCubit({required this.repository}) : super(InformationState());
}
