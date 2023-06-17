import 'package:mobile_balink/config/app_request.dart';

import '../config/api.dart';
import '../model/event_model.dart';

class SourceEvent {
  static Future<List<Event>> getEvent() async {
    Map? responseBody = await AppRequest.gets(Api.event);
    if (responseBody == null) return [];
    if (responseBody.isNotEmpty) {
      List list = responseBody['data']['data'];
      return list.map((e) => Event.fromJson(e)).toList();
    }
    throw Exception('Gagal Get Event');
  }
}
