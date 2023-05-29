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
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Image.asset('assets/truck.png'),
                const SizedBox(
                  width: 5,
                ),
                const Text('Pengiriman produk')
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
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Alamat Pengiriman'),
                        Text(
                            'Jl. Mengaling, Celuk, Kec. Sukawati, Kabupaten Gianyar, Bali'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
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
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kemeja Endek Strait Motif Bali Premium'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Rp 90.0000'), Text('1x')],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            // ListTile(
            //   leading: SizedBox(
            //     height: 50,
            //     width: 50,
            //     child: ClipRRect(
            //       // decoration: const BoxDecoration(
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(5.0),
            //         // topRight: Radius.circular(5.0),
            //       ),
            //       // ),
            //       child: Image.network(
            //         'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
            //         fit: BoxFit.cover,

            //         // scale: 1.7,
            //       ),
            //     ),
            //   ),
            //   title: const Text('Kemeja Endek Strait Motif Bali Premium'),
            //   subtitle: const Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Rp 90.000'),
            //       Text('1x'),
            //     ],
            //   ),
            // ),

            //PENGIRIMAN
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman'),
                Text('Rp 10.000'),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Akan diterima pada tanggal 30 April - 2 Mei',
            ),
            const SizedBox(
              height: 24,
            ),

            //PESAN
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pesan'),
                Row(
                  children: [
                    Text('Opsional'),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Rp 100.000',
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 4,
            ),

            //KODE PROMO
            const Text(
              'Kode Promo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
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
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            const SizedBox(
              height: 24,
            ),

            //RINGKASAN PESANAN
            const Text(
              'Ringkasan Pesanan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('Rp 90.000'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman'),
                Text('Rp 10.000'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Promo'),
                Text('-'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text('Rp 100.000'),
              ],
            ),
            SizedBox(
              height: 20,
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
                const Text('Metode Pembayaran')
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
                          padding: EdgeInsets.all(4.0),
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
                    const Text('Transfer Bank'),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            // SizedBox(
            //   height: 80.h,
            // ),

            //TOTAL PRODUK DAN HARGA
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total (1 Produk)'),
                Text(
                  'Rp 100.000',
                  style: TextStyle(fontWeight: FontWeight.bold),
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
