import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class SuccessPayment extends StatefulWidget {
  const SuccessPayment({super.key});

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
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/icon/event_icon/dummy/g1.png',
                      width: 64,
                      height: 64,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          '29 Mei 2023',
                          style: poppinsKecil.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: secondaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Ogoh - Ogoh',
                      style: poppinsKecil.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/location.png',
                          width: 10,
                          height: 13,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Denpasar',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
                      fontSize: 14,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    SizedBox(
                      width: 135.w,
                    ),
                    Text(
                      'Rp340.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      'Rp1.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      '-',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
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
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                    Text(
                      'Rp341.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
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
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nomor Pesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    SizedBox(
                      width: 135.w,
                    ),
                    Text(
                      '577889036123879654',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Image.asset(
                      'assets/icon/event_icon/copy.png',
                      width: 14,
                      height: 16,
                      color: abuAColor,
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
                      'Tanggal Pemesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      '29 April, 2023 6:52 AM',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                    ),
                    Text(
                      'Bank Central Asia',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    )
                  ],
                ),
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
                  'Status Pembayaran',
                  style: poppinsKecil.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 360.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: forthColor),
                  child: Center(
                    child: Text(
                      'Berhasil di bayar',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w700, color: secondaryColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200.h,
            ),
            Container(
              width: 360.w,
              height: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: secondaryColor),
              child: Center(
                child: Text(
                  'Oke',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700, color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
