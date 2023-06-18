import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';

class Card_CO extends StatelessWidget {
  final Event eventData;
  var jumlah;

  Card_CO({super.key, required this.jumlah, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icon/event_icon/dummy/g1.png',
              width: 50,
              height: 50,
              key: Key('gambar event'),
            ),
            SizedBox(
              width: 210.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon/event_icon/ticket.png',
                        width: 13,
                        height: 11,
                        key: Key('icon tiket'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tiket',
                        style: poppinsKecil.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                        key: Key('label tiket'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp ${eventData.hargaTiket.toString()}",
                    style: poppinsKecil.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                    key: Key('harga tiket'),
                  )
                ],
              ),
            ),
            Text(
              'x $jumlah',
              style: poppinsKecil.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
              key: Key('label jumlah tiket'),
            ),
          ],
        ),
      ),
    );
  }
}
