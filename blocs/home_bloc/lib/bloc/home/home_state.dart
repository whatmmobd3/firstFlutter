part of 'home_bloc.dart';

enum HomeStatus { initial, success, failure }

class HomeState {
  final List<CategoryNewsEntity> categoryNews;
  final List<CategoryEntity> categories;
  final List<ServiceEntity> services;
  final bool isLoading;
  final HomeStatus status;
  HomeState(
      {this.services = const [],
      this.categoryNews = const [],
      this.categories = const [],
      this.isLoading = false,
      this.status = HomeStatus.initial});

  HomeState copyWith(
      {bool? isLoading,
      HomeStatus? status,
      List<ServiceEntity>? services,
      List<CategoryNewsEntity>? categoryNews,
      List<CategoryEntity>? categories}) {
    return HomeState(
        isLoading: isLoading ?? this.isLoading,
        status: status ?? this.status,
        services: services ?? this.services,
        categoryNews: categoryNews ?? this.categoryNews,
        categories: categories ?? this.categories);
  }
}
