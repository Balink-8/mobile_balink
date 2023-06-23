import 'package:flutter/material.dart';
import 'package:mobile_balink/model/promo_model.dart';

import '../source/source_promo.dart';

class PromoProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Promo> _listPromo = [];
  List get listPromo => _listPromo;

  Future<void> getPromo() async {
    _isLoading = true;
    notifyListeners();
    List<Promo> promoo = await SourcePromo.getPromo();
    _listPromo = promoo;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
