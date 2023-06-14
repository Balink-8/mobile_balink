import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/login_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameRegister = TextEditingController();
  TextEditingController noTeleponRegister = TextEditingController();
  TextEditingController passwordRegister = TextEditingController();
  TextEditingController confirmPasswordRegister = TextEditingController();

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120.h,
                width: 400.w,
                color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'REGISTER',
                        maxLines: 2,
                        style: poppinsKecil.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Lakukan Pendaftaran akun agar kamu dapat mengikuti perkembangan kami!',
                        maxLines: 2,
                        style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 70.w,
                ),
              ),
              const SizedBox(height: 30),
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
                          fontSize: 12, color: blackColor),
                    ),
                    Container(
                      width: 320.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
                      child: TextFormField(
                        controller: usernameRegister,
                        decoration: InputDecoration(
                          hintText: 'username / username@gmail.com',
                          hintStyle: poppinsKecil.copyWith(
                              color: Colors.grey, fontSize: 12.sp),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: secondaryColor,
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Nomor Telepon',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    Container(
                      width: 320.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
                      child: TextFormField(
                        controller: noTeleponRegister,
                        decoration: InputDecoration(
                          hintText: '+62',
                          hintStyle: poppinsKecil.copyWith(
                              color: Colors.grey, fontSize: 12.sp),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: secondaryColor,
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Password',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    Container(
                      width: 320.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
                      child: TextFormField(
                        controller: passwordRegister,
                        obscureText: showPassword,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                              onTap: () {
                                if (showPassword) {
                                  setState(() {
                                    showPassword = false;
                                  });
                                } else {
                                  setState(() {
                                    showPassword = true;
                                  });
                                }
                              },
                              child: showPassword
                                  ? Icon(Icons.visibility,
                                      color: secondaryColor)
                                  : Icon(Icons.visibility_off,
                                      color: secondaryColor)),
                          hintText: 'Password',
                          hintStyle: poppinsKecil.copyWith(
                              color: Colors.grey, fontSize: 12.sp),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: secondaryColor,
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Confirm Password',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    Container(
                      width: 320.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
                      child: TextFormField(
                        controller: confirmPasswordRegister,
                        obscureText: showPassword,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                              onTap: () {
                                if (showPassword) {
                                  setState(() {
                                    showPassword = false;
                                  });
                                } else {
                                  setState(() {
                                    showPassword = true;
                                  });
                                }
                              },
                              child: showPassword
                                  ? Icon(Icons.visibility,
                                      color: secondaryColor)
                                  : Icon(Icons.visibility_off,
                                      color: secondaryColor)),
                          hintText: 'Confirm Password',
                          hintStyle: poppinsKecil.copyWith(
                              color: Colors.grey, fontSize: 12.sp),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: secondaryColor,
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                            'REGISTER',
                            style: poppinsKecil.copyWith(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sudah punya akun? ',
                          style: poppinsKecil.copyWith(
                              fontSize: 12, color: secondaryColor),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            'Sign In',
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
      ),
    );
  }
}
