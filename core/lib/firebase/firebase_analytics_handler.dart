import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class FirebaseAnalyticsHandler {
  final FirebaseAnalytics _analytics = FirebaseAnalytics();

  FirebaseAnalyticsObserver getAnalycticObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future<void> trackEvent(
      {required String eventName, Map<String, Object?>? params}) async {
    await _analytics.logEvent(name: eventName, parameters: params);
  }

  Future<void> trackScreen({required String screenName}) async {
    await _analytics.setCurrentScreen(screenName: screenName);
  }

  Future<void> setUserId({required String id}) async {
    await _analytics.setUserId(id);
  }
}
