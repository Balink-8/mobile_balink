import 'package:flutter/foundation.dart';
import 'package:mobile_balink/source/source_artikel.dart';

import '../model/artikel_model.dart';

class ArtikelProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Artikel> _listArtikel = [];
  List get listArtikel => _listArtikel;

  Artikel? _artikel;
  Artikel? get artikel => _artikel;

  String searchText = '';

  Future<void> getArtikel() async {
    _isLoading = true;
    notifyListeners();
    List<Artikel> artikel = await SourceArtikel.getArtikel();
    _listArtikel = artikel;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }

  Future<void> getSingleArtikel(int id) async {
    _isLoading = true;
    notifyListeners();
    Artikel? artikel = await SourceArtikel.getArtikelById(id);
    _artikel = artikel;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }

  updateArtikel() {
    if (searchText.isEmpty) {
      _listArtikel;
    } else {
      _listArtikel
          .where((e) => e.judul.toLowerCase().startsWith(searchText))
          .toList();
    }
    notifyListeners();
  }

  search(String judul) {
    searchText = judul;
    updateArtikel();
  }
}
