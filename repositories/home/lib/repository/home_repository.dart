import 'dart:async';
import 'dart:core';

import 'package:home_repository/entities/category_entity.dart';
import 'package:home_repository/entities/category_news_entity.dart';
import 'package:home_repository/entities/news_entity.dart';
import 'package:home_repository/entities/rss_entity.dart';
import 'package:home_repository/entities/service_entity.dart';

abstract class HomeRepository {
  Future<NewsEntity> getNews(
      {required String categoryId, int page = 0, int pageSize = 10});
  Future<List<CategoryNewsEntity>> getCategoryNews();
  Future<List<CategoryEntity>> getCategories();
  Future<RSSEnity> getNewsDetail({required String id});
  Future<List<ServiceEntity>> getServices();
}
