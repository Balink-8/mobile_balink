import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';

class cardCalendar extends StatelessWidget {
  final Event eventData;
  const cardCalendar({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, right: 10, left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon/event_icon/bulan.png',
                  width: 11,
                  height: 12,
                  key: Key('icon kalendar'),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Tanggal',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: Key('label tanggal'),
                )
              ],
            ),
            const SizedBox(height: 5),
            Column(
              children: [
                Text(
                  eventData.tanggalMulai,
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                  key: Key('text tanggal mulai'),
                ),
                Text(
                  '-',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700, color: blackColor),
                  key: Key('text garis hubung'),
                ),
                Text(eventData.tanggalSelesai,
                    style: poppinsKecil.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                    key: Key('text tanggal selesai')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
