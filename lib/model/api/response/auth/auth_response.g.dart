// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      authentication: json['authentication'] == null
          ? null
          : TokenEntity.fromJson(
              json['authentication'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : UserEntity.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'authentication': instance.authentication,
      'profile': instance.profile,
    };
