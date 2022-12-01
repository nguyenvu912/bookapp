// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBookRequest _$CreateBookRequestFromJson(Map<String, dynamic> json) =>
    CreateBookRequest(
      id: json['id'] as int?,
      bookName: json['bookName'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      creatorId: json['creatorId'] as String?,
      images: (json['images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CreateBookRequestToJson(CreateBookRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookName': instance.bookName,
      'description': instance.description,
      'author': instance.author,
      'images': instance.images,
      'creatorId': instance.creatorId,
    };
