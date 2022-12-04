part of 'information_cubit.dart';

class InformationState extends Equatable {
  final LoadStatus? updateProfileStatus;
  final UserEntity? updateProfileResponse;
  final String? fullName;
  final int? gender;
  final String? email;
  final String? birthDay;
  final String? firstName;
  final String? lastName;
  final String? errorMess;

  InformationState({
    this.updateProfileStatus,
    this.fullName,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.birthDay,
    this.updateProfileResponse,
    this.errorMess,
  });

  @override
  List<Object?> get props => [
        updateProfileStatus,
        fullName,
        firstName,
        lastName,
        gender,
        email,
        birthDay,
        updateProfileResponse,
        errorMess,
      ];

  InformationState copyWith({
    LoadStatus? updateProfileStatus,
    UserEntity? updateProfileResponse,
    String? fullName,
    String? firstName,
    String? lastname,
    int? gender,
    String? email,
    String? birthDay,
    String? errorMess,
  }) {
    return InformationState(
      updateProfileStatus: updateProfileStatus ?? this.updateProfileStatus,
      updateProfileResponse:
          updateProfileResponse ?? this.updateProfileResponse,
      fullName: fullName ?? this.fullName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      email: email ?? this.email,
      birthDay: birthDay ?? this.birthDay,
      errorMess: errorMess ?? this.errorMess,
    );
  }
}
