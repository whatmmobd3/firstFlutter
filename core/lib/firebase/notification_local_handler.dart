import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import '../router/navigation_service.dart';

class NotificationLocalHandler {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final String channelId = 'g1l_channel';

  final String channelName = 'g1l_name';

  final String channelDescription = 'g1l_description';

  void showNoti(String title, String content, String payload) async {
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInit = const IOSInitializationSettings();
    var initSetting = InitializationSettings(
        android: initializationSettingsAndroid, iOS: iosInit);
    await flutterLocalNotificationsPlugin.initialize(initSetting,
        onSelectNotification: onSelectNotification);

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      content,
      NotificationDetails(
          android: AndroidNotificationDetails(
              channelId, channelName, channelDescription,
              importance: Importance.high,
              color: Colors.blue,
              playSound: true,
              icon: '@mipmap/ic_launcher')),
      payload: payload,
    );
  }

  // callback when user tap into notification
  Future onSelectNotification(String? payload) async {
    GetIt.instance<NavigationService>().goTo(deeplink: payload ?? '');
  }
}
