import 'dart:convert';
import 'package:mobile_balink/config/session.dart';
import 'package:mobile_balink/model/user_model.dart';

import '../config/api.dart';
import '../config/appRequest.dart';

class SourceUser {
  static Future<bool> login(String username, String password) async {
    Map? responseBody = await AppRequest.post(
        Api.login, jsonEncode({'email': username, 'password': password}));
    if (responseBody == null) return false;
    if (responseBody['status'] == null) return false;
    if (responseBody['status']) {
      var mapUser = responseBody['data']['user'];
      Session.saveUser(UserClass.fromJson(mapUser));
      var token = responseBody['data']['token'];
      Session.saveToken(token);
      print(mapUser);
      print(token);
    }
    print(responseBody['status']);
    print(responseBody['message']);
    return responseBody['status'];
  }
}
