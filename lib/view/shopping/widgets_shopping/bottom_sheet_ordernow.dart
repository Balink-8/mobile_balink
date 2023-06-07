import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme.dart';
import '../shopping_page/list_gambar.dart';

class BottomSheetOrderNow extends StatelessWidget {
  const BottomSheetOrderNow({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 259.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  category[index],
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
                          nameCategory[index],
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                        Text(
                          'Rp. 90.000',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Stok : 30 ',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(
                  'Jumlah',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                SizedBox(
                  width: 170.w,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(color: Colors.white30),
                    child: Center(
                      child: Text(
                        '-',
                        style: poppinsKecil.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(color: Colors.white30),
                    child: Center(
                      child: Text(
                        '1',
                        style: poppinsKecil.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(color: Colors.white30),
                    child: Center(
                      child: Text(
                        '+',
                        style: poppinsKecil.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 328.w,
              height: 35.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                ),
                child: Text(
                  'Beli Sekarang',
                  style: poppinsKecil.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
