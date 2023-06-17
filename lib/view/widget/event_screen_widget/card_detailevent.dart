import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';

import '../../../model/event_model.dart';

class DetailEv extends StatelessWidget {
  final Event eventData;
  const DetailEv({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: putihColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Deskripsi',
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w700, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            key: Key('label deskripsi'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            eventData.deskripsi,
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            key: Key('text deskripsi'),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
