import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  String? id;
  String? username;
  String? fullname;
  String? avatarUrl;

  UserEntity({this.id, this.username, this.fullname, this.avatarUrl});

  UserEntity copyWith({
    String? id,
    String? username,
    String? fullname,
    String? avatarUrl,
  }) {
    return UserEntity(
        id: id ?? this.id,
        username: username ?? this.username,
        fullname: fullname ?? this.fullname,
        avatarUrl: avatarUrl ?? this.avatarUrl);
  }

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
