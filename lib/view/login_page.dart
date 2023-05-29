import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/lupa_psw.dart';
import 'package:mobile_balink/view/register_page.dart';
import 'package:mobile_balink/view/widget/bottom_navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 40.h),
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
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp, color: blackColor),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username@gmail.com',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'Password',
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp, color: blackColor),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username@gmail.com',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LupaPasswordScreen()));
                          },
                          child: Text(
                            'Lupa Password ?',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp, color: secondaryColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavbarBawah()));
                      },
                      child: Container(
                        width: 360.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: poppinsKecil.copyWith(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun? ',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp, color: secondaryColor),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
