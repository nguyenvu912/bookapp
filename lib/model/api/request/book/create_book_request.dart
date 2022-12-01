import 'package:json_annotation/json_annotation.dart';

part 'create_book_request.g.dart';

@JsonSerializable()
class CreateBookRequest {
  int? id;
  String? bookName;
  String? description;
  String? author;
  Map<dynamic, String>? images;
  String? creatorId;

  CreateBookRequest(
      {this.id,
      this.bookName,
      this.description,
      this.author,
      this.creatorId,
      this.images});

  factory CreateBookRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateBookRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateBookRequestToJson(this);

  CreateBookRequest copyWith({
    int? id,
    String? bookName,
    String? description,
    String? author,
    Map<dynamic, String>? images,
    String? creatorId,
  }) {
    return CreateBookRequest(
      id: id ?? this.id,
      images: images ?? this.images,
      bookName: bookName ?? this.bookName,
      description: description ?? this.description,
      author: author ?? this.author,
      creatorId: creatorId ?? this.author,
    );
  }
}
