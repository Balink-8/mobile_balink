import 'package:mobile_balink/config/app_request.dart';
import 'package:mobile_balink/model/promo_model.dart';

import '../config/api.dart';

class SourcePromo {
  static Future<List<Promo>> getPromo() async {
    Map? responseBody = await AppRequest.gets(Api.promo);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => Promo.fromJson(e)).toList();
    }
    throw Exception('Gagal Get Promo');
  }
}
