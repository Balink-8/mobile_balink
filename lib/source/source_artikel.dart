import 'package:mobile_balink/config/api.dart';
import 'package:mobile_balink/config/app_request.dart';
import 'package:mobile_balink/model/artikel_model.dart';

class SourceArtikel {
  static Future<List<Datum>> getArtikel() async {
    Map? responseBody = await AppRequest.gets(Api.artikel);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody["data"]["data"];
      return list.map((e) => Datum.fromJson(e)).toList();
    }
    throw Exception('Get Artikel Gagal');
  }
}
