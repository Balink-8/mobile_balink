// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/kodebayar.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_overlay.dart';

import '../../../model/event_model.dart';

// ignore: must_be_immutable
class EventCheckOut extends StatefulWidget {
  final Event? eventData;

  var jumlah;

  var hargaTiket;

  var total;

  String metodePembayaran = "";

  EventCheckOut(
      {super.key,
      required this.total,
      required this.hargaTiket,
      required this.jumlah,
      required this.eventData});

  @override
  State<EventCheckOut> createState() => _EventCheckOutState();
}

class _EventCheckOutState extends State<EventCheckOut> {
  var kodePromo = "";
  var radioValue = '';

  final _kodePromoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('appbarCheckout'),
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Checkout',
          style: poppinsKecil.copyWith(
              fontWeight: FontWeight.w700, fontSize: 14.sp, color: blackColor),
          key: const Key('labelCheckout'),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          key: const Key('screenCheckout'),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Cardcheckout(jumlah: jumlah, eventData: widget.eventData!),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kode Promo',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('label kode promo'),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        key: const Key('textformFieldKodePromo'),
                        controller: _kodePromoController..text = kodePromo,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Input Kode',
                          suffixIcon: Container(
                            width: 30.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: abuAColor),
                            child: Image.asset(
                              'assets/icon/event_icon/key.png',
                              key: const Key('iconKunci'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Ringkasan Pesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('labelRingkasanPesanan'),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      key: const Key('subtotal'),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: abuColor),
                          key: const Key('labelSubtotal'),
                        ),
                        Text(
                          'Rp${widget.total}',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
                          key: const Key('text harga subtotal'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      key: const Key('promoo'),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promo',
                          style: poppinsKecil.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: abuColor),
                          key: const Key('label promo'),
                        ),
                        Text(
                          '-',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
                          key: const Key('text promo'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      key: const Key('Total'),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: abuColor),
                          key: const Key('label total'),
                        ),
                        Text(
                          'Rp${widget.total}',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
                          key: const Key('text total harga'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      key: const Key('metodePembayaran'),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/dollar.png',
                          width: 20.w,
                          height: 20.h,
                          key: const Key('icon dollar'),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Metode Pembayaran',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
                          key: const Key('label metode pembayaran'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                        key: const Key('selectBank'),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 170.w,
                            child: Row(
                              children: [
                                Card(
                                  color: abuColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'TRF',
                                      style: poppinsKecil.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greyColor),
                                      key: const Key('label trf'),
                                    ),
                                  ),
                                ),
                                widget.metodePembayaran == ""
                                    ? Text(
                                        'Transfer Bank',
                                        style: poppinsKecil.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: blackColor),
                                        key: const Key('label transfer bank'),
                                      )
                                    : Text(
                                        widget.metodePembayaran,
                                        style: poppinsKecil.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: blackColor),
                                      ),
                              ],
                            ),
                          ),
                          widget.metodePembayaran == ""
                              ? IconButton(
                                  icon: Image.asset(
                                    'assets/icon/event_icon/back.png',
                                    width: 11.w,
                                    height: 11.h,
                                    key: const Key('icon untk pilih bank'),
                                  ),
                                  onPressed: () {
                                    bsMetodePembayaran(context);
                                  },
                                )
                              : IconButton(
                                  icon: Image.asset(
                                    'assets/icon/event_icon/back.png',
                                    width: 11.w,
                                    height: 11.h,
                                    key: const Key('icon pilih bank'),
                                  ),
                                  onPressed: () {
                                    bsMetodePembayaran(context);
                                  },
                                )
                        ])
                  ],
                ),
                SizedBox(
                  height: 120.h,
                ),
                Row(
                  key: const Key('totalSeluruh'),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total ($jumlah produk)',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                      key: const Key('label total produk'),
                    ),
                    Text(
                      'Rp${widget.total}',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                      key: const Key('text total hargaa'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BuatPesanan(
          key: const Key('buttomNavigatorPesanan'),
          eventData: widget.eventData!,
          metodePembayaran: widget.metodePembayaran),
    );
  }

  Future<dynamic> bsMetodePembayaran(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return SizedBox(
          width: 360.w,
          height: 300.h,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Metode Pembayaran',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('label metode pmbyrn'),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventCheckOut(
                                hargaTiket: widget.eventData!.hargaTiket,
                                jumlah: jumlah,
                                total: total,
                                eventData: widget.eventData),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icon/event_icon/close.png',
                        width: 11.w,
                        height: 11.h,
                        key: const Key('icon close'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'Transfer Bank',
                  style: poppinsKecil.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: const Key('label trf bank'),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170.w,
                      child: Row(
                        children: [
                          Card(
                            color: abuColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'BCA',
                                style: poppinsKecil.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Bank Central Asia',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: const Key('label bank bca'),
                          ),
                        ],
                      ),
                    ),
                    Radio(
                        key: const Key('radio button bca'),
                        value: 'Bank Central Asia',
                        groupValue: radioValue,
                        activeColor: blackColor,
                        onChanged: (String? value) {
                          setState(() {
                            radioValue = value ?? '';
                            widget.metodePembayaran = value.toString();
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170.w,
                      child: Row(
                        children: [
                          Card(
                            color: abuColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Mandiri',
                                style: poppinsKecil.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Bank Mandiri',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: const Key('label bank mandiri'),
                          ),
                        ],
                      ),
                    ),
                    Radio(
                        key: const Key('radio button bank mandiri'),
                        value: 'Bank Mandiri',
                        groupValue: radioValue,
                        activeColor: blackColor,
                        onChanged: (String? value) {
                          setState(() {
                            radioValue = value ?? '';
                            widget.metodePembayaran = value.toString();
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    key: const Key('button selanjutnya'),
                    width: 360.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Selanjutnya',
                        style: poppinsKecil.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w700,
                            color: whiteColor),
                        key: const Key('label selanjutnya'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class BuatPesanan extends StatefulWidget {
  final Event? eventData;
  final String metodePembayaran;
  const BuatPesanan(
      {super.key, required this.eventData, required this.metodePembayaran});

  @override
  State<BuatPesanan> createState() => _BuatPesananState();
}

class _BuatPesananState extends State<BuatPesanan> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('buttonBuatPesanan'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => kodeBayar(
                eventData: widget.eventData!, bank: widget.metodePembayaran),
          ),
        );
      },
      child: Container(
        key: const Key('button buat pesanan'),
        color: secondaryColor,
        alignment: Alignment.center,
        height: 53.h,
        child: Text(
          'Buat Pesanan',
          style: poppinsKecil.copyWith(
              fontSize: 14.sp, fontWeight: FontWeight.w700, color: whiteColor),
          key: const Key('labell buat pesanan'),
        ),
      ),
    );
  }
}
