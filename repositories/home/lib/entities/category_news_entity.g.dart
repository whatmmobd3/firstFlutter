// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_news_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryNewsEntity _$_$_CategoryNewsEntityFromJson(
    Map<String, dynamic> json) {
  return _$_CategoryNewsEntity(
    id: json['guid'] as String,
    categoryName: json['categoryName'] as String,
    news: RSSEnity.fromJson(json['news'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CategoryNewsEntityToJson(
        _$_CategoryNewsEntity instance) =>
    <String, dynamic>{
      'guid': instance.id,
      'categoryName': instance.categoryName,
      'news': instance.news,
    };
