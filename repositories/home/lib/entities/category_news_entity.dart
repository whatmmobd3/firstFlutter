import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:home_repository/entities/rss_entity.dart';

part 'category_news_entity.freezed.dart';
part 'category_news_entity.g.dart';

@freezed
class CategoryNewsEntity with _$CategoryNewsEntity {
  factory CategoryNewsEntity(
      {@JsonKey(name: 'guid') required String id,
      required String categoryName,
      required RSSEnity news}) = _CategoryNewsEntity;
  factory CategoryNewsEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryNewsEntityFromJson(json);
}
