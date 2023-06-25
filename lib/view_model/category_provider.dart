import 'package:flutter/material.dart';
import 'package:mobile_balink/source/source_category.dart';
import '../model/category_model.dart';

class CategoryProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<CategoryModel> _listCategory = [];
  List get listCategory => _listCategory;

  String searchCategory = '';

  Future<void> getCategory() async {
    _isLoading = true;
    List<CategoryModel> category = await SourceKategori.getCategory();
    _listCategory = category;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
