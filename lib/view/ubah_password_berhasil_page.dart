import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/login_page.dart';

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
        key: const Key('screenBerhasilUbahPassword'),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/imageskey.png',
                  key: const Key('imageKey'),
                  height: 120.h,
                  width: 120.w,
                ),
                SizedBox(height: 30.h),
                Text(
                  'Password berhasil di ubah',
                  key: const Key('deskripsi'),
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Gunakan password yang baru Anda buat untuk',
                  key: const Key('deskripsi'),
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  'melakukan login kembali. Jangan sebarkan',
                  key: const Key('deskripsi'),
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                Text(
                  'password anda!',
                  key: const Key('deskripsi'),
                  style: poppinsKecil.copyWith(color: blackColor),
                ),
                SizedBox(height: 24.h),
                GestureDetector(
                  key: const Key('buttonBerhasilUbahPass'),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false);
                  },
                  child: Container(
                    key: const Key('buttonKembaliLogin'),
                    width: 360.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In ke Balink',
                        key: const Key('signInBalink'),
                        style:
                            poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                      ),
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
