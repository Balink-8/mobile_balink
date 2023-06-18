import 'package:flutter/foundation.dart';
import 'package:mobile_balink/source/source_artikel.dart';

import '../model/artikel_model.dart';

class ArtikelProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Datum> _listArtikel = [];
  List get listArtikel => _listArtikel;

  Future<void> getArtikel() async {
    _isLoading = true;
    notifyListeners();
    List<Datum> artikel = await SourceArtikel.getArtikel();
    _listArtikel = artikel;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
