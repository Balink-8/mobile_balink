import 'package:flutter/material.dart';

import '../source/source_user.dart';


class LoginProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _successLogin = false;
  bool get successLogin => _successLogin;

  Future<void> login({required String email, required String password}) async {
    _isLoading = true;
    notifyListeners();
    _successLogin = await SourceUser.login(email, password);
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
