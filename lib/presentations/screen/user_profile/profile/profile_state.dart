part of 'profile_cubit.dart';

enum ChangeAvatarStatus { permissionDenied, loading, success, failure, cancel }

class ProfileState extends Equatable {
  LoadStatus? loadStatus;
  LoginResponse? user;

  final LoadStatus? logoutRequestStatus;

  final String? base64avatar;
  final ChangeAvatarStatus? changeAvatarStatus;
  final String? errorMessage;
  final bool? isFirstTimeIssue;

  @override
  List<Object?> get props => [
        loadStatus,
        user,
        logoutRequestStatus,
        base64avatar,
        changeAvatarStatus,
        errorMessage,
        isFirstTimeIssue
      ];

  ProfileState({
    this.loadStatus,
    this.user,
    this.logoutRequestStatus,
    this.base64avatar,
    this.changeAvatarStatus,
    this.errorMessage,
    this.isFirstTimeIssue,
  });

  ProfileState copyWith({
    LoadStatus? loadStatus,
    LoginResponse? user,
    LoadStatus? logoutRequestStatus,
    String? base64avatar,
    ChangeAvatarStatus? changeAvatarStatus,
    String? errorMessage,
    bool? isFirstTimeIssue,
  }) {
    return ProfileState(
      loadStatus: loadStatus ?? this.loadStatus,
      user: user ?? this.user,
      logoutRequestStatus: logoutRequestStatus ?? this.logoutRequestStatus,
      base64avatar: base64avatar ?? this.base64avatar,
      changeAvatarStatus: changeAvatarStatus ?? this.changeAvatarStatus,
      errorMessage: errorMessage ?? this.errorMessage,
      isFirstTimeIssue: isFirstTimeIssue ?? this.isFirstTimeIssue,
    );
  }
}
