import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme.dart';
import 'list_gambar.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image.network(
                  category[index],
                  width: 360.h,
                  height: 360.h,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Cari barang di Balink..',
                              filled: true,
                              fillColor: Colors.white,
                              enabled: false,
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Aksi ketika tombol berbagi ditekan
                          },
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Image.asset(
                            'assets/Vector2.png',
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Aksi ketika tombol unduh ditekan
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameCategory[index],
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    'Rp. 90.000',
                    style: poppinsKecil.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    '162 Terjual',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Ongkir',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Image.asset('assets/Vector.png'),
                      ),
                      Text(
                        'Ongkos kirim Rp. 5.000 - Rp. 10.000',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Garansi',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    'Terima pesanan dengan aman atau uang Anda akan kami kembalikan',
                    style: poppinsKecil.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        color: Colors.black38),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
