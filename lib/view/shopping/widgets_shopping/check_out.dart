import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (newBool) {
              setState(() {
                isChecked = newBool;
              });
            },
          ),
          Text(
            'Semua',
            style: poppinsKecil.copyWith(
                fontWeight: FontWeight.w400, color: Colors.black),
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            'Total',
            style: poppinsKecil.copyWith(
                fontWeight: FontWeight.w400, color: Colors.black),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            'Rp. 100.000',
            style: poppinsKecil.copyWith(
                fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(
            width: 16.w,
          ),
          Container(
            width: 100.w,
            height: 50.h,
            decoration: BoxDecoration(color: secondaryColor),
            child: Center(
              child: Text(
                'Checkout (1)',
                style: poppinsKecil.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
