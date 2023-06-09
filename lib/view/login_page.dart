// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/session.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/register_page.dart';
import 'package:mobile_balink/view/reset_psw.dart';
import 'package:mobile_balink/view/widget/bottom_navbar.dart';
import 'package:mobile_balink/view_model/login_provider.dart';
import 'package:mobile_balink/view_model/user_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    login() async {
      String username = usernameController.text;
      String password = passwordController.text;
      var model = Provider.of<LoginProvider>(context, listen: false);
      await model.login(email: username, password: password);
      bool isSuccess =
          Provider.of<LoginProvider>(context, listen: false).successLogin;
      if (isSuccess) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const NavbarBawah()),
            (route) => false);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Berhasil Login'),
        ));
        var user = await Session.getUser();
        var token = await Session.getToken();
        Provider.of<UserProvider>(context, listen: false).setToken(token);
        Provider.of<UserProvider>(context, listen: false).setUser(user);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email/Password salah'),
        ));
      }
    }

    return Scaffold(
      body: SafeArea(
        key: const Key('screenLogin'),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 130.h,
                      width: 400.w,
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                          width: 70.w,
                          key: const Key('logo'),
                        ),
                      )),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email / Username',
                          key: const Key('email'),
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp, color: blackColor),
                        ),
                        Container(
                          key: const Key('textfieldEmail'),
                          width: 320.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.w))),
                          child: TextFormField(
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
                                  borderSide: BorderSide(
                                color: secondaryColor,
                              )),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          'Password',
                          key: const Key('password'),
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp, color: blackColor),
                        ),
                        Container(
                          key: const Key('textfieldPassword'),
                          width: 320.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.w))),
                          child: TextFormField(
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
                                  borderSide: BorderSide(
                                color: secondaryColor,
                              )),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        GestureDetector(
                          onTap: () {
                            login();
                          },
                          child: Container(
                            key: const Key('buttonLogin'),
                            width: 360.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'LOG IN',
                                style: poppinsKecil.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lupa Password? ',
                              key: const Key('lupaPassword'),
                              style: poppinsKecil.copyWith(
                                  fontSize: 12.sp, color: secondaryColor),
                            ),
                            InkWell(
                              onTap: () {
                                const Key('bottomSheetLupaPassword');
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
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
                                                    key: const Key(
                                                        'lupaPassword'),
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
                                                    key: const Key('textReset'),
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
                                              key: const Key('email'),
                                              style: poppinsKecil.copyWith(
                                                color: blackColor,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            Container(
                                              key: const Key('textfieldEmail'),
                                              width: 320.w,
                                              height: 48.h,
                                              decoration: BoxDecoration(
                                                  color: whiteColor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.w))),
                                              child: TextFormField(
                                                controller: usernameController,
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
                                                          borderSide:
                                                              BorderSide(
                                                    color: secondaryColor,
                                                  )),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 40.h),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: GestureDetector(
                                                key: const Key('detector'),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const ResetPswPage()));
                                                },
                                                child: Container(
                                                  key: const Key('buttonReset'),
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
                                                key: Key("buttonLoginKembali"),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  key: const Key(
                                                      'buttonLoginKembali'),
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
                                                  key: const Key(
                                                      'textKamuBelumPunyaAkun'),
                                                  style: poppinsKecil.copyWith(
                                                      fontSize: 12.sp,
                                                      color: secondaryColor),
                                                ),
                                                InkWell(
                                                  key: Key('buttonRegister'),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const RegisterScreen()));
                                                  },
                                                  child: Text(
                                                    'Registrasi',
                                                    key: const Key('register'),
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
                                    );
                                  },
                                );
                              },
                              child: Text(
                                'Reset',
                                key: const Key('reset'),
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
                              key: const Key('belumPunyaAkun'),
                              style: poppinsKecil.copyWith(
                                  fontSize: 12.sp, color: secondaryColor),
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
                ],
              ),
              Consumer<LoginProvider>(builder: (context, prov, child) {
                if (prov.isLoading) {
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: CircularProgressIndicator()),
                    ],
                  );
                } else {
                  const SizedBox.shrink();
                }
                return const SizedBox.shrink();
              })
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
            key: Key('buttonLogin'),
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
