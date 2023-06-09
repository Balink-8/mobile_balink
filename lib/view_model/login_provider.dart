import 'package:flutter/material.dart';
import 'package:mobile_balink/model/user_model.dart';

import '../source/source_user.dart';

class LoginProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _successLogin = false;
  bool get successLogin => _successLogin;

  bool _successRegister = false;
  bool get successRegister => _successRegister;

  bool _succesEdit = false;
  bool get succesEdit => _succesEdit;

  Future<void> login({required String email, required String password}) async {
    _isLoading = true;
    notifyListeners();
    _successLogin = await SourceUser.login(email, password);
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }

  Future<void> register(
      {required String email,
      required String noTelp,
      required String password}) async {
    _isLoading = true;
    notifyListeners();
    _successRegister = await SourceUser.register(email, noTelp, password);
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }

  Future<void> edit(UserClass user) async {
    _isLoading = true;
    notifyListeners();
    _succesEdit = await SourceUser.edit(user);
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
