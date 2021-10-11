import 'package:core/core.dart';
import 'di/di_components.dart';

class Env {
  static String get appDomain {
    // var remote = getIt.get<FirebaseRemoteConfiguration>();
    // var domain = kDebugMode ? remote.portalAPIUat : remote.portalAPIProd;
    return 'https://galaxycare-sandbox.dev.nuclent.com';
  }

  static String get oneSignal {
    var remote = getIt.get<FirebaseRemoteConfiguration>();
    return remote.oneSignalId;
  }
}
