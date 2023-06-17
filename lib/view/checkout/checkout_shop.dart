import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/checkout/berhasil_bayar.dart';
import 'package:mobile_balink/view/checkout/choose_bank.dart';
import 'package:mobile_balink/view/shopping/shopping_page/list_gambar.dart';

class CheckoutShopPage extends StatelessWidget {
  const CheckoutShopPage({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      appBar: AppBar(
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
                      category[index],
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
                      Text(nameCategory[index],
                          style: poppinsKecil.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp 90.0000',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontWeight: FontWeight.w400),
                          ),
                          Text('1x',
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
                Text('Rp 10.000',
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
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Color.fromRGBO(89, 90, 89, 1),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text('Rp 100.000',
                textAlign: TextAlign.end,
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.w400)),
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
                Text('Rp 90.000',
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
                Text('Rp 10.000',
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
                Text('Rp 100.000',
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
                      Text('Transfer Bank',
                          style: poppinsKecil.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios,
                      size: 12, color: Color.fromRGBO(89, 90, 89, 1))
                ],
              ),
            ),
            SizedBox(
              height: 143.h,
            ),
            // SizedBox(
            //   height: 80.h,
            // ),

            //TOTAL PRODUK DAN HARGA
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total (1 Produk)',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Rp 100.000',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BerhasilBayarPage()));
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

            //COMMAND CANCEL CODE USED LIST TILE
            // const ListTile(
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Pengiriman'),
            //       Text('Rp. 10.000'),
            //     ],
            //   ),
            //   subtitle: Text('Akan diterima pada tanggal 30 April - 2 Mei'),
            // ),
            // const ListTile(
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Pesan'),
            //       Row(
            //         children: [
            //           Text('Opsional'),
            //           SizedBox(
            //             width: 8,
            //           ),
            //           Icon(
            //             Icons.arrow_forward_ios,
            //             size: 12,
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            //   subtitle: Text(
            //     'Rp. 100.000',
            //     textAlign: TextAlign.end,
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Future<dynamic> chooseBankBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      // backgroundColor: const Color.fromRGBO(239, 252, 252, 1),
      // constraints: BoxConstraints(maxHeight: double.infinity),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (context) => const ChooseBankSheet(),
    );
  }
}
