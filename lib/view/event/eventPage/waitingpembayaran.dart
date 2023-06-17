import 'dart:async';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/event/eventPage/kodebayar.dart';
import 'package:mobile_balink/view/event/eventPage/successpay.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';

class WaitingPembayaran extends StatefulWidget {
  final Event? eventData;
  final String bank;
  const WaitingPembayaran(
      {super.key, required this.eventData, required this.bank});

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
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    widget.bank,
                    style: poppinsKecil.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp),
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
                    height: 20.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icon/event_icon/ticket.png',
                                width: 13.w,
                                height: 11.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Ticket',
                                style: poppinsKecil.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text(
                            "Rp ${widget.eventData!.hargaTiket.toString()}",
                            style: poppinsKecil.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: blackColor),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Text(
                        'x $jumlah',
                        style: poppinsKecil.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Divider(),
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
                  const Divider(),
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
                      SizedBox(height: 5.h),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.r),
                            color: abuAColor),
                        width: 327.w,
                        height: 120.h,
                        padding: EdgeInsets.fromLTRB(97, 12, 97, 12),
                        child: Column(
                          children: [
                            Text(
                              widget.bank,
                              style: poppinsKecil.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '2668 8001 9203 8388',
                              style: poppinsKecil.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                            ),
                            SizedBox(height: 3.h),
                            TextButton(
                              onPressed: () {
                                FlutterClipboard.copy(nova).then((value) =>
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text('Berhasil Disalin'))));
                              },
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
                                        fontSize: 14.sp,
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
                            height: 280.h,
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
                        borderRadius: BorderRadius.circular(8.r),
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
                      _showMyDialog(context);
                      Timer(const Duration(seconds: 3), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccessPayment(
                              eventData: widget.eventData!,
                              bank: widget.bank,
                            ),
                          ),
                        );
                      });
                    },
                    child: Container(
                      width: 360.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(8.r),
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

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding:
              EdgeInsets.symmetric(horizontal: 140.w, vertical: 360.h),
          titlePadding:
              const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
          title: Image.asset(
            'assets/icon/event_icon/memuat.png',
            width: 22.w,
            height: 22.h,
          ),
          content: SizedBox(
              width: 106.w,
              height: 77.h,
              child: const Center(child: Text('Memuat'))),
        );
      },
    );
  }
}
