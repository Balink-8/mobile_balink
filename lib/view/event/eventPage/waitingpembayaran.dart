import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/successpay.dart';

class WaitingPembayaran extends StatefulWidget {
  const WaitingPembayaran({super.key});

  @override
  State<WaitingPembayaran> createState() => _WaitingPembayaranState();
}

class _WaitingPembayaranState extends State<WaitingPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menunggu Pembayaran',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Metode pembayaran pilihan ',
                    style: poppinsKecil.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Bank Central Asia',
                    style: poppinsKecil.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 23.h),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icon/event_icon/ticket.png',
                                width: 13,
                                height: 11,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Ticket',
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
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: blackColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 237.w,
                      ),
                      Text(
                        'x 2',
                        style: poppinsKecil.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor),
                      ),
                      const SizedBox(
                        width: 10,
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
                        'Ringkasan Pesanan',
                        style: poppinsKecil.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                      SizedBox(height: 5.h),
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
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0.r),
                          ),
                        ),
                        builder: (context) {
                          return SizedBox(
                            height: 280,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: Center(
                                    child: Text(
                                      'Ambil Foto',
                                      style: poppinsKecil.copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                const Divider(),
                                ListTile(
                                  title: Center(
                                    child: Text(
                                      'Pilih dari Galeri',
                                      style: poppinsKecil.copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                const Divider(),
                                ListTile(
                                  title: Center(
                                    child: Text(
                                      'Lihat foto',
                                      style: poppinsKecil.copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                const Divider(),
                                ListTile(
                                  title: Center(
                                    child: Text(
                                      'Batal',
                                      style: poppinsKecil.copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w100,
                                        color: const Color(0xff5E5E5E),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 360.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Upload Bukti Pembayaran',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessPayment(),
                          ));
                    },
                    child: Container(
                      width: 360.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Batalkan Pesanan',
                          style: poppinsKecil.copyWith(),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
