import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/event_model.dart';

class Maps extends StatefulWidget {
  final Event eventData;
  const Maps({
    super.key,
    required this.eventData,
  });
  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(widget.eventData.lokasi));
  }
}
