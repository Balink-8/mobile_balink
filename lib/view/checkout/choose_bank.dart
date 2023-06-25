import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class ChooseBankSheet extends StatefulWidget {
  final String metodePembayaran;
  const ChooseBankSheet({super.key, required this.metodePembayaran});

  @override
  State<ChooseBankSheet> createState() => _ChooseBankSheetState();
}

class _ChooseBankSheetState extends State<ChooseBankSheet> {
  String radioValue = '';
  String metodePembayaran = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      height: 290.h,
      width: 360.w,
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
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon: Image.asset(
                  'assets/icon/event_icon/close.png',
                  width: 11.w,
                  height: 11.h,
                  key: const Key('icon close'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Transfer Bank',
            style: poppinsKecil.copyWith(
                color: blackColor, fontWeight: FontWeight.w400),
          ),
          // SizedBox(
          //   height: 16.h,
          // ),
          GestureDetector(
            key: const Key('buttonKodePembayaran'),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => KodePembayaranPage()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                    ),
                  ],
                ),
                Radio(
                    value: 'Bank Central Asia',
                    groupValue: radioValue,
                    activeColor: blackColor,
                    onChanged: (String? value) {
                      setState(() {
                        radioValue = value ?? '';
                        metodePembayaran = value.toString();
                      });
                    })
              ],
            ),
          ),
          // SizedBox(
          //   height: 16.h,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 28.h,
                      width: 64.w,
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
                  ),
                ],
              ),
              Radio(
                  value: 'Bank Mandiri',
                  groupValue: radioValue,
                  activeColor: blackColor,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value ?? '';
                      metodePembayaran = value.toString();
                    });
                  })
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => BerhasilBayarPage()));
            },
            child: Container(
              width: 326.w,
              height: 35.h,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'Oke',
                  style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
