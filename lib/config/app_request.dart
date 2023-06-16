import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile_balink/config/session.dart';

class AppRequest {
  static Future<Map?> gets(String url) async {
    String token = await Session.getToken();
    try {
      var headers = {
            'Content-Type': 'application.json',
            'Authorization': 'Bearer $token'
          },
          response = await http.get(Uri.parse(url), headers: headers);
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      return null;
    }
  }

  static Future<Map?> post(String url, Object? body) async {
    try {
      var response = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'}, body: body);
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      return null;
    }
  }
}
