import 'package:mobile_balink/config/app_request.dart';
import '../config/api.dart';
import '../model/cart_model.dart';

class SourceCart {
  static Future<List<Cart>> getCart() async {
    Map? responseBody = await AppRequest.gets(Api.artikel);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((json) => Cart.fromJson(json)).toList();
    }
    throw Exception('Gagal Get Keranjang');
  }
}
