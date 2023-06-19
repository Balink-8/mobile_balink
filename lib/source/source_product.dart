import 'package:mobile_balink/config/api.dart';
import 'package:mobile_balink/model/product_model.dart';

import '../config/app_request.dart';

class SourceProduct {
  static Future<List<Product>> getProduct() async {
    Map? responseBody = await AppRequest.gets(Api.produk);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => Product.fromJson(e)).toList();
      // var listData = responseBody['data'];
      // List<Product> products = [];

      // return listData.map((e) => Product.fromJson(e)).toList();
      // return listData;
    }
    throw Exception('Gagal Get Products');
    // return [];
  }
  // Future<List<Product>> getProduct()async{
  //   var
  // }

  static Future<List<Product>> getProductByName(String productName) async {
    Map? responseBody =
        await AppRequest.gets('${Api.produk}?name=$productName');
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => Product.fromJson(e)).toList();
    }
    throw Exception('Gagal Get Products by Name');
  }
}
