import 'package:shared_preferences/shared_preferences.dart';

class CasheHelper {
  static late SharedPreferences sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

 static Future<bool> putData({
    required String key,
    required bool value,
  }) async {
    return await sharedPreferences.setBool(key, value);
  }
  
  static bool getData({
    required String key,
  })  {
    return  sharedPreferences.getBool(key)?? false;// Return false if key doesn't exist
  }
}
