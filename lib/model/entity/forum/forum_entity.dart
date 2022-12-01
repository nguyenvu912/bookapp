import 'package:json_annotation/json_annotation.dart';
part 'forum_entity.g.dart';

@JsonSerializable()
class ForumEntity {
  int? id;
  String? bookName;
  String? description;
  String? author;
  Map<dynamic, String>? images;
  String? creatorId;

  ForumEntity(
      {this.id,
      this.bookName,
      this.description,
      this.author,
      this.creatorId,
      this.images});

  factory ForumEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ForumEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ForumEntityToJson(this);

  ForumEntity copyWith({
    int? id,
    String? bookName,
    String? description,
    String? author,
    Map<dynamic, String>? images,
    String? creatorId,
  }) {
    return ForumEntity(
      id: id ?? this.id,
      images: images ?? this.images,
      bookName: bookName ?? this.bookName,
      description: description ?? this.description,
      author: author ?? this.author,
      creatorId: creatorId ?? this.author,
    );
  }
}
