import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme.dart';
import 'bottom_sheet_ordernow.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/whatsapp.png',
              height: 24,
              width: 24,
            ),
          ),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.check,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          SizedBox(height: 10.0.h),
                          Text(
                            'Barang berhasil dimasukkan ke keranjang',
                            textAlign: TextAlign.center,
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.shopping_cart_outlined)),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) =>
                      BottomSheetOrderNow(index: index),
                );
              },
              child: Text(
                'Beli Sekarang',
                style: poppinsKecil.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
