import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  AuthRepository authRepository;
  BottomBarCubit(
    this.authRepository,
  ) : super(BottomBarState(
          currentPage: 0,
        ));

  void changePage(int selectedIndex) {
    emit(state.copyWith(selectedPage: selectedIndex));
  }
}
