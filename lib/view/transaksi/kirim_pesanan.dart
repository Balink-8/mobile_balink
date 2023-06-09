import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class KirimPesananPage extends StatefulWidget {
  const KirimPesananPage({super.key});

  @override
  State<KirimPesananPage> createState() => _KirimPesananPageState();
}

class _KirimPesananPageState extends State<KirimPesananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: const Key('screenPesananDikirim'),
        title: Text(
          'Dikirim',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Total',
                  style: poppinsKecil.copyWith(
                      color: const Color.fromRGBO(89, 90, 89, 1)),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  'Rp 100.000',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700, color: blackColor),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text(
                  'Metode pembayaran pilihan',
                  style: poppinsKecil.copyWith(
                      color: const Color.fromRGBO(89, 90, 89, 1)),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  key: const Key('metodePembayaranDikirim'),
                  'Bank Central Asia',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700, color: blackColor),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 14.5, right: 14.5, bottom: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/truck.png',
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                      key: const Key('alamatPemesananDikirim'),
                      'Pesanan Outbond - Denpasar',
                      style: poppinsKecil.copyWith(
                          color: const Color.fromRGBO(89, 90, 89, 1),
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 80.w,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color.fromRGBO(89, 90, 89, 1),
                  )
                ],
              ),
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
                      key: const Key('imageProdukDikirim'),
                      'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
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
                      Text(
                          key: const Key('namaProdukDikirim'),
                          'Kemeja Endek Strait Motif Bali Premium',
                          style: poppinsKecil.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            key: const Key('hargaProdukDikirim'),
                            'Rp 90.0000',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontWeight: FontWeight.w400),
                          ),
                          Text(
                              key: const Key('totalProdukDikirim'),
                              '1x',
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
            const Divider(thickness: 1),
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
                  'Rp. 90.000',
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
                  key: const Key('promoProdukDikirim'),
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
                  key: const Key('totalHargaProdukDikirim'),
                  'Rp. 100.000',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            const Divider(thickness: 1),
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
                  key: const Key('noPesananDikirim'),
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
                  key: const Key('tanggalPemesananDikirim'),
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
                  'Bank Central Asia',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            SizedBox(height: 230.h),
            GestureDetector(
              key: const Key('buttonCancelPesanan'),
              onTap: () {},
              child: Container(
                width: 360.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(134, 134, 134, 1),
                  // color: secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Batalkan Pesanan',
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700, color: whiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
