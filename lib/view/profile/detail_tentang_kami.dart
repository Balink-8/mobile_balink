import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/profile/detail_kebijakan_hak_cipta.dart';
import 'package:mobile_balink/view/profile/detail_ketentuan_layanan.dart';

class DetailTentangKamiScreen extends StatelessWidget {
  const DetailTentangKamiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        centerTitle: true,
        title: Text(
          'Tentang Kami',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: 140.h,
              width: MediaQuery.of(context).size.width,
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.import_contacts,
                                    ),
                                    SizedBox(width: 6.w),
                                    Text(
                                      'Ketentuan Layanan',
                                      style: poppinsKecil.copyWith(
                                          color: blackColor, fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const KetentuanLayananScreen()));
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.w,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 40.h),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.copyright,
                                    ),
                                    SizedBox(width: 6.w),
                                    Text(
                                      'Kebijakan Hak Cipta',
                                      style: poppinsKecil.copyWith(
                                          color: blackColor, fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const KebijakanHakCiptaScreen()));
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.w,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
