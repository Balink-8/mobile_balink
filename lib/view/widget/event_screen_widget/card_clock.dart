import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';

class cardClock extends StatelessWidget {
  final Event eventData;
  const cardClock({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, right: 40, left: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon/event_icon/alarmm.png',
                  width: 11,
                  height: 12,
                  key: Key('icon jam'),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Waktu',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: Key('text waktu'),
                )
              ],
            ),
            const SizedBox(height: 5),
            Column(
              children: [
                Text(
                  eventData.waktuMulai,
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                  key: Key('text waktu mulai'),
                ),
                Text(
                  '-',
                  style: poppinsKecil.copyWith(
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                  key: Key('label garis hubung'),
                ),
                Text(
                  eventData.waktuSelesai,
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                  key: Key('text waktu selesai'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
