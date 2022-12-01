// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileRequest _$UpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileRequest(
      fullName: json['fullName'] as String?,
      gender: json['gender'] as int?,
      dob: json['dob'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$UpdateProfileRequestToJson(
        UpdateProfileRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'gender': instance.gender,
      'dob': instance.dob,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
