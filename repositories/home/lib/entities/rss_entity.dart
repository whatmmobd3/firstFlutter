import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:home_repository/entities/image_entity.dart';

part 'rss_entity.freezed.dart';
part 'rss_entity.g.dart';

@freezed
class RSSEnity with _$RSSEnity {
  factory RSSEnity(
      {@JsonKey(name: 'guid') required String id,
      @JsonKey(name: 'title') @Default('') String title,
      @JsonKey(name: 'subTitle') @Default('') String description,
      @JsonKey(name: 'image') ImageEntity? thumbnail,
      String? createdAt,
      @Default('') String content,
      @JsonKey(name: 'categoryNews') required String categoryId}) = _RSSEnity;
  factory RSSEnity.fromJson(Map<String, dynamic> json) =>
      _$RSSEnityFromJson(json);
}
