import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import '../firebase/firebase_analytics_handler.dart';
import 'tracking_event.dart';

class TrackingManager {
  void printLogToConsole({String key = '', required String content}) {
    if (kDebugMode) {
      //only print log when app is in debug-mode
      if (key == '') {
        // ignore: avoid_print
        print(content);
      } else {
        // ignore: avoid_print
        print('$key: $content');
      }
    }
  }

  void trackHomePage() {
    GetIt.instance<FirebaseAnalyticsHandler>()
        .trackEvent(eventName: TrackingEvent.homePageEvent);
  }
}
