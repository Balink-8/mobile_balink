import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_balink/view/profile/detail_profile_screen.dart';

import '../../config/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F5F5),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImageUser(context),
          SizedBox(height: 25.h),
          buildIdentitasUser(),
          buildTransaksiArtikel(),
          buildSetting(),
        ],
      ),
    );
  }

  GestureDetector buildImageUser(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DetailProfileScreen();
            },
          ),
        );
      },
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage('assets/profil.png'),
              radius: 60.r,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'User',
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildIdentitasUser() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'user@example.com',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'No. Hp',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '0823 1234 5678',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alamat',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Maluku',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTransaksiArtikel() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120.h,
            width: 160.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(
                      'assets/icon/setting_icon/receipt_long.png',
                      scale: 2.r,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Transaksi',
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120.h,
            width: 160.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // width: 40.w,
                    child: Image.asset(
                      'assets/icon/setting_icon/newspaper.png',
                      scale: 2.r,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Artikel',
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildSetting() {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                  child: Image.asset(
                    'assets/icon/setting_icon/settings.png',
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  'Setting',
                  style: poppinsKecil.copyWith(
                    fontSize: 18.sp,
                    color: blackColor,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 25.w,
            ),
          ],
        ),
      ),
    );
  }
}
