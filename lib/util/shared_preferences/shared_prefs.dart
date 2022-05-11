import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  factory SharedPrefs() {
    if (_prefs == null) {
      throw Exception('Call SharedPrefs.init() before accessing it');
    }
    return _singleton;
  }

  SharedPrefs._internal();

  static void init(SharedPreferences sharedPreferences) => _prefs ??= sharedPreferences;

  static final SharedPrefs _singleton = SharedPrefs._internal();

  static SharedPreferences? _prefs;

  static const String _nameKey = '_nameKey', _isNewUserKey = '_isNewUserKey', _isPastOnboardingKey = '_isPastOnboardingKey';

  Future<bool> setName(String value) => _prefs!.setString(_nameKey, value);
  String? getName() => _prefs!.getString(_nameKey);

  Future<bool> setIsNewUser(bool value) => _prefs!.setBool(_isNewUserKey, value);
  bool? getIsNewUser() => _prefs!.getBool(_isNewUserKey);

  Future<bool> setIsPastOnboarding(bool value) => _prefs!.setBool(_isPastOnboardingKey, value);
  bool? isPastOnboarding() => _prefs!.getBool(_isPastOnboardingKey);
}
