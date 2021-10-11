import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'service_entity.freezed.dart';
part 'service_entity.g.dart';

@freezed
class ServiceEntity with _$ServiceEntity {
  factory ServiceEntity(
      {required String name,
      required String icon,
      required String deeplink}) = _ServiceEntity;
  factory ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$ServiceEntityFromJson(json);
}
