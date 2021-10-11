import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'app.dart';
import 'di/build_di_application.dart';
import 'package:home_bloc/home_bloc.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> main() async {
  // init all configs for application
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: implement this
  //await initFirebase();
  //oneSignal();
  await initDIApplication();

  Bloc.observer = SimpleBlocDelegate();

  runApp(MultiBlocProvider(providers: [
    BlocProvider<HomeBloc>(create: (context) => getIt.get<HomeBloc>()),
  ], child: const App()));
}

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debug(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debug(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debug(error);
  }
}

void oneSignal() {
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId(Env.oneSignal);

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared
      .promptUserForPushNotificationPermission()
      .then((accepted) async {
    debug('Accepted permission: $accepted');
    var value = await OneSignal.shared.getDeviceState();
    debug('Device id: ${value?.userId}');
    debug('Device token: ${value?.pushToken}');
  });

  getIt.registerFactoryAsync<DeviceInfo>(() async {
    var value = await OneSignal.shared.getDeviceState();
    var storage = getIt.get<DefaultStorageTokenProcessor>();
    var session = storage.getCurrentSessionInfo();
    String? deviceId = session?.others['deviceId'];
    String? deviceToken = session?.others['deviceToken'];

    if (value != null) {
      if (value.pushToken?.isNotEmpty ?? false) {
        session?.others['deviceToken'] = value.pushToken;
        deviceToken = value.pushToken ?? '';
      }
      if (value.userId?.isNotEmpty ?? false) {
        session?.others['deviceId'] = value.userId;
        deviceId = value.userId ?? '';
      }
      if (session != null) await storage.save(sessionInfo: session);
    }
    debug('Device id: $deviceId');
    debug('Device token: $deviceToken');
    return DeviceInfo(id: deviceId ?? '', token: deviceToken ?? '');
  });
}
