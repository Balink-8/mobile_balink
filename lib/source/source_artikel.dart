import 'package:mobile_balink/config/app_request.dart';
import 'package:mobile_balink/model/artikel_model.dart';

import '../config/api.dart';

class SourceArtikel {
  static Future<List<Artikel>> getArtikel() async {
    Map? responseBody = await AppRequest.gets(Api.artikel);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((json) => Artikel.fromJson(json)).toList();
    }
    throw Exception('Gagal Get Artikel');
  }

  static Future<Artikel?> getArtikelById(int id) async {
    Map? responseBody = await AppRequest.gets('${Api.artikel}/$id');
    if (responseBody == null) return null;
    if (responseBody.isNotEmpty) {
      return Artikel.fromJson(responseBody['data']);
    }
    throw Exception('Gagal Get Artikel');
  }
}
