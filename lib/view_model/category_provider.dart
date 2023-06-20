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

  resultSearchCategory() {
    if (searchCategory.isEmpty) {
      _listCategory;
    } else {
      _listCategory
          .where((element) =>
              element.nama.toLowerCase().startsWith(searchCategory))
          .toList();
    }
    notifyListeners();
  }

  searching(String namaCategory) {
    searchCategory = namaCategory;
    resultSearchCategory();
  }
}
