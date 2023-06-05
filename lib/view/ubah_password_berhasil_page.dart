import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class BerhasilUbahPsw extends StatefulWidget {
  const BerhasilUbahPsw({super.key});

  @override
  State<BerhasilUbahPsw> createState() => _BerhasilUbahPswState();
}

class _BerhasilUbahPswState extends State<BerhasilUbahPsw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/imageskey.png',
                  height: 120.h,
                  width: 120.w,
                ),
                SizedBox(height: 30.h),
                Text(
                  'Password berhasil di ubah',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Gunakan password yang baru Anda buat untuk',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  'melakukan login kembali. Jangan sebarkan',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  'password anda!',
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                SizedBox(height: 24.h),
                Container(
                  width: 360.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In ke Balink',
                      style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
