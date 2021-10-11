// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RSSEnity _$_$_RSSEnityFromJson(Map<String, dynamic> json) {
  return _$_RSSEnity(
    id: json['guid'] as String,
    title: json['title'] as String,
    description: json['subTitle'] as String,
    thumbnail: json['image'] == null
        ? null
        : ImageEntity.fromJson(json['image'] as Map<String, dynamic>),
    createdAt: json['createdAt'] as String?,
    content: json['content'] as String? ?? '',
    categoryId: json['categoryNews'] as String,
  );
}

Map<String, dynamic> _$_$_RSSEnityToJson(_$_RSSEnity instance) =>
    <String, dynamic>{
      'guid': instance.id,
      'title': instance.title,
      'subTitle': instance.description,
      'image': instance.thumbnail,
      'createdAt': instance.createdAt,
      'content': instance.content,
      'categoryNews': instance.categoryId,
    };
