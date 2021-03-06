import 'dart:async';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:home_bloc/home_bloc.dart' as homebloc;

Future<void> initDIApplication() async {
  buildCoreDI();
  var storageTokenProcessor = await DefaultStorageTokenProcessor.create();
  // Access token is expired
  var session = storageTokenProcessor.getCurrentSessionInfo();
  var expiresIn = session?.others['expiresIn']?.toString();
  if (expiresIn != null) {
    var expiresInDate =
        DateTime.fromMillisecondsSinceEpoch(int.parse(expiresIn));
    var currentDate = DateTime.now();
    if (currentDate.isAfter(expiresInDate)) {
      await storageTokenProcessor.removeAllSessionInfos();
    }
  }
  getIt.registerLazySingleton<DefaultStorageTokenProcessor>(
      () => storageTokenProcessor);
  var portalDomain = DefaultNetworkConfigurable(
    interceptor: InterceptorsWrapper(
        onRequest: _onRequest, onError: _onError, onResponse: _onResponse),
    baseURL: Env.appDomain,
    headers: {
      'accept': 'application/json, text/plain, */*',
      'authority': 'galaxycare.dev.nuclent.com',
    },
    encoding: 'application/json; charset=UTF-8',
  );
  if (session?.accessToken.isNotEmpty ?? false) {
    portalDomain.headers = {
      ...portalDomain.headers,
      'Authorization': 'Bearer ${session!.accessToken}'
    };
  }
  homebloc.buildDI(
      storageTokenProcessor: storageTokenProcessor,
      networkConfigurable: portalDomain);
  getIt.registerLazySingleton<PersistentTabController>(
      () => PersistentTabController(initialIndex: 0));

  //getIt.get<FirebaseRemoteConfiguration>().fetchConfigs();
}

void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  handler.next(options);
}

void _onError(DioError err, ErrorInterceptorHandler handler) {
  var message = err.response?.data?['message'];
  // token expries
  if (message is String && message.contains('token')) {
    // TODO: logout
    handler.reject(err);
  } else {
    handler.next(err);
  }
}

void _onResponse(
    Response<dynamic> response, ResponseInterceptorHandler handler) {
  handler.next(response);
}
