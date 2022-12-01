import 'package:json_annotation/json_annotation.dart';
part 'book_entity.g.dart';

@JsonSerializable()
class BookEntity {
  int? id;
  String? bookName;
  String? description;
  String? author;
  Map<dynamic, String>? images;
  String? creatorId;

  BookEntity(
      {this.id,
      this.bookName,
      this.description,
      this.author,
      this.creatorId,
      this.images});

  factory BookEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BookEntityFromJson(json);
  Map<String, dynamic> toJson() => _$BookEntityToJson(this);

  BookEntity copyWith({
    int? id,
    String? bookName,
    String? description,
    String? author,
    Map<dynamic, String>? images,
    String? creatorId,
  }) {
    return BookEntity(
      id: id ?? this.id,
      images: images ?? this.images,
      bookName: bookName ?? this.bookName,
      description: description ?? this.description,
      author: author ?? this.author,
      creatorId: creatorId ?? this.author,
    );
  }
}
