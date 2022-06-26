import 'package:instagram/src/constants/my_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void setTokenAccount(String token) {
    _prefs.setString(MyKey.SAVE_LOGIN_RESPONSE, token);
  }

  static String getTokenAccount() =>
      _prefs.getString(MyKey.SAVE_LOGIN_RESPONSE) ?? "";
}
