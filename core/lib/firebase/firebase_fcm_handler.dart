import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import '../tracking/tracking_manager.dart';

import 'notification_local_handler.dart';

//init channel use for Android
AndroidNotificationChannel _channel = AndroidNotificationChannel(
    NotificationLocalHandler().channelId, // id
    NotificationLocalHandler().channelName, // title
    NotificationLocalHandler().channelDescription, // description
    importance: Importance.high,
    playSound: true);

FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<String> initFirebase() async {
  // use for handle background notification.
  var deeplink = '';

  // init firebase core.
  await Firebase.initializeApp();

  await RemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 60),
    minimumFetchInterval: const Duration(milliseconds: 2),
  ));
  await RemoteConfig.instance.fetchAndActivate();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await _flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(_channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  final notificationAppLaunchDetails =
      await _flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
    deeplink = notificationAppLaunchDetails!.payload ?? '';
  }

  // callback to get Token Firebase
  await FirebaseMessaging.instance.getToken().then((token) {
    // GetIt.instance<TrackingManager>()
    //     .debug(content: token ?? '', key: 'Token Firebase');
  });

  // callback when app open and have incoming notification
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    NotificationLocalHandler().showNoti(
        message.data['score'], message.data['time'], message.data['deeplink']);
  });
  return deeplink;
}

// callback handle notification when app in background.
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  NotificationLocalHandler().showNoti(
      message.data['score'], message.data['time'], message.data['deeplink']);
}
