import 'dart:convert';
import 'package:mobile_balink/model/category_model.dart';
import '../config/api.dart';
import '../config/appRequest.dart';

class SourceCategory {
  Future<List<Category>> category() async {
    dynamic responseBody = await AppRequest.gets(Api.kategori);
    if (responseBody.statusCode == 200) {
      var jsonResponse = json.decode(responseBody.body);
      var category = Category.fromJson(jsonResponse[0]);

      print('Message: ${category.message}');
      print('Status: ${category.status}');

      var dataResponse = category.data;
      print('Data Shown: ${dataResponse.dataShown}');
      print('Page: ${dataResponse.page}');
      print('Total Data: ${dataResponse.totalData}');

      var data = dataResponse.data;
      if (data != null && data is List) {
        for (var item in data) {
          // Lakukan sesuatu dengan setiap item data
          // ...
        }
      }
    }
    if (responseBody == null || responseBody.isEmpty) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data'];
      return list.map((e) => Category.fromJson(e)).toList();
    }
    return [];
  }
}
