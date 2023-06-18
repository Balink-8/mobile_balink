import 'package:flutter/material.dart';
import 'package:mobile_balink/source/source_event.dart';

import '../model/event_model.dart';

class EventProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Event> _listEvent = [];
  List get listEvent => _listEvent;

  Future<void> getEvent() async {
    _isLoading = true;
    notifyListeners();
    List<Event> events = await SourceEvent.getEvent();
    _listEvent = events;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }
}
