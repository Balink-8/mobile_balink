import 'package:flutter/material.dart';
import 'package:mobile_balink/source/source_event.dart';

import '../model/event_model.dart';

class EventProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Event> _listEvent = [];
  List get listEvent => _listEvent;

  String searchEventText = '';

  Future<void> getEvent() async {
    _isLoading = true;
    notifyListeners();
    List<Event> events = await SourceEvent.getEvent();
    _listEvent = events;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }

  resultSearchEvent() {
    if (searchEventText.isEmpty) {
      _listEvent;
    } else {
      _listEvent
          .where((element) =>
              element.nama.toLowerCase().startsWith(searchEventText))
          .toList();
    }
    notifyListeners();
  }

  searchEventHome(String namaEvent) {
    searchEventText = namaEvent;
    resultSearchEvent();
  }

  where(Function(dynamic event) param0) {}
}
