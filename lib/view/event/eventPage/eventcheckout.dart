import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';
import 'package:mobile_balink/view/event/eventPage/kodebayar.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_overlay.dart';

class EventCo extends StatefulWidget {
  var jumlah;

  var hargaTiket;

  var total;

  String metodePembayaran = "";

  EventCo(
      {super.key,
      required this.total,
      required this.hargaTiket,
      required this.jumlah});

  @override
  State<EventCo> createState() => _EventCoState();
}

class _EventCoState extends State<EventCo> {
  var kodePromo = "";
  var radioValue = '';
  int hargaPengiriman = 1000;

  final _kodePromoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card_CO(jumlah: jumlah),
                SizedBox(height: 20.h),
                // SizedBox(
                //   height: 180,
                //   child: ListView.separated(
                //       scrollDirection: Axis.vertical,
                //       itemBuilder: (context, index) {
                //         return const card_CO();
                //       },
                //       separatorBuilder: (context, index) {
                //         return const SizedBox(
                //           height: 5,
                //         );
                //       },
                //       itemCount: 2),
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kode Promo',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Form(
                        key: _formKey,
                        child: TextFormField(
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
                                      'assets/icon/event_icon/key.png'))),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ringkasan Pesanan',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
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
                        ),
                        Text(
                          'Rp$harga',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
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
                        ),
                        Text(
                          'Rp$hargaPengiriman',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
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
                        ),
                        Text(
                          '-',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: blackColor),
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
                        ),
                        Text(
                          'Rp${harga + hargaPengiriman}',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: blackColor),
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
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                )
                              : Text(
                                  widget.metodePembayaran,
                                  style: poppinsKecil.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                ),
                          const SizedBox(width: 180),
                          widget.metodePembayaran == ""
                              ? IconButton(
                                  icon: Image.asset(
                                    'assets/icon/event_icon/back.png',
                                    width: 11,
                                    height: 11,
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
                                  ),
                                  onPressed: () {
                                    bsMetodePembayaran(context);
                                  },
                                )
                        ])
                  ],
                ),
                Row(
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
                        ),
                      ),
                    ),
                    Text(
                      'Bayar di Tempat',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    const SizedBox(width: 180),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EventDetailScreen(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icon/event_icon/check_box_ksg.png',
                        width: 18,
                        height: 18,
                      ),
                    ),
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
                    ),
                    Text(
                      'Rp${harga + hargaPengiriman}',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BuatPesanan(),
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
          height: 265.h,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Metode Pembayaran',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventCo(
                                hargaTiket: hargaTiket,
                                jumlah: jumlah,
                                total: harga),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/icon/event_icon/close.png',
                        width: 11,
                        height: 11,
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
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
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
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Bank Central Asia',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    Radio(
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
                const SizedBox(
                  height: 15,
                ),
                Row(
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
                    ),
                    SizedBox(
                      width: 155.w,
                    ),
                    Radio(
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
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
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
  const BuatPesanan({super.key});

  @override
  State<BuatPesanan> createState() => _BuatPesananState();
}

class _BuatPesananState extends State<BuatPesanan> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key('buttonBuatPesanan'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const kodeBayar(),
          ),
        );
      },
      child: Container(
        color: secondaryColor,
        alignment: Alignment.center,
        height: 53,
        child: Text(
          'Buat Pesanan',
          style: poppinsKecil.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700, color: whiteColor),
        ),
      ),
    );
  }
}
