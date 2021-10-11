// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsEntity _$_$_NewsEntityFromJson(Map<String, dynamic> json) {
  return _$_NewsEntity(
    highlightsNews: (json['highlightsNews'] as List<dynamic>)
        .map((e) => CategoryNewsEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
    news: (json['news'] as List<dynamic>)
        .map((e) => CategoryNewsEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NewsEntityToJson(_$_NewsEntity instance) =>
    <String, dynamic>{
      'highlightsNews': instance.highlightsNews,
      'news': instance.news,
    };
