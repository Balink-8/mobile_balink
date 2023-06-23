import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

import '../../../model/event_model.dart';

class DetailEv extends StatelessWidget {
  final Event eventData;
  const DetailEv({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deskripsi',
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w700, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            key: Key('label deskripsi'),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            eventData.deskripsi,
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            key: Key('text deskripsi'),
          ),
        ],
      ),
    );
  }
}
