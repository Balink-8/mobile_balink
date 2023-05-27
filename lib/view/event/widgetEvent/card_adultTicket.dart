import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';

Card AdultTicket() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icon/event_icon/check_box.png',
            width: 14,
            height: 14,
          ),
        ),
        const SizedBox(
          width: 15,
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
              'Rp 120.000',
              style: poppinsKecil.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700, color: blackColor),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icon/event_icon/min.png',
            width: 11,
            height: 11,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '2',
          style: poppinsKecil.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700, color: secondaryColor),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icon/event_icon/add.png',
            width: 11,
            height: 11,
          ),
        ),
      ],
    ),
  );
}
