import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/checkout/berhasil_bayar.dart';
import 'package:mobile_balink/view/checkout/choose_bank.dart';
import 'package:mobile_balink/view/shopping/shopping_page/list_gambar.dart';

import '../../model/product_model.dart';
import 'kode_pembayaran.dart';

class CheckoutShopPage extends StatefulWidget {
  CheckoutShopPage(
      {super.key,
      required this.index,
      required this.productCheckout,
      this.quantity});
  final int index;
  final Product productCheckout;
  final int? quantity;
  String metodePembayaran = "";

  @override
  State<CheckoutShopPage> createState() => _CheckoutShopPageState();
}

class _CheckoutShopPageState extends State<CheckoutShopPage> {
  int hargaPengiriman = 10000;
  String radioValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      appBar: AppBar(
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text(
          'Checkout',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset('assets/truck.png'),
                const SizedBox(
                  width: 5,
                ),
                Text('Pengiriman produk',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400))
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.5, right: 14.5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon/event_icon/location.png',
                    color: Colors.black,
                    width: 13,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Alamat Pengiriman',
                            style: poppinsKecil.copyWith(
                                //
                                color: blackColor,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                            'Jl. Mengaling, Celuk, Kec. Sukawati, Kabupaten Gianyar, Bali',
                            style: poppinsKecil.copyWith(
                                color: const Color.fromRGBO(89, 90, 89, 1),
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color.fromRGBO(89, 90, 89, 1),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    // decoration: const BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                      // topRight: Radius.circular(5.0),
                    ),
                    // ),
                    child: Image.network(
                      imageProduct[widget.index],
                      fit: BoxFit.cover,

                      // scale: 1.7,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.productCheckout.nama,
                          style: poppinsKecil.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp ${widget.productCheckout.harga}',
                            // 'Rp 90.0000',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontWeight: FontWeight.w400),
                          ),
                          Text(
                              // '1x',
                              '${widget.quantity} x',
                              style: poppinsKecil.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),

            //PENGIRIMAN
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700)),
                Text('Rp $hargaPengiriman',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text('Akan diterima pada tanggal 30 April - 2 Mei',
                style: poppinsKecil.copyWith(
                    color: const Color.fromRGBO(89, 90, 89, 1),
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 24.h,
            ),

            //PESAN
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pesan',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700)),
                Text('Rp ${widget.productCheckout.harga * widget.quantity!}',
                    textAlign: TextAlign.end,
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400)),
              ],
            ),

            SizedBox(
              height: 24.h,
            ),

            //KODE PROMO
            Text('Kode Promo',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.w700)),
            SizedBox(
              height: 4.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Input Kode',
                  hintStyle: poppinsKecil.copyWith(color: Colors.grey),
                  suffixIcon: Container(
                    height: 36.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      color: secondaryColor,
                    ),
                    // elevation: 5.0,

                    // shadowColor: Colors.green,
                    // borderRadius: BorderRadius.only(
                    //   topRight: Radius.circular(15.0),
                    //   bottomRight: Radius.circular(15.0),
                    // ),
                    child: Image.asset(
                      'assets/icon/vpn_key.png',
                      color: whiteColor,
                    ),
                  ),
                  focusColor: Colors.transparent,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  // border: OutlineInputBorder(
                  //     // borderSide: BorderSide.none,
                  //     borderRadius: BorderRadius.all(Radius.circular(8)))
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: blackColor,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8)))),
            ),
            // TextFormField(
            //   decoration: InputDecoration(
            //       // filled: true,
            //       // enabled: false,
            //       // fillColor: Color.fromRGBO(205, 203, 200, 0.2),
            //       suffixIcon: Icon(
            //         Icons.key_outlined,
            //         size: 14.67,
            //         color: secondaryColor,
            //       ),
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(8)))),
            // ),
            SizedBox(
              height: 24.h,
            ),

            //RINGKASAN PESANAN
            Text('Ringkasan Pesanan',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.w700)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal',
                    style: poppinsKecil.copyWith(
                        color: const Color.fromRGBO(89, 90, 89, 1),
                        fontWeight: FontWeight.w400)),
                Text('Rp ${(widget.productCheckout.harga * widget.quantity!)}',
                    // 'Rp 90.000',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman',
                    style: poppinsKecil.copyWith(
                        color: const Color.fromRGBO(89, 90, 89, 1),
                        fontWeight: FontWeight.w400)),
                Text('Rp $hargaPengiriman',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Promo',
                    style: poppinsKecil.copyWith(
                        color: const Color.fromRGBO(89, 90, 89, 1),
                        fontWeight: FontWeight.w400)),
                Text('-',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700)),
                Text(
                    'Rp ${((widget.productCheckout.harga * widget.quantity!) + hargaPengiriman)}',
                    // 'Rp 100.000',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700)),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            //METODE PEMBAYARAN
            Row(
              children: [
                Image.asset(
                  'assets/icon/paid_dollar.png',
                  width: 20,
                  height: 20,
                  color: blackColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('Metode Pembayaran',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                chooseBankBottomSheet(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 28,
                          width: 37,
                          decoration: BoxDecoration(
                            color:
                                forthColor, // Replace with your desired background color
                            borderRadius: BorderRadius.circular(
                                6.0), // Replace with your desired border radius
                          ),
                          // color: thirdColor,
                          child: Center(
                            child: Text(
                              'TRF',
                              style: poppinsKecil.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                      const SizedBox(
                        width: 6,
                      ),
                      // Text('Transfer Bank',
                      //     style: poppinsKecil.copyWith(
                      //         color: blackColor, fontWeight: FontWeight.w400)),
                      widget.metodePembayaran == ""
                          ? Text(
                              'Transfer Bank',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                              key: Key('label transfer bank'),
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
                  const Icon(Icons.arrow_forward_ios,
                      size: 12, color: Color.fromRGBO(89, 90, 89, 1))
                ],
              ),
            ),
            // metodePembayaran == ""
            //     ? IconButton(
            //         icon: Image.asset(
            //           'assets/icon/event_icon/back.png',
            //           width: 11.w,
            //           height: 11.h,
            //           key: Key('icon untk pilih bank'),
            //         ),
            //         onPressed: () {
            //           chooseBankBottomSheet(context);
            //         },
            //       )
            //     : IconButton(
            //         icon: Image.asset(
            //           'assets/icon/event_icon/radio.png',
            //           width: 11.w,
            //           height: 11.h,
            //           key: Key('icon pilih bank'),
            //         ),
            //         onPressed: () {
            //           chooseBankBottomSheet(context);
            //         },
            //       ),
            SizedBox(
              height: 143.h,
            ),

            //TOTAL PRODUK DAN HARGA
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total (${widget.quantity} Produk)',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Rp ${((widget.productCheckout.harga * widget.quantity!) + hargaPengiriman)}',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),

            //BUTTON BUAT PESANAN
            GestureDetector(
              key: Key('buttonBerhasilBayar'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const KodePembayaranPage()));
                _showMyDialog(context);
                Timer(const Duration(seconds: 3), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KodePembayaranPage(
                        index: widget.index,
                        productBayar: widget.productCheckout,
                        quantity: widget.quantity!,
                        bank: widget.metodePembayaran,
                      ),
                    ),
                  );
                });
              },
              child: Container(
                width: 360.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'Buat Pesanan',
                    style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Center(child: Image.asset('assets/loading.png'));
      },
    );
  }

  Future<void> chooseBankBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        // backgroundColor: const Color.fromRGBO(239, 252, 252, 1),
        // constraints: BoxConstraints(maxHeight: double.infinity),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        // builder: (context) => ChooseBankSheet(
        //   metodePembayaran: metodePembayaran,
        // ),
        builder: (context) => Container(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
              height: 290.h,
              width: 360.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   child: Text('CHOOSE BANK'),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Metode Pembayaran',
                        style: poppinsKecil.copyWith(
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        icon: Image.asset(
                          'assets/icon/event_icon/close.png',
                          width: 11.w,
                          height: 11.h,
                          key: Key('icon close'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Transfer Bank',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400),
                  ),
                  // SizedBox(
                  //   height: 16.h,
                  // ),
                  GestureDetector(
                    key: Key('buttonKodePembayaran'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KodePembayaranPage(
                                    index: widget.index,
                                    productBayar: widget.productCheckout,
                                    quantity: widget.quantity!,
                                    bank: '',
                                  )));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 28,
                                width: 42,
                                decoration: BoxDecoration(
                                  color:
                                      forthColor, // Replace with your desired background color
                                  borderRadius: BorderRadius.circular(
                                      6.0), // Replace with your desired border radius
                                ),
                                // color: thirdColor,
                                child: Center(
                                  child: Text(
                                    'BCA',
                                    style: poppinsKecil.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                            SizedBox(
                              width: 4.h,
                            ),
                            Text(
                              'Bank Central Asia',
                              style: poppinsKecil.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
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
                            })
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 16.h,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 28.h,
                              width: 64.w,
                              decoration: BoxDecoration(
                                color:
                                    forthColor, // Replace with your desired background color
                                borderRadius: BorderRadius.circular(
                                    6.0), // Replace with your desired border radius
                              ),
                              // color: thirdColor,
                              child: Center(
                                child: Text(
                                  'Mandiri',
                                  style: poppinsKecil.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              )),
                          SizedBox(
                            width: 4.h,
                          ),
                          Text(
                            'Bank Mandiri',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontWeight: FontWeight.w400),
                          ),
                        ],
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
                          })
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  InkWell(
                    onTap: () {
                      // _showMyDialog(context);
                      // Timer(const Duration(seconds: 3), () {});
                      Navigator.pop(
                        context,
                      );
                      // _showMyDialog(context);
                      // Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => BerhasilBayarPage()));
                    },
                    child: Container(
                      width: 326.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          'Oke',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
