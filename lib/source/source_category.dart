import 'package:mobile_balink/model/category_model.dart';

import '../config/api.dart';
import '../config/appRequest.dart';

class SourceCategory {
  static Future<List<Category>> getCategory() async {
    Map? responseBody = await AppRequest.gets(Api.kategori);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => Category.fromJson(e)).toList();
    }
    throw Exception('Gagal Get Categorys');
  }

  static Future<List<Category>> getCategoryByName(String CategoryName) async {
    Map? responseBody =
        await AppRequest.gets('${Api.produk}?name=$CategoryName');
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => Category.fromJson(e)).toList();
    }
    throw Exception('Gagal Get Categorys by Name');
  }
}
