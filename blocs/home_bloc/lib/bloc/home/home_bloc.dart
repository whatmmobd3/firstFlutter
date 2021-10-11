import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_repository/home.dart';
import 'package:home_repository/entities/service_entity.dart';
import 'package:home_repository/repository/home_repository.dart';
import 'package:meta/meta.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
part 'home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repo;
  HomeBloc({required this.repo}) : super(HomeState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetServicesEvent) {
      yield* _getNews(event);
    }
  }

  Stream<HomeState> _getNews(GetServicesEvent event) async* {
    try {
      if (state.services.isEmpty) {
        var services = await repo.getServices();
        yield state.copyWith(services: services);
      }
      var result =
          await Future.wait([repo.getCategoryNews(), repo.getCategories()]);
      var news = (result[0] as List<CategoryNewsEntity>)
          .map((e) => e.copyWith(
              news: e.news.copyWith(categoryId: e.categoryName.toUpperCase())))
          .toList();
      var categories = result[1] as List<CategoryEntity>;
      yield state.copyWith(
          categoryNews: news,
          categories: categories
              .map((e) => e.copyWith(name: e.name.toUpperCase()))
              .toList(),
          status: HomeStatus.success);
      event.callback?.call(state);
    } on AppError catch (e) {
      debugPrint(e.message ?? '');
      yield state.copyWith(isLoading: false, status: HomeStatus.failure);
      event.callback?.call(state);
    }
  }
}
