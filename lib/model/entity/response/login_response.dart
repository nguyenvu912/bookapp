import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class UserEntity {
  final List<String>? genre;
  final List<String>? genres;
  final String? name;
  final String? email;
  final String? phonenumber;
  final String? avatar;

  UserEntity(
      {this.genre,
      this.genres,
      this.name,
      this.phonenumber,
      this.avatar,
      this.email});

  UserEntity copyWith({
    String? name,
    String? phonenumber,
    String? email,
    List<String>? genre,
    List<String>? genres,
    String? avatar,
  }) {
    return UserEntity(
        name: name ?? this.name,
        phonenumber: phonenumber ?? this.phonenumber,
        email: email ?? this.email,
        genre: genre ?? this.genre,
        genres: genres ?? this.genres,
        avatar: avatar ?? this.avatar);
  }

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}

@JsonSerializable()
class LoginResponse {
  final String? token;
  final UserEntity? user;

  LoginResponse({this.token, this.user});

  LoginResponse copyWith({
    String? token,
    UserEntity? user,
  }) {
    return LoginResponse(token: token ?? this.token, user: user ?? this.user);
  }

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
