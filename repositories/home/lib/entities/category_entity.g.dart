// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryEntity _$_$_CategoryEntityFromJson(Map<String, dynamic> json) {
  return _$_CategoryEntity(
    id: json['guid'] as String,
    name: json['name'] as String,
    index: json['index'] as int,
  );
}

Map<String, dynamic> _$_$_CategoryEntityToJson(_$_CategoryEntity instance) =>
    <String, dynamic>{
      'guid': instance.id,
      'name': instance.name,
      'index': instance.index,
    };
