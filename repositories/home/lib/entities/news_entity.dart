import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:home_repository/entities/rss_entity.dart';
import 'package:home_repository/home.dart';

part 'news_entity.freezed.dart';
part 'news_entity.g.dart';

@freezed
class NewsEntity with _$NewsEntity {
  factory NewsEntity(
      {required List<CategoryNewsEntity> highlightsNews,
      required List<CategoryNewsEntity> news}) = _NewsEntity;
  factory NewsEntity.fromJson(Map<String, dynamic> json) =>
      _$NewsEntityFromJson(json);
}
