import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class card_CO extends StatelessWidget {
  const card_CO({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: fifthColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              'assets/ev1.png',
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/confirmation_number.png',
                      width: 13,
                      height: 11,
                      color: thirdColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Dewasa',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Rp.120.000',
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                )
              ],
            ),
            SizedBox(
              width: 150.w,
            ),
            Text(
              'x 2',
              style: poppinsKecil.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
            )
          ],
        ),
      ),
    );
  }
}
