import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class CardTentangEvent extends StatelessWidget {
  const CardTentangEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: fifthColor,
      shadowColor: secondaryColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/logo.png',
                width: 94.w,
                height: 87.h,
              ),
            ),
          ),
          SizedBox(
            width: 24.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Ogoh - Ogoh',
                style: poppinsKecil.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              ),
              Text(
                'Lets make some happy little...',
                style: poppinsKecil.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
