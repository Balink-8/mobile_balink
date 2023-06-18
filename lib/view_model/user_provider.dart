import 'package:flutter/material.dart';
import 'package:mobile_balink/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserClass _user = UserClass();
  String _token = '';

  setUser(user) {
    _user = user;
    notifyListeners();
  }

  setToken(token) {
    _token = token;
    notifyListeners();
  }

  UserClass get getUser => _user;
  String get getToken => _token;
}
