import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/register_page.dart';

class LupaPasswordScreen extends StatefulWidget {
  const LupaPasswordScreen({super.key});

  @override
  State<LupaPasswordScreen> createState() => _LupaPasswordScreenState();
}

class _LupaPasswordScreenState extends State<LupaPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 130.h,
              width: 400.w,
              color: secondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Login dan nikmati fitur yang kami sediakan!',
                        maxLines: 2,
                        style: poppinsKecil.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 40.r,
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30.r,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.sp),
            Text(
              'Lupa Password?',
              style: poppinsKecil.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: blackColor),
            ),
            SizedBox(height: 10.h),
            Text(
              'Jangan khawatir, kami akan mengirimkan pesan reset',
              style: poppinsKecil.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w500, color: blackColor),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email atau Username',
                    style:
                        poppinsKecil.copyWith(fontSize: 12, color: blackColor),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username@gmail.com',
                      border: OutlineInputBorder(),
                    ),
                    style: poppinsKecil,
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 48,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Reset Password',
                          style: poppinsKecil.copyWith(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun? ',
                        style: poppinsKecil.copyWith(
                            fontSize: 12, color: secondaryColor),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.bold,
                              color: secondaryColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
