import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/checkout/kode_pembayaran.dart';

class ChooseBankSheet extends StatelessWidget {
  const ChooseBankSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
      height: 249.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Center(
          //   child: Text('CHOOSE BANK'),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Metode Pembayaran',
                style: poppinsKecil.copyWith(
                    color: blackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              Icon(Icons.cancel)
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            'Transfer Bank',
            style: poppinsKecil.copyWith(
                color: blackColor, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KodePembayaranPage()));
            },
            child: Row(
              children: [
                Container(
                    height: 28,
                    width: 42,
                    decoration: BoxDecoration(
                      color:
                          forthColor, // Replace with your desired background color
                      borderRadius: BorderRadius.circular(
                          6.0), // Replace with your desired border radius
                    ),
                    // color: thirdColor,
                    child: Center(
                      child: Text(
                        'BCA',
                        style: poppinsKecil.copyWith(
                            color: blackColor, fontWeight: FontWeight.w400),
                      ),
                    )),
                SizedBox(
                  width: 4.h,
                ),
                Text(
                  'Bank Central Asia',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Container(
                  height: 28,
                  width: 64,
                  decoration: BoxDecoration(
                    color:
                        forthColor, // Replace with your desired background color
                    borderRadius: BorderRadius.circular(
                        6.0), // Replace with your desired border radius
                  ),
                  // color: thirdColor,
                  child: Center(
                    child: Text(
                      'Mandiri',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontWeight: FontWeight.w400),
                    ),
                  )),
              SizedBox(
                width: 4.h,
              ),
              Text(
                'Bank Mandiri',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
