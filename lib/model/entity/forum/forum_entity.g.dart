// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumEntity _$ForumEntityFromJson(Map<String, dynamic> json) => ForumEntity(
      id: json['id'] as int?,
      bookName: json['bookName'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      creatorId: json['creatorId'] as String?,
      images: (json['images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$ForumEntityToJson(ForumEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookName': instance.bookName,
      'description': instance.description,
      'author': instance.author,
      'images': instance.images,
      'creatorId': instance.creatorId,
    };
