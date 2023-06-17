import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<dynamic> _data = [];
  int _dataShown = 0;
  int _page = 1;
  int _totalData = 0;
  String _message = '';
  bool _status = false;

  List<dynamic> get data => _data;
  int get dataShown => _dataShown;
  int get page => _page;
  int get totalData => _totalData;
  String get message => _message;
  bool get status => _status;

  void updateCategoryData(
      List<dynamic> data, int dataShown, int page, int totalData) {
    _data = data;
    _dataShown = dataShown;
    _page = page;
    _totalData = totalData;
    notifyListeners();
  }

  void updateMessage(String message) {
    _message = message;
    notifyListeners();
  }

  void updateStatus(bool status) {
    _status = status;
    notifyListeners();
  }
}
