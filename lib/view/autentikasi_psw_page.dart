import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/reset_psw.dart';
import 'package:pinput/pinput.dart';

class AutenticationResetPswPage extends StatefulWidget {
  const AutenticationResetPswPage({super.key});

  @override
  State<AutenticationResetPswPage> createState() =>
      _AutenticationResetPswPageState();
}

class _AutenticationResetPswPageState extends State<AutenticationResetPswPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Forgot Password',
          style: poppinsKecil.copyWith(
              color: blackColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/lupa_psw.png'),
                SizedBox(height: 20.h),
                Text(
                  'Masukkan kode verifikasi',
                  style: poppinsKecil.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Kode verifikasi akan kami kirimkan melalui email',
                  style:
                      poppinsKecil.copyWith(color: blackColor, fontSize: 12.sp),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'useremail@gmail.com',
                      style: poppinsKecil.copyWith(
                          color: blackColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ', Silahkan cek kotak masuk',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontSize: 12.sp),
                    ),
                  ],
                ),
                Text(
                  'dan spam email anda',
                  style:
                      poppinsKecil.copyWith(color: blackColor, fontSize: 12.sp),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Pinput(
                      length: 6,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: PinTheme(
                        height: 40.h,
                        width: 40.w,
                        textStyle: poppinsKecil.copyWith(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                            width: 1.w,
                          ),
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        height: 40.h,
                        width: 40.w,
                        textStyle: poppinsKecil.copyWith(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  'Tunggu dalam 60 detik untuk mengulang',
                  style:
                      poppinsKecil.copyWith(color: blackColor, fontSize: 12.sp),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResetPswPage()));
                    },
                    child: const Text('testing saja nanti button ini dihapus'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
