import 'package:mobile_balink/config/api.dart';
import 'package:mobile_balink/config/app_request.dart';
import 'package:mobile_balink/model/category_model.dart';

class SourceKategori {
  static Future<List<CategoryModel>> getCategory() async {
    Map? responseBody = await AppRequest.gets(Api.kategori);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => CategoryModel.fromJson(e)).toList();
    }
    throw Exception('Gagal Get Category');
  }
}
