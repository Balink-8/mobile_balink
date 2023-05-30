import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({super.key});

  @override
  State<ArtikelScreen> createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  final TextEditingController _searchController = TextEditingController();
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
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0.r),
                  ),
                  borderSide: const BorderSide(
                    color: Color(0xff868686),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0.r),
                  ),
                  borderSide: const BorderSide(
                    color: Color(0xff868686),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff868686),
                ),
                hintText: 'cari artikel di balink',
                hintStyle: poppinsKecil.copyWith(
                  color: const Color(0xff868686),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
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
          );
        },
      ),
    );
  }
}
