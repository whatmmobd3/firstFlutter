import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:dio/dio.dart';
import 'package:home_repository/entities/category_entity.dart';
import 'package:home_repository/entities/category_news_entity.dart';
import 'package:home_repository/entities/news_entity.dart';
import 'package:home_repository/entities/rss_entity.dart';
import 'package:home_repository/entities/service_entity.dart';

import 'home_repository.dart';

class _P {
  static const categoryNews =
      '/v1/public/flow-runner/action/getFirstNewsOfCategory';
  static const categories = '/v1/public/flow-runner/action/getCategoryNews';
  static const newsDetail =
      '/v1/public/flow-runner/action/getNewsById?newsId=:id';
  static const news =
      '/v1/public/flow-runner/action/getNewsByCategory?categoryId=:id&limit=:pageSize&offset=:page';
  static const healthyNews =
      '/v1/public/flow-runner/action/getNewsHealth?limit=:pageSize&offset=:page';
}

class HomeClient extends APIProvider implements HomeRepository {
  HomeClient(
      {required StorageTokenProcessor storageTokenProcessor,
      required NetworkConfigurable networkConfigurable,
      Interceptor? interceptor})
      : super(
            storageTokenProcessor: storageTokenProcessor,
            networkConfiguration: networkConfigurable,
            interceptor: interceptor);

  @override
  Future<NewsEntity> getNews(
      {required String categoryId, int page = 0, int pageSize = 10}) async {
    log(categoryId);
    var input = DefaultInputService(
        path: _P.news
            .replaceAll(':id', categoryId)
            .replaceFirst(':pageSize', '$pageSize')
            .replaceFirst(':page', '$page'));
    final response = await super.request(input: input);
    log('debug_phuc:  ' + response.toString());
    var error = checkError2(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    }
    return NewsEntity.fromJson(response.data['data']);
  }

  String? checkError(Map<String, dynamic> response) {
    var message = response['message'];
    var error = response['error'];
    return (message != null && error != null) ? message : null;
  }

  String? checkError2(Response<dynamic> response) {
    String message = response.data['resultMessage'];
    dynamic error = response.data['resultCode'];
    if (error is String) {
      return message;
    }
    return (error != 200) ? message : null;
  }

  @override
  Future<List<ServiceEntity>> getServices() async {
    var data = await rootBundle
        .loadString('packages/home_repository/assets/dummies.json');
    var decoded = jsonDecode(data);
    return (decoded['items'] as List)
        .map((e) => ServiceEntity.fromJson(e))
        .toList();
  }

  @override
  Future<List<CategoryNewsEntity>> getCategoryNews() async {
    var input = DefaultInputService(
      path: _P.categoryNews,
    );
    final response = await super.request(input: input);
    var error = checkError2(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    }

    return (response.data['data'] as List)
        .map((e) => CategoryNewsEntity.fromJson(e))
        .toList();
  }

  @override
  Future<List<CategoryEntity>> getCategories() async {
    var input = DefaultInputService(
      path: _P.categories,
    );
    final response = await super.request(input: input);
    var error = checkError2(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    }
    return (response.data['data'] as List)
        .map((e) => CategoryEntity.fromJson(e))
        .toList();
  }

  @override
  Future<RSSEnity> getNewsDetail({required String id}) async {
    var input = DefaultInputService(
      path: _P.newsDetail.replaceAll(':id', id),
    );
    final response = await super.request(input: input);
    var error = checkError2(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    }
    return RSSEnity.fromJson(response.data['data']);
  }

  @override
  Future<List<CategoryNewsEntity>> getHealthyNews(
      {int page = 0, int pageSize = 10}) async {
    var input = DefaultInputService(
        path: _P.healthyNews
            .replaceFirst(':pageSize', '$pageSize')
            .replaceFirst(':page', '$page'));
    final response = await super.request(input: input);
    var error = checkError2(response);
    if (error != null) {
      return Future.error(AppError(message: error));
    }
    return (response.data['data'] as List)
        .map((e) => CategoryNewsEntity.fromJson(e))
        .toList();
  }
}
