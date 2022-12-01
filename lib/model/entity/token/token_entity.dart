import 'package:json_annotation/json_annotation.dart';

part 'token_entity.g.dart';

@JsonSerializable()
class LoginResponseEntity {
  @JsonKey()
  String? status;
  @JsonKey()
  TokenEntity? data;

  LoginResponseEntity({
    this.status,
    this.data,
  });

  LoginResponseEntity copyWith({
    String? status,
    TokenEntity? data,
  }) {
    return LoginResponseEntity(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseEntityToJson(this);
}

@JsonSerializable()
class TokenEntity {
  @JsonKey()
  String? token;
  @JsonKey()
  String? user_id;
  bool? isFirstTimeIssue;

  TokenEntity({this.token, this.user_id, this.isFirstTimeIssue});

  TokenEntity copyWith({
    String? token,
    String? user_id,
    bool? isFirstTimeIssue,
  }) {
    return TokenEntity(
      token: token ?? this.token,
      user_id: user_id ?? this.user_id,
      isFirstTimeIssue: isFirstTimeIssue ?? this.isFirstTimeIssue,
    );
  }

  factory TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenEntityFromJson(json);
  Map<String, dynamic> toJson() => _$TokenEntityToJson(this);
}
