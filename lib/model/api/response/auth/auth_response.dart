import 'package:flutter_base/model/entity/token/token_entity.dart';
import 'package:flutter_base/model/entity/user/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  TokenEntity? authentication;
  UserEntity? profile;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);

  AuthResponse({
    this.authentication,
    this.profile,
  });
}
