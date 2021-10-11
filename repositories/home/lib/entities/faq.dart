import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'faq.freezed.dart';
part 'faq.g.dart';

@freezed
class FaqObject with _$FaqObject {
  factory FaqObject(
      {
      String? objName,
      String? guid,
      String? createdAt,
      String? updatedAt,
      String? name,
      String? question,
      String? answer,
      String? currencyCode,
      String? createdBy,
      String? managedBy}) = _FaqObject;
  factory FaqObject.fromJson(Map<String, dynamic> json) =>
      _$FaqObjectFromJson(json);
}
@freezed
class FaqDetail with _$FaqDetail {
  factory FaqDetail(
      {
      String? objName,
      String? guid,
      String? createdAt,
      String? updatedAt,
      String? name,
      String? question,
      String? answer,
      String? currencyCode,
      String? createdBy,
      String? managedBy}) = _FaqDetail;
  factory FaqDetail.fromJson(Map<String, dynamic> json) =>
      _$FaqDetailFromJson(json);
}
