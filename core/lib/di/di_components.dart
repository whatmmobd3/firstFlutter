import 'package:core/firebase/firebase_remote_config.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import '../helper/file_manager.dart';
import '../tracking/tracking_manager.dart';
import '../firebase/firebase_analytics_handler.dart';
import '../router/navigation_service.dart';

GetIt getIt = GetIt.instance;

void buildCoreDI() {
  // push NavigationService
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  // push FirebaseAnalyticsHandler
  getIt.registerLazySingleton<FirebaseAnalyticsHandler>(
      () => FirebaseAnalyticsHandler());

  // push TrackingManager
  getIt.registerLazySingleton<TrackingManager>(() => TrackingManager());

  // push FileManager
  getIt.registerLazySingleton<FileManager>(() => FileManager());

  // firebase remote config
  getIt.registerLazySingleton<FirebaseRemoteConfiguration>(
      () => FirebaseRemoteConfiguration());
}
