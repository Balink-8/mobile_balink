import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';

class cardCalendar extends StatelessWidget {
  const cardCalendar({
    super.key,
  });

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
                  'assets/icon/event_icon/bulan.png',
                  width: 11,
                  height: 12,
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
                )
              ],
            ),
            const SizedBox(height: 5),
            Text('12 Jan 2023',
                style: poppinsKecil.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: blackColor))
          ],
        ),
      ),
    );
  }
}
