import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences prefs;

  static Future<void> configurePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static String get token {
    return prefs.getString('token') ?? '';
  }

  static set token(String value) {
    prefs.setString('token', value);
  }

  static String get tokenFcm {
    return prefs.getString('tokenFcm') ?? '';
  }

  static set tokenFcm(String value) {
    prefs.setString('tokenFcm', value);
  }

  static String get tokenApns {
    return prefs.getString('tokenApns') ?? '';
  }

  static set tokenApns(String value) {
    prefs.setString('tokenApns', value);
  }

  static String get lenguage {
    return prefs.getString('lenguage') ?? 'es';
  }

  static set lenguage(String value) {
    prefs.setString('lenguage', value.toLowerCase());
  }

  static bool get onboarding {
    return prefs.getBool('onboarding') ?? false;
  }

  static set onboarding(bool value) {
    prefs.setBool('onboarding', value);
  }

  static bool get demoHome {
    return prefs.getBool('demo-home') ?? false;
  }

  static set demoHome(bool value) {
    prefs.setBool('demo-home', value);
  }
}
