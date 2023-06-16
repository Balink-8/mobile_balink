import 'package:flutter/material.dart';
import 'package:mobile_balink/model/product_model.dart';
import 'package:mobile_balink/source/source_product.dart';

class ProductProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Product> _listProduct = [];
  List get listProduct => _listProduct;

  Future<void> getProduct() async {
    _isLoading = true;
    notifyListeners();
    List<Product> products = await SourceProduct.getProduct();
    _listProduct = products;
    notifyListeners();
    _isLoading = false;
    notifyListeners();

    // try {
    //   List<Product> products = await SourceProduct.getProduct();
    //   _listProduct = products;
    //   notifyListeners();
    // } catch (e) {
    //   print(e);
    //   _isLoading = false;

    // }
  }
}
