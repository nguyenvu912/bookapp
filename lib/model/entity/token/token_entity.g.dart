// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) =>
    LoginResponseEntity(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : TokenEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseEntityToJson(
        LoginResponseEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) => TokenEntity(
      token: json['token'] as String?,
      user_id: json['user_id'] as String?,
      isFirstTimeIssue: json['isFirstTimeIssue'] as bool?,
    );

Map<String, dynamic> _$TokenEntityToJson(TokenEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_id': instance.user_id,
      'isFirstTimeIssue': instance.isFirstTimeIssue,
    };
