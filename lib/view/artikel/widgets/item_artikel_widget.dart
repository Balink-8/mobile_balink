import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme.dart';
import '../detail_artikel_screen.dart';

class ItemArtikelWidget extends StatelessWidget {
  const ItemArtikelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DetailArtikelScreen();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xffCBC6BE),
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: SizedBox(
            height: 125.h,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/festival.png',
                    scale: 0.7.r,
                  ),
                  SizedBox(width: 4.w),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ogoh - Ogoh',
                          style: poppinsKecil.copyWith(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: 180.w,
                          child: Text(
                            'Festival Ogoh-ogoh di Bali merupakan perayaan yang bermakna religius dan memiliki tujuan tertentu. Ogoh-ogoh adalah patung raksasa yang dibuat dari anyaman bambu, kertas, dan bahan-bahan lainnya. Patung ini melambangkan roh jahat atau setan dalam mitologi Hindu Bali. Festival ini diadakan untuk mengusir roh-roh jahat tersebut sebelum Hari Raya Nyepi dimulai, yang merupakan hari kesunyian dan meditasi bagi umat Hindu Bali.',
                            style: poppinsKecil.copyWith(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
