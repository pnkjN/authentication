import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSaver {
  static String nameKey = "NAMEKEY";
  static String emailKey = "EMAILKEY";
  static String imgKey = "IAMKEY";
  static Future<bool> saveName(String userName) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey, userName);
  }

  static Future<bool> saveMail(String useremail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(emailKey, useremail);
  }

  static Future<bool> saveImg(String imgUrl) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(imgKey, imgUrl);
  }

  static Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(nameKey);
  }

  static Future<String?> getEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(emailKey);
  }

  static Future<String?> getImg() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(imgKey);
  }
}
