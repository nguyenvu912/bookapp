import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  //AppCubit appCubit;

  HomeCubit()
      : super(HomeState(
          isShowTabbar: false,
        ));

  void changeTabbarState(bool isShow) {
    if (state.getCategoryBookStatus == LoadStatus.SUCCESS) {
      emit(state.copyWith(isShowTabbar: isShow));
    }
  }
}
