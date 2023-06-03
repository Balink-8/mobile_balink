import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/waitingpembayaran.dart';

class kodeBayar extends StatefulWidget {
  const kodeBayar({super.key});

  @override
  State<kodeBayar> createState() => _kodeBayarState();
}

class _kodeBayarState extends State<kodeBayar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Kode Pembayaran',
          style: poppinsKecil.copyWith(
              fontWeight: FontWeight.w400, fontSize: 14, color: blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon/event_icon/waiting.png',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  'Menunggu untuk pembayaran',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: blackColor),
                )
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total : Rp341.000',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                Text(
                  'Pembayaran dalam 24 jam sebelumn No. Virtual Account expired',
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                )
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Text(
              'No. Virtual Account',
              style: poppinsKecil.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700, color: blackColor),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                  color: abuAColor),
              width: 327.w,
              height: 108.h,
              padding: EdgeInsets.fromLTRB(97, 12, 97, 12),
              child: Column(
                children: [
                  Text(
                    'Bank Central Asia',
                    style: poppinsKecil.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '2668 8001 9203 8388',
                    style: poppinsKecil.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                  SizedBox(height: 4.h),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/copy.png',
                          width: 17.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Copy Code',
                          style: poppinsKecil.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Bank',
              style: poppinsKecil.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700, color: blackColor),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Card(
                  color: abuAColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'BCA',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: 11.w,
                ),
                Text(
                  'Bank Central Asia',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                ),
              ],
            ),
            SizedBox(
              height: 310.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WaitingPembayaran(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: secondaryColor,
                ),
                alignment: Alignment.center,
                width: 328.w,
                height: 45.h,
                child: Text(
                  'Lihat Pesanan',
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
