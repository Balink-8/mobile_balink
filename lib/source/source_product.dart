import 'package:mobile_balink/config/api.dart';
import 'package:mobile_balink/model/product_model.dart';

import '../config/appRequest.dart';

class ApiProduct {
  static Future<List<Product>> getProduct() async {
    Map? responseBody = await AppRequest.gets(Api.produk);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data'];
      return list.map((e) => Product.fromJson(e)).toList();
    }
    return [];
  }
}
