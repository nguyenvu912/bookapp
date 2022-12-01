part of 'register_cubit.dart';

class RegisterState extends Equatable {
  final String? fullName;
  final String? accountName;
  final String? password;
  final String? phoneNumber;
  final LoadStatus? loadStatus;

  RegisterState(
      {this.accountName,
      this.fullName,
      this.password,
      this.phoneNumber,
      this.loadStatus});

  RegisterState copyWith({
    LoadStatus? loadStatus,
    String? accountName,
    String? fullName,
    String? password,
    String? phoneNumber,
  }) {
    return RegisterState(
      loadStatus: loadStatus ?? this.loadStatus,
      fullName: fullName ?? this.fullName,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      accountName: accountName ?? this.accountName,
    );
  }

  @override
  List<Object?> get props => [
        this.accountName,
        this.fullName,
        this.loadStatus,
        this.password,
        this.phoneNumber
      ];
}
