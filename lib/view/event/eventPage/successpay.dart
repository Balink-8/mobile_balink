import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/event/eventPage/kodebayar.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';

class SuccessPayment extends StatefulWidget {
  final Event? eventData;
  final String bank;
  const SuccessPayment(
      {super.key, required this.eventData, required this.bank});

  @override
  State<SuccessPayment> createState() => _SuccessPaymentState();
}

class _SuccessPaymentState extends State<SuccessPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Berhasil dipesan',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 15, 17, 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0.r),
                    child: Image.asset(
                      'assets/icon/event_icon/dummy/g1.png',
                      width: 64.w,
                      height: 64.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          widget.eventData!.tanggalMulai,
                          style: poppinsKecil.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: secondaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      widget.eventData!.nama,
                      style: poppinsKecil.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/location.png',
                          width: 10.w,
                          height: 13.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          widget.eventData!.lokasi,
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(),
            SizedBox(
              height: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ringkasan Pesanan',
                  style: poppinsKecil.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    SizedBox(
                      width: 135.w,
                    ),
                    Text(
                      'Rp $harga',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pengiriman',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      'Rp $hargaPengiriman',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Promo',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      '-',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                    Text(
                      'Rp ${harga + hargaPengiriman}',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            SizedBox(
              height: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perincian Pesanan',
                  style: poppinsKecil.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nomor Pesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Row(
                      children: [
                        Text(
                          '577889036123879654',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Image.asset(
                          'assets/icon/event_icon/copy.png',
                          width: 14.w,
                          height: 16.h,
                          color: abuAColor,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tanggal Pemesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      '29 April, 2023 6:52 AM',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Metode Pembayaran',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      widget.bank,
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    )
                  ],
                ),
              ],
            ),
            const Divider(),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 360.w,
              height: 68.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: grenColor,
                  border: Border.all(color: greenColor)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon/event_icon/done.png',
                    width: 15.44.w,
                    height: 11.18.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'LUNAS',
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700, color: greenColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180.h,
            ),
            Container(
              width: 360.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: secondaryColor,
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/icon/event_icon/bill.png',
                  width: 14.w,
                  height: 16.h,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Text(
                  'Lihat Riwayat Transaksi',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700, color: whiteColor),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
