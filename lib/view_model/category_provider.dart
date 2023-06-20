import 'package:flutter/material.dart';
import 'package:mobile_balink/model/category_model.dart';

import '../source/source_category.dart';

class CategoryProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Category> _listCategory = [];
  List get listCategory => _listCategory;

  Future<void> getCategory() async {
    _isLoading = true;
    notifyListeners();
    List<Category> categorys = await SourceCategory.getCategory();
    _listCategory = categorys;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
