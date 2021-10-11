import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:core/core.dart';

class FirebaseRemoteConfiguration {
  RemoteConfig remoteConfig = RemoteConfig.instance;

  String get authenAPIProd {
    return remoteConfig.getString('Authen_API_Prod');
  }

  String get authenAPIUat {
    return remoteConfig.getString('Authen_API_UAT');
  }

  String get authenAPIDev {
    return remoteConfig.getString('Authen_API_Dev');
  }

  String get portalAPIProd {
    return remoteConfig.getString('Portral_API_Prod');
  }

  String get portalAPIUat {
    return remoteConfig.getString('Portral_API_UAT');
  }

  String get portalAPIDev {
    return remoteConfig.getString('Portral_API_Dev');
  }

  // ignore: non_constant_identifier_names
  String get CSPhoneNumber {
    return remoteConfig.getString('CS_Number');
  }

  num get minDeposit {
    var min = remoteConfig.getString('MIN_DPST');
    return num.tryParse(min) ?? 50000;
  }

  num get maxDeposit {
    var min = remoteConfig.getString('MAX_DPST');
    return num.tryParse(min) ?? 50000000;
  }

  bool get showTopup {
    return remoteConfig.getBool('DPST_PM');
  }

  String get oneSignalId {
    var id = remoteConfig.getString('ONESIGNAL_APPID');
    return id.isEmpty ? '7b272818-0e6a-442b-a3c0-59fbf1c1a2ea' : id;
  }

  String get termURL {
    return remoteConfig.getString('TERM_URL');
  }

  String get supportEmail {
    return remoteConfig.getString('SUPPORT_EMAIL');
  }

  void fetchConfigs() {
    debug('Fetch remote configs...');
    debug(authenAPIProd);
    debug(authenAPIUat);
    debug(authenAPIDev);
    debug(portalAPIDev);
    debug('showTopup $showTopup');
  }
}
