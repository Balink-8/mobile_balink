import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

import '../../model/product_model.dart';
import '../shopping/shopping_page/list_gambar.dart';
import '../transaksi/transaksi_widget/tab_bar_navigaton.dart';

class BerhasilBayarPage extends StatefulWidget {
  const BerhasilBayarPage(
      {super.key,
      required this.productBerhasil,
      required this.index,
      required this.quantity,
      required this.bank});
  final Product productBerhasil;
  final int index;
  final int quantity;
  final String bank;

  @override
  State<BerhasilBayarPage> createState() => _BerhasilBayarPageState();
}

class _BerhasilBayarPageState extends State<BerhasilBayarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: blackColor,
        title: Text(
          'Berhasil Dipesan',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      // 'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
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
                      Text(widget.productBerhasil.nama,
                          // 'Kemeja Endek Strait Motif Bali Premium',
                          style: poppinsKecil.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp ${widget.productBerhasil.harga}',
                            // 'Rp 90.0000',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontWeight: FontWeight.w400),
                          ),
                          Text('${widget.quantity}x',
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
            SizedBox(height: 14.h),
            Divider(thickness: 1),
            SizedBox(height: 10.h),
            Text(
              'Ringkasan Pesanan',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  'Rp ${widget.productBerhasil.harga * widget.quantity}',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pengiriman',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  'Rp. 10.000',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  '-',
                  style: poppinsKecil.copyWith(color: Colors.red),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rp ${(widget.productBerhasil.harga * widget.quantity) + 10000}',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Divider(thickness: 1),
            SizedBox(height: 10.h),
            Text(
              'Rincian Pesanan',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nomor Pesanan',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  '577889036123879654',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tanggal Pemesanan',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  '29 April 2023, 6:15 AM',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Metode Pembayaran',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  widget.bank,
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Divider(thickness: 1),
            SizedBox(height: 10.h),
            Text(
              'Status Pembayaran',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.h),
            Center(
              child: Column(
                children: [
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
                ],
              ),
            ),
            SizedBox(height: 230.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TabBarNavigation()),
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
    );
  }
}
