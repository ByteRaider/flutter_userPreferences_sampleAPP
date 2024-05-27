import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static String _name = '';
  static bool _isDarkMode = false;
  static late SharedPreferences _preferences;
  static int _gender = 1;

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String get name {
    _name = _preferences.getString('name') ?? '';
    return _name;
  }

  static set name(String value) {
    _name = value;
    _preferences.setString('name', value);
  }

  static bool get isDarkMode {
    _isDarkMode = _preferences.getBool('isDarkMode') ?? false;
    return _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _preferences.setBool('isDarkMode', value);
  }

  static int get gender {
    _gender = _preferences.getInt('gender') ?? 1;
    return _gender;
  }

  static set gender(int value) {
    _gender = value;
    _preferences.setInt('gender', value);
  }
}
