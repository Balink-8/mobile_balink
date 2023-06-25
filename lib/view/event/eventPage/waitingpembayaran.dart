import 'dart:async';
import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
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
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicker =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicker!.path);
    // ignore: avoid_print
    print(image);
    setState(() {});
  }

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
          key: const Key('label menunggu pembayaran'),
        ),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        key: const Key('appbarWaitingPayment'),
      ),
      body: SingleChildScrollView(
        key: const Key('screenWaitingPayment'),
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
                    key: const Key('label text'),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    widget.bank,
                    style: poppinsKecil.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp),
                    key: const Key('label bank yang dipilih'),
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
                            key: const Key('gambar event'),
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
                                key: const Key('label tanggal mulai'),
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
                            key: const Key('label nama event'),
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
                                key: const Key('icon lokasi'),
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
                                key: const Key('text lokasi'),
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
                  const Divider(),
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
                              Image.asset('assets/icon/event_icon/ticket.png',
                                  width: 13.w,
                                  height: 11.h,
                                  key: const Key('icon tiket')),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Ticket',
                                style: poppinsKecil.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                                key: const Key('label tiket'),
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
                            key: const Key('label harga tiket'),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Text(
                        'x $jumlah',
                        style: poppinsKecil.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor),
                        key: const Key('label jumlah tiket'),
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
                        key: const Key('label rincian pesanan'),
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
                            key: const Key('label nomor pesanan'),
                          ),
                          Row(
                            children: [
                              Text(
                                '577889036123879654',
                                style: poppinsKecil.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor),
                                key: const Key('text no pesanan'),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Image.asset(
                                'assets/icon/event_icon/copy.png',
                                width: 14.w,
                                height: 16.h,
                                color: abuAColor,
                                key: const Key('icon copy'),
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
                            key: const Key('label tanggal pesan'),
                          ),
                          Text(
                            '29 April, 2023 6:52 AM',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: const Key('text tanggal pesanan'),
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
                            key: const Key('label metode pembayaran'),
                          ),
                          Text(
                            widget.bank,
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: const Key('bank yang dipilih'),
                          )
                        ],
                      ),
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
                        key: const Key('label ringkasan pesanan'),
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
                            key: const Key('label subtotal'),
                          ),
                          SizedBox(
                            width: 135.w,
                          ),
                          Text(
                            'Rp $total',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: const Key('text harga subtotal'),
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
                            'Promo',
                            style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: abuColor),
                            key: const Key('label promo'),
                          ),
                          Text(
                            '-',
                            style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                            key: const Key('promo'),
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
                            key: const Key('label total'),
                          ),
                          Text(
                            'Rp $total',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: blackColor),
                            key: const Key('text total harga'),
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
                        key: const Key('label ringkasan pesanan'),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        key: const Key('boxRincianVa'),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.r),
                            color: abuAColor),
                        width: 327.w,
                        height: 120.h,
                        padding: const EdgeInsets.only(
                          top: 12,
                        ),
                        child: Column(
                          children: [
                            Text(
                              widget.bank,
                              style: poppinsKecil.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                              key: const Key('bank yang dipilih'),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '2668 8001 9203 8388',
                              style: poppinsKecil.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                              key: const Key('label no.va'),
                            ),
                            SizedBox(height: 3.h),
                            TextButton(
                              key: const Key('salinTextVa'),
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
                                    key: const Key('iconCopy'),
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
                                    key: const Key('labelCopy '),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        'Bukti Pembayaran',
                        style: poppinsKecil.copyWith(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.r),
                        color: abuAColor),
                    width: 327.w,
                    height: 390.h,
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          image != null
                              ? SizedBox(
                                  height: 350,
                                  width: 350,
                                  child: Image.file(
                                    image!,
                                    // fit: BoxFit.cover,
                                  ),
                                )
                              : Center(
                                  child: InkWell(
                                    child: const Text('Belum ada gambar'),
                                    onTap: () async {
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ListTile(
                                                  title: Center(
                                                    child: Text(
                                                      'Ambil Foto',
                                                      style:
                                                          poppinsKecil.copyWith(
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      style:
                                                          poppinsKecil.copyWith(
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: blackColor,
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: () async {
                                                    await getImage();
                                                  },
                                                ),
                                                const Divider(),
                                                ListTile(
                                                  title: Center(
                                                    child: Text(
                                                      'Lihat foto',
                                                      style:
                                                          poppinsKecil.copyWith(
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      style:
                                                          poppinsKecil.copyWith(
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        color: const Color(
                                                            0xff5E5E5E),
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
                                  ),
                                ),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessPayment(
                            image: image!,
                            eventData: widget.eventData!,
                            bank: widget.bank,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      key: const Key('buttonUploadBukti'),
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
                          key: const Key('label upload'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100.h),
                  GestureDetector(
                    onTap: () {
                      _showMyDialog(context);
                      Timer(const Duration(seconds: 3), () {
                        Navigator.pop(context);
                      });
                    },
                    child: Container(
                      key: const Key('buttonBatalPesanan'),
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
                          key: const Key('label batal pesanan'),
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
        return Center(
          child: Image.asset('assets/loading.png'),
        );
      },
    );
  }
}
