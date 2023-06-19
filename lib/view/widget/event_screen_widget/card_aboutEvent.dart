import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/artikel/detail_artikel_screen.dart';
import 'package:mobile_balink/view/artikel/widgets/item_artikel_widget.dart';

class CardTentangEvent extends StatelessWidget {
  const CardTentangEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailArtikelScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/logo.png',
                width: 94.w,
                height: 87.h,
              ),
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
      ),
    );
  }
}
