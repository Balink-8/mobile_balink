import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/checkout/upload_bukti_pembayaran.dart';

import '../../model/product_model.dart';

class KodePembayaranPage extends StatefulWidget {
  const KodePembayaranPage(
      {super.key,
      required this.productBayar,
      required this.quantity,
      required this.index,
      required this.bank});

  final Product productBayar;
  final int quantity;
  final int index;
  final String bank;

  @override
  State<KodePembayaranPage> createState() => _KodePembayaranPageState();
}

class _KodePembayaranPageState extends State<KodePembayaranPage> {
  String metodePembayaran = "";
  int ongkir = 10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: blackColor,
        elevation: 0,
        title: Text(
          'Kode Pembayaran',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.access_time),
                  SizedBox(width: 4.w),
                  Text(
                    'Menunggu untuk pembayaran',
                    style: poppinsKecil.copyWith(
                      color: blackColor,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 6.h),
              // Divider(thickness: 1),
              SizedBox(height: 28.h),
              Text(
                'Total: Rp ${(widget.productBayar.harga * widget.quantity) + ongkir}',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              Text(
                'Pembayaran dalam 24 jam sebelum No. Virtual Account  expired',
                style: poppinsKecil.copyWith(
                  color: const Color.fromRGBO(89, 90, 89, 1),
                ),
              ),
              SizedBox(height: 36.h),

              Text(
                'No. Virtual Account',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Container(
                // padding: EdgeInsets.only(bottom: 16),
                height: 108.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(242, 243, 242, 1)),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        // 'Bank Central Asia',
                        widget.bank,
                        style: poppinsKecil.copyWith(color: blackColor),
                      ),
                    ),
                    Text(
                      '2668 8001 9203 8388',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.content_copy,
                          size: 20.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Copy Code',
                          style: poppinsKecil.copyWith(color: blackColor),
                        ),
                      ],
                    ),
                    // Divider(
                    //   thickness: 90.h,
                    // )
                  ],
                ),
              ),
              SizedBox(height: 28.h),
              Text(
                'Bank',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
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
                          'TRF',
                          style: poppinsKecil.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400),
                        ),
                      )),
                  SizedBox(
                    width: 4.h,
                  ),
                  Text(
                    widget.bank,
                    // 'Bank Central Asia',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(height: 250.h),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuktiPembayaranPage(
                                index: widget.index,
                                productMembayar: widget.productBayar,
                                quantity: widget.quantity,
                                bank: widget.bank,
                              )));
                },
                child: Container(
                  width: 360.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    // color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Lihat Pesanan',
                      style: poppinsKecil.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
