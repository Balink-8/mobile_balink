import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/event/eventPage/kodebayar.dart';
import 'package:mobile_balink/view/transaksi/transaksi_widget/tab_bar_navigaton.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/realtime.dart';

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
          key: const Key('label berhasil dipesan'),
        ),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        key: const Key('appbar berhasil dipesan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          key: const Key('Screen berhasil dipesan'),
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
                        key: Key('gambar icon'),
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
                            key: Key('label tanggal mulai'),
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
                        key: Key('label nama event'),
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
                            key: Key(' text lokasi'),
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
                    key: const Key('label ringkas pesanan'),
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
                        key: const Key('label rsubtotal'),
                      ),
                      SizedBox(
                        width: 135.w,
                      ),
                      Text('Rp ${total}',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                          key: Key('label total')),
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
                        key: const Key('label pengiriman'),
                      ),
                      Text(
                        'Rp $hargaPengiriman',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                        key: Key('label harga ongkir'),
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
                        key: const Key('label promo'),
                      ),
                      Text(
                        '-',
                        style: poppinsKecil.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                        key: Key('label harga promo'),
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
                        'Rp ${total + hargaPengiriman}',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                        key: Key('label total harga'),
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
                            key: Key('nomor pesanan'),
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
                        key: const Key('label tanggal pesanan'),
                      ),
                      Text(
                        '29 April 2023 6:52 AM',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                        key: Key('tanggal pesanan'),
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
                        key: const Key('label metode bayar'),
                      ),
                      Text(
                        widget.bank,
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                        key: Key('metode bayar'),
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
                key: const Key('box lunas'),
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
                      key: const Key('icon berhasil'),
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
                      key: const Key('label lunas'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabBarNavigation()),
                  );
                },
                child: Container(
                  key: const Key('button lihat transaksi'),
                  width: 360.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: secondaryColor,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/bill.png',
                          width: 14.w,
                          height: 16.h,
                          key: const Key('icon bill'),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          'Lihat Riwayat Transaksi',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w700, color: whiteColor),
                          key: const Key('label riwayat transaksi'),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
