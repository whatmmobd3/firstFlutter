import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'image_entity.freezed.dart';
part 'image_entity.g.dart';

@freezed
class ImageEntity with _$ImageEntity {
  factory ImageEntity({required String url, int? size}) = _ImageEntity;
  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityFromJson(json);
}
