import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme.dart';
import 'check_out.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          leadingWidth: 32.w,
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xffffffff),
          title: SizedBox(
            height: 40.h,
            child: Row(
              children: [
                Text(
                  'Keranjang Saya (1)',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                SizedBox(
                  width: 120.w,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ubah',
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1597633125184-9fd7e54f0ff7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
                      fit: BoxFit.cover,
                      width: 100.w,
                      height: 100.h,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tas Tangan Wanita Kualitas Premium',
                              style: poppinsKecil.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              'Rp. 90.000',
                              style: poppinsKecil.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.white30),
                                  child: Center(
                                    child: Text(
                                      '-',
                                      style: poppinsKecil.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.white30),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: poppinsKecil.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.white30),
                                  child: Center(
                                    child: Text(
                                      '+',
                                      style: poppinsKecil.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.h,
                                ),
                                Text(
                                  'tersisa 30 buah',
                                  style: poppinsKecil.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Gratis Ongkir dengan minimal belanja Rp100rb+ s/d Rp200rb',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      overflow: TextOverflow.clip),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CheckOut(),
    );
  }
}
