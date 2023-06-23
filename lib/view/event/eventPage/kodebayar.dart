import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/event/eventPage/waitingpembayaran.dart';
import '../../widget/event_screen_widget/buttomsheet.dart';

class kodeBayar extends StatefulWidget {
  final Event eventData;
  final String bank;
  const kodeBayar({
    super.key,
    required this.eventData,
    required this.bank,
  });

  @override
  State<kodeBayar> createState() => _kodeBayarState();
}

var nova = '2668 8001 9203 8388';
int hargaPengiriman = 1000;

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
              fontWeight: FontWeight.w400, fontSize: 14.sp, color: blackColor),
          key: const Key('label kode pembayaran'),
        ),
        key: const Key('app bar kode pembayaran'),
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
                  width: 24.w,
                  height: 24.h,
                  key: const Key('icon jam'),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  'Menunggu untuk pembayaran',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: blackColor),
                  key: const Key('label menunggu pembayaran'),
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
                  'Total : ${total + hargaPengiriman}',
                  style: poppinsKecil.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                  key: Key('text total harga'),
                ),
                Text(
                  'Pembayaran dalam 24 jam sebelumn No. Virtual Account expired',
                  style: poppinsKecil.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: const Key('label text'),
                )
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Text(
              'No. Virtual Account',
              style: poppinsKecil.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: blackColor),
              key: const Key('label VA'),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.r),
                  color: abuAColor),
              width: 327.w,
              height: 120.h,
              padding: const EdgeInsets.fromLTRB(97, 12, 97, 12),
              child: Column(
                children: [
                  Text(
                    widget.bank,
                    style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                    key: Key('text nama bank'),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '2668 8001 9203 8388',
                    style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                    key: Key('text no va'),
                  ),
                  SizedBox(height: 4.h),
                  TextButton(
                    key: Key('text button copy'),
                    onPressed: () {
                      FlutterClipboard.copy(nova).then((value) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Berhasil Disalin'))));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/copy.png',
                          width: 17.w,
                          height: 20.h,
                          key: const Key('icon copy'),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Copy Code',
                          style: poppinsKecil.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                          key: const Key('label copy code'),
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
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: blackColor),
              key: const Key('label bank'),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Card(
                  color: abuAColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'TRF',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('label trf'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 11.w,
                ),
                Text(
                  widget.bank,
                  style: poppinsKecil.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: Key('label bank yang dipilih'),
                ),
              ],
            ),
            SizedBox(
              height: 250.h,
            ),
            GestureDetector(
              key: Key('buttonLihatPesanan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WaitingPembayaran(
                        eventData: widget.eventData, bank: widget.bank),
                  ),
                );
              },
              child: Container(
                key: const Key('button lihat pesanan'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: secondaryColor,
                ),
                alignment: Alignment.center,
                width: 328.w,
                height: 45.h,
                child: Text(
                  'Lihat Pesanan',
                  style: poppinsKecil.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: whiteColor),
                  key: Key('label lihat pesanan'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
