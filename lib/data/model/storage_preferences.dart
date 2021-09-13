import 'package:masjidmobile/data/resources/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoragePreferences {
  static Future<SharedPreferences> get _prefs =>
      SharedPreferences.getInstance();

  static Future<bool> readOnBoardingState() async {
    return (await _prefs).getBool(AppStrings.navOnBoarding) ?? false;
  }

  static Future<void> saveOnBoardingState() async {
    (await _prefs).setBool(AppStrings.navOnBoarding, true);
  }
}
