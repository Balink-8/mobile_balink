import 'dart:convert';

import 'package:mobile_balink/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session {
  static Future<bool> saveUser(UserClass user) async {
    final pref = await SharedPreferences.getInstance();
    Map<String, dynamic> mapUser = user.toJson();
    String stringUser = jsonEncode(mapUser);
    bool succes = await pref.setString('user', stringUser);
    return succes;
  }

  static Future<bool> saveToken(String token) async {
    final pref = await SharedPreferences.getInstance();
    bool succes = await pref.setString('token', token);
    return succes;
  }

  static Future<UserClass> getUser() async {
    UserClass user = UserClass(); //Nilai default
    final pref = await SharedPreferences.getInstance();
    String? stringUser = pref.getString('user');
    if (stringUser != null) {
      Map<String, dynamic> mapUser = jsonDecode(stringUser);
      user = UserClass.fromJson(mapUser);
    }
    return user;
  }

  static Future<String> getToken() async {
    final pref = await SharedPreferences.getInstance();
    String? stringUser = pref.getString('token');
    if (stringUser != null) {
      return stringUser;
    }
    return '';
  }
}
