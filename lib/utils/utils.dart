import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Future<void> saveToken(String token) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString("token", token);
  }
}
