import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/register_page.dart';
import 'package:mobile_balink/view/reset_psw.dart';
import 'package:mobile_balink/view/widget/bottom_navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailResetPswController = TextEditingController();

  bool usernameNotEmpty = false;
  bool passwordNotEmpty = false;

  bool showPassword = true;
  bool isValidated = true;

  setEnabledButton() {
    setState(() {
      if (usernameNotEmpty && passwordNotEmpty) {
        isValidated = false;
      } else {
        isValidated = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 130.h,
                  width: 400.w,
                  child: Center(
                    child: Image.asset(
                      'assets/logo.png',
                      width: 70.w,
                    ),
                  )),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email / Username',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp, color: blackColor),
                      ),
                      TextFormField(
                        onChanged: (v) {
                          setState(() {
                            if (v.isNotEmpty) {
                              usernameNotEmpty = true;
                            } else {
                              usernameNotEmpty = false;
                            }
                            setEnabledButton();
                          });
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Isi email/username';
                          }
                          bool emailValid = RegExp(
                                  r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                              .hasMatch(v);
                          if (!emailValid) {
                            return 'masukkan format email dengan benar';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Email / Username',
                          hintStyle: poppinsKecil.copyWith(
                              color: Colors.grey, fontSize: 12.sp),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.w)),
                              borderSide: BorderSide(
                                color: secondaryColor,
                              )),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Password',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp, color: blackColor),
                      ),
                      TextFormField(
                        onChanged: (v) {
                          setState(() {
                            if (v.isNotEmpty) {
                              passwordNotEmpty = true;
                            } else {
                              passwordNotEmpty = false;
                            }
                            setEnabledButton();
                          });
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Masukkan Password';
                          } else if (v.length < 8) {
                            return 'Password tidak boleh kurang dari 8';
                          }
                          return null;
                        },
                        controller: passwordController,
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
                          hintText: 'Masukkan Password',
                          hintStyle: poppinsKecil.copyWith(
                              color: Colors.grey, fontSize: 12.sp),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.w)),
                              borderSide: BorderSide(
                                color: secondaryColor,
                              )),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      buttonLogin(context, isValidated),
                      SizedBox(height: 40.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lupa Password? ',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp, color: secondaryColor),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: SizedBox(
                                      height: 420.h,
                                      width: 360.h,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            14, 20, 14, 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Lupa Password?',
                                                    style:
                                                        poppinsKecil.copyWith(
                                                      color: blackColor,
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 6.h),
                                                  Text(
                                                    'Jangan kawatir, kami akan mengirimkan pesan reset.',
                                                    style:
                                                        poppinsKecil.copyWith(
                                                      fontSize: 12.sp,
                                                      color: blackColor,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30.h,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              'Email / Username',
                                              style: poppinsKecil.copyWith(
                                                color: blackColor,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            TextFormField(
                                              controller:
                                                  emailResetPswController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Masukkan Email / Username',
                                                hintStyle:
                                                    poppinsKecil.copyWith(
                                                        color: Colors.grey,
                                                        fontSize: 12.sp),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.w)),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: secondaryColor,
                                                )),
                                              ),
                                            ),
                                            SizedBox(height: 40.h),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const ResetPswPage()));
                                                },
                                                child: Container(
                                                  width: 290.w,
                                                  height: 38.h,
                                                  decoration: BoxDecoration(
                                                    color: secondaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Reset Password',
                                                      style:
                                                          poppinsKecil.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: 290.w,
                                                  height: 38.h,
                                                  decoration: BoxDecoration(
                                                    color: whiteColor,
                                                    border: Border.all(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Login Kembali',
                                                      style:
                                                          poppinsKecil.copyWith(
                                                              color:
                                                                  secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 40.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Kamu belum punya akun? ',
                                                  style: poppinsKecil.copyWith(
                                                      fontSize: 12.sp,
                                                      color: secondaryColor),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const RegisterScreen()));
                                                  },
                                                  child: Text(
                                                    'Registrasi',
                                                    style:
                                                        poppinsKecil.copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                secondaryColor),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Reset',
                              style: poppinsKecil.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: secondaryColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
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
                                      builder: (context) => const RegisterScreen()));
                            },
                            child: Text(
                              'Registrasi',
                              style: poppinsKecil.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: secondaryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonLogin(BuildContext context, bool enable) {
    return enable
        ? Container(
            width: 360.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'LOG IN',
                style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavbarBawah()));
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
                  'LOG IN',
                  style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
  }
}
