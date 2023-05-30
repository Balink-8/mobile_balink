import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutShopPage extends StatelessWidget {
  const CheckoutShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Row(
              children: [
                Image.asset('assets/truck.png'),
                const SizedBox(
                  width: 5,
                ),
                Text('Pengiriman produk',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w400))
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.5, right: 14.5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon/event_icon/location_on.png',
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
                                fontSize: 12,
                                color: blackColor,
                                fontWeight: FontWeight.w400)),
                        Text(
                            'Jl. Mengaling, Celuk, Kec. Sukawati, Kabupaten Gianyar, Bali',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
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
            const SizedBox(
              height: 24,
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
                      Text('Kemeja Endek Strait Motif Bali Premium',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              color: blackColor,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp 90.0000',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
                                color: blackColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text('1x',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12,
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
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w700)),
                Text('Rp 10.000',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text('Akan diterima pada tanggal 30 April - 2 Mei',
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    color: const Color.fromRGBO(89, 90, 89, 1),
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 24,
            ),

            //PESAN
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pesan',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w700)),
                Row(
                  children: [
                    Text('Opsional',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
                            color: const Color.fromRGBO(89, 90, 89, 1),
                            fontWeight: FontWeight.w400)),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color.fromRGBO(89, 90, 89, 1),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text('Rp 100.000',
                textAlign: TextAlign.end,
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    color: blackColor,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 4,
            ),

            //KODE PROMO
            Text('Kode Promo',
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    color: blackColor,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 4.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Input Kode',

                  // filled: true,
                  // enabled: false,
                  // fillColor: Color.fromRGBO(205, 203, 200, 0.2),
                  suffixIcon: Icon(
                    Icons.key_outlined,
                    size: 18,
                    color: secondaryColor,
                    // color: Colors.white,
                  ),
                  suffix: Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  focusColor: Colors.transparent,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
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
            const SizedBox(
              height: 24,
            ),

            //RINGKASAN PESANAN
            Text('Ringkasan Pesanan',
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    color: blackColor,
                    fontWeight: FontWeight.w700)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: const Color.fromRGBO(89, 90, 89, 1),
                        fontWeight: FontWeight.w400)),
                Text('Rp 90.000',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: const Color.fromRGBO(89, 90, 89, 1),
                        fontWeight: FontWeight.w400)),
                Text('Rp 10.000',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Promo',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: const Color.fromRGBO(89, 90, 89, 1),
                        fontWeight: FontWeight.w400)),
                Text('-',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w700)),
                Text('Rp 100.000',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            SizedBox(
              height: 20.h,
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
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w700))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
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
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                            child: Text(
                              'TRF',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12,
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )),
                    const SizedBox(
                      width: 6,
                    ),
                    Text('Transfer Bank',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
                            color: blackColor,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios,
                    size: 12, color: Color.fromRGBO(89, 90, 89, 1))
              ],
            ),
            SizedBox(
              height: 40.h,
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
                      fontSize: 12,
                      color: blackColor,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Rp 100.000',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      color: blackColor,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),

            //BUTTON BUAT PESANAN
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     // context,
                //     // MaterialPageRoute(
                //     //     builder: (context) => ())
                //     )
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
            SizedBox(
              height: 20.h,
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
}
