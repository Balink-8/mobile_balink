import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';
import 'package:mobile_balink/view/event/eventPage/kodebayar.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_overlay.dart';
import 'package:provider/provider.dart';

import '../../../model/event_model.dart';
import '../../../view_model/event_provider.dart';

class EventCo extends StatefulWidget {
  final Event? eventData;

  var jumlah;

  var hargaTiket;

  var total;

  String metodePembayaran = "";

  EventCo(
      {super.key,
      required this.total,
      required this.hargaTiket,
      required this.jumlah,
      required this.eventData});

  @override
  State<EventCo> createState() => _EventCoState();
}

class _EventCoState extends State<EventCo> {
  var kodePromo = "";
  var radioValue = '';
  int hargaPengiriman = 1000;

  final _kodePromoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Checkout',
          style: poppinsKecil.copyWith(
              fontWeight: FontWeight.w700, fontSize: 14, color: blackColor),
          key: const Key('label checkout'),
        ),
        key: const Key('app bar checkout'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card_CO(jumlah: jumlah, eventData: widget.eventData!),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kode Promo',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
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
                        key: const Key('textform field input kode promo'),
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
                              key: const Key('icon kunci'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ringkasan Pesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('label ringkasan pesanan'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: abuColor),
                          key: const Key('label subtotal'),
                        ),
                        Text(
                          'Rp${widget.eventData!.hargaTiket * jumlah}',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
                          key: Key('text harga subtotal'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pengiriman',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: abuColor),
                          key: Key('label pengiriman'),
                        ),
                        Text(
                          'Rp$hargaPengiriman',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
                          key: Key('text harga pengiriman '),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promo',
                          style: poppinsKecil.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: abuColor),
                          key: Key('label promo'),
                        ),
                        Text(
                          '-',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
                          key: Key('text promo'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: abuColor),
                          key: Key('label total'),
                        ),
                        Text(
                          'Rp${harga + hargaPengiriman}',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
                          key: Key('text total harga'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon/event_icon/dollar.png',
                          width: 20,
                          height: 20,
                          key: const Key('icon dollar'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Metode Pembayaran',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
                          key: const Key('label metode pembayaran'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
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
                                      'TRF',
                                      style: poppinsKecil.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: greyColor),
                                      key: Key('label trf'),
                                    ),
                                  ),
                                ),
                                widget.metodePembayaran == ""
                                    ? Text(
                                        'Transfer Bank',
                                        style: poppinsKecil.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: blackColor),
                                        key: Key('label transfer bank'),
                                      )
                                    : Text(
                                        widget.metodePembayaran,
                                        style: poppinsKecil.copyWith(
                                            fontSize: 12,
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
                                    width: 11,
                                    height: 11,
                                    key: Key('icon untk pilih bank'),
                                  ),
                                  onPressed: () {
                                    bsMetodePembayaran(context);
                                  },
                                )
                              : IconButton(
                                  icon: Image.asset(
                                    'assets/icon/event_icon/radio.png',
                                    width: 11,
                                    height: 11,
                                    key: Key('icon pilih bank'),
                                  ),
                                  onPressed: () {
                                    bsMetodePembayaran(context);
                                  },
                                )
                        ])
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: Row(
                        children: [
                          Card(
                            color: abuColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'COD',
                                style: poppinsKecil.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                                key: Key('label COD'),
                              ),
                            ),
                          ),
                          Text(
                            'Bayar di Tempat',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: Key('text bayar di tempat'),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        value: isChecked,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                        key: Key('checkbox')),
                  ],
                ),
                SizedBox(
                  height: 120.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total (2 produk)',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: abuColor),
                      key: Key('label total produk'),
                    ),
                    Text(
                      'Rp${harga + hargaPengiriman}',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                      key: Key('text total hargaa'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BuatPesanan(
          key: Key('buttom navigator buat pesanan'),
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
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: Key('label metode pmbyrn'),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventCo(
                                hargaTiket: widget.eventData!.hargaTiket,
                                jumlah: jumlah,
                                total: harga,
                                eventData: widget.eventData),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icon/event_icon/close.png',
                        width: 11,
                        height: 11,
                        key: Key('icon close'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Transfer Bank',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: Key('label trf bank'),
                ),
                const SizedBox(
                  height: 15,
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
                                    fontSize: 12,
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
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: Key('label bank bca'),
                          ),
                        ],
                      ),
                    ),
                    Radio(
                        key: Key('radio button bca'),
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
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bank Mandiri',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: Key('label bank mandiri'),
                          ),
                        ],
                      ),
                    ),
                    Radio(
                        key: Key('radio button bank mandiri'),
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
                    key: Key('button selanjutnya'),
                    width: 360.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Selanjutnya',
                        style: poppinsKecil.copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: whiteColor),
                        key: Key('label selanjutnya'),
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
        height: 53,
        child: Text(
          'Buat Pesanan',
          style: poppinsKecil.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700, color: whiteColor),
          key: const Key('labell buat pesanan'),
        ),
      ),
    );
  }
}
