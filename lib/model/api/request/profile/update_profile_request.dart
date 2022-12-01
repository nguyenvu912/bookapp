import 'package:json_annotation/json_annotation.dart';

part 'update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
  final String? fullName;
  final int? gender;
  final String? dob;
  final String? email;
  final String? firstName;
  final String? lastName;

  const UpdateProfileRequest(
      {this.fullName,
      this.gender,
      this.dob,
      this.email,
      this.firstName,
      this.lastName});

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
