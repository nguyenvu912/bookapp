import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'navigator_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void setCurrentScreen(String screenName) {
    List<String> currentStack = state.routeStack ?? [];
    currentStack.add(screenName);
    Application.routeStack.add(screenName);
    emit(state.copyWith(currentRoute: screenName, routeStack: currentStack));
  }

  void removeCurrentScreen(String screenName) {
    List<String> currentStack = state.routeStack ?? [];
    if (currentStack.length > 0) {
      currentStack.removeLast();
      Application.routeStack.removeLast();
    }
    emit(state.copyWith(currentRoute: screenName, routeStack: currentStack));
  }
}
