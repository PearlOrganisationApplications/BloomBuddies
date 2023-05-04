

import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_keys.dart';


enum AccountType { BABYSITTER, PARENT }
class AppPreferences {
  static late SharedPreferences _preferences;

  static Future init() async => _preferences = await SharedPreferences.getInstance();


  ///On Boarding
  ///OnBoarding Getter
  static bool? getOnBoardShow() {
    bool? s = _preferences.getBool(AppKeys.onBoardDone) ?? true;
    return s!;
  }

  ///OnBoarding Setter
  static void setOnBoardShow(bool show){
    _preferences.setBool(AppKeys.onBoardDone, show);
  }



  ///User Display Name getter
  static bool? getUser() {
    bool? s = _preferences.getBool(AppKeys.isUserLogin) ?? false;
    return s!;
  }

  ///User Display Name getter
  static String? getDisplayName() {
    String s = _preferences.getString(AppKeys.userDisplayName) ?? '';
    return s!;
  }

  ///User Display Name Setter
  static void setDisplayName( String displayName){
    _preferences.setString(AppKeys.userDisplayName, displayName);
  }

  ///User Email getter
  static String? getEmailAddress() {
    String s = _preferences.getString(AppKeys.userEmail) ?? '';
    return s!;
  }

  ///User Email Setter
  static void setEmailAddress( String email){
    _preferences.setString(AppKeys.userEmail, email);
  }

  static void saveCredentials({
    required AccountType accountType,
    required String email,
    required String token,
    required String name,
    String? photoUrl,
    required bool englishSpeaking}) {
    _preferences.setString(AppKeys.userAccountType, accountType.toString());
    _preferences.setString(AppKeys.userPhotoUrl, photoUrl ?? '');
    _preferences.setString(AppKeys.userDisplayName, name);
    _preferences.setString(AppKeys.userEmail, email);
    _preferences.setBool(AppKeys.englishSpeaking, englishSpeaking);
    _preferences.setString(AppKeys.userToken, token);

    //_preferences.setString(AppKeys.userDisplayName, displayName);
    _preferences.setBool(AppKeys.isUserLogin, true);
  }

  static void clearCredentials() {
    _preferences.clear();
  }

  static void setToken(String token) {
    _preferences.setString(AppKeys.userToken, '');
  }
  static String? getToken() {
    String s = _preferences.getString(AppKeys.userToken) ?? '';
    return s!;
  }
  static bool getIsUserLogin() {
    bool s = _preferences.getBool(AppKeys.isUserLogin) ?? false;
    return s;
  }

  static String? getPhotoUrl() {
    String? s = _preferences.getString(AppKeys.userPhotoUrl);
    return s;
  }

  static String getAccountType() {
    String s = _preferences.getString(AppKeys.userAccountType) ?? 'AccountType.PARENT';
    return s;
  }
}
