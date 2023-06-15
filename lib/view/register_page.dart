import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/login_page.dart';
import 'package:mobile_balink/view_model/login_provider.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController usernameRegister = TextEditingController();
  TextEditingController noTeleponRegister = TextEditingController();
  TextEditingController passwordRegister = TextEditingController();
  TextEditingController confirmPasswordRegister = TextEditingController();

  bool emailNotEmpty = false;
  bool noTelpNotEmpty = false;
  bool passwordNotEmpty = false;
  bool confrimPasswordNotEmpty = false;

  bool showPassword = true;
  bool isValidated = true;

  setEnableButton() {
    setState(() {
      if (emailNotEmpty &&
          noTelpNotEmpty &&
          passwordNotEmpty &&
          confrimPasswordNotEmpty) {
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
          child: Form(
            key: formkey,
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
                SizedBox(height: 30.h),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 70.w,
                  ),
                ),
                SizedBox(height: 30.h),
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
                        onChanged: (v) {
                          setState(() {
                            if (v.isNotEmpty) {
                              emailNotEmpty = true;
                            } else {
                              emailNotEmpty = false;
                            }
                          });
                          setEnableButton();
                        },
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (v) {
                          if (v == null || v.isEmpty) {
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
                      SizedBox(height: 12.h),
                      Text(
                        'Nomor Telepon',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.h, color: blackColor),
                      ),
                      TextFormField(
                        onChanged: (v) {
                          setState(() {
                            if (v.isNotEmpty) {
                              noTelpNotEmpty = true;
                            } else {
                              noTelpNotEmpty = false;
                            }
                          });
                          setEnableButton();
                        },
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Masukkan Nomor HP';
                          } else if (v.length < 8) {
                            return 'Nomor tidak boleh kurang dari 8';
                          } else if (v.length > 13) {
                            return 'Nomor tidak boleh lebih dari 13';
                          }
                          return null;
                        },
                        controller: noTeleponRegister,
                        decoration: InputDecoration(
                          hintText: '081832774922',
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
                      SizedBox(height: 12.h),
                      Text(
                        'Password',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.h, color: blackColor),
                      ),
                      TextFormField(
                        onChanged: (v) {
                          setState(() {
                            if (v.isNotEmpty) {
                              passwordNotEmpty = true;
                            } else {
                              passwordNotEmpty = false;
                            }
                            setEnableButton();
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
                      SizedBox(height: 12.h),
                      Text(
                        'Confirm Password',
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp, color: blackColor),
                      ),
                      TextFormField(
                        onChanged: (v) {
                          if (v.isNotEmpty) {
                            confrimPasswordNotEmpty = true;
                          } else {
                            confrimPasswordNotEmpty = false;
                          }
                          setEnableButton();
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
                      SizedBox(height: 20.h),
                      buttonRegister(context, isValidated),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sudah punya akun? ',
                            style: poppinsKecil.copyWith(
                                fontSize: 12.sp, color: secondaryColor),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
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
      ),
    );
  }

  Widget buttonRegister(BuildContext context, bool enable) {
    register() async {
      String email = usernameRegister.text;
      String password = passwordRegister.text;
      String noTelp = noTeleponRegister.text;
      var pRegister = Provider.of<LoginProvider>(context, listen: false)
          .register(email: email, noTelp: noTelp, password: password);
      bool isSuccesRegister =
          Provider.of<LoginProvider>(context, listen: false).successRegister;
      if (formkey.currentState!.validate()) {
        if (email.isNotEmpty && password.isNotEmpty && noTelp.isNotEmpty) {
          pRegister;
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Berhasil Daftar Akun'),
          ));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Gagal Mendaftar'),
          ));
        }
      }
    }

    return enable
        ? Container(
            width: MediaQuery.of(context).size.width * 1,
            height: 48.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'REGISTER',
                style: poppinsKecil.copyWith(),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              register();
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
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
          );
  }
}
