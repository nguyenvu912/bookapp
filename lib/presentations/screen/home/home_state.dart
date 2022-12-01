part of 'home_cubit.dart';

class HomeState extends Equatable {
  final LoadStatus? getCategoryBookStatus;
  final bool isShowTabbar;

  List<Object?> get props => [getCategoryBookStatus, isShowTabbar];

  const HomeState({this.getCategoryBookStatus, required this.isShowTabbar});

  HomeState copyWith({
    LoadStatus? getCategoryBookStatus,
    bool? isShowTabbar,
  }) {
    return HomeState(
      getCategoryBookStatus:
          getCategoryBookStatus ?? this.getCategoryBookStatus,
      isShowTabbar: isShowTabbar ?? this.isShowTabbar,
    );
  }
}
