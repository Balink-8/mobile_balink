import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/ubah_password_berhasil_page.dart';

class ResetPswPage extends StatefulWidget {
  const ResetPswPage({super.key});

  @override
  State<ResetPswPage> createState() => _ResetPswPageState();
}

class _ResetPswPageState extends State<ResetPswPage> {
  final formkey = GlobalKey<FormState>();

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool newPassNotEmpty = false;
  bool confirmPassNotEmpty = false;

  bool showPassword = true;
  bool isValidated = true;

  setEnableButton() {
    setState(() {
      if (newPassNotEmpty && confirmPassNotEmpty) {
        isValidated = false;
      } else {
        isValidated = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: const Key('appbar'),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Ubah Password',
          key: const Key('ubahPassword'),
          style: poppinsKecil.copyWith(
              color: blackColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        key: const Key('screenResetPsw'),
        padding: const EdgeInsets.fromLTRB(10, 30, 20, 20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password baru',
                key: const Key('passwordBaru'),
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Text(
                'Buat password yang kuat  untuk akun dengan email useremail@gmail.com',
                key: const Key('deskripsi'),
                style: poppinsKecil.copyWith(color: blackColor),
              ),
              SizedBox(height: 20.h),
              Text(
                'Password baru',
                key: const Key('passwordBaru'),
                style: poppinsKecil.copyWith(color: blackColor),
              ),
              TextFormField(
                key: const Key('textfieldPasswordBaru'),
                onChanged: (v) {
                  setState(() {
                    if (v.isNotEmpty) {
                      newPassNotEmpty = true;
                    } else {
                      newPassNotEmpty = false;
                    }
                    setEnableButton();
                  });
                },
                controller: newPasswordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Masukkan Password';
                  } else if (v.length < 8) {
                    return 'Password tidak boleh kurang dari 8';
                  }
                  return null;
                },
                obscureText: showPassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: secondaryColor,
                    size: 24,
                  ),
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
                          ? Icon(
                              Icons.visibility,
                              color: secondaryColor,
                              key: const Key('iconVisibilityOn'),
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: secondaryColor,
                              key: const Key('iconVisibilityOff'),
                            )),
                  hintText: 'Masukkan Password Baru',
                  hintStyle: poppinsKecil.copyWith(
                      color: Colors.grey, fontSize: 12.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.w)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: secondaryColor,
                  )),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Confirm password baru',
                key: const Key('confirmPasswordBaru'),
                style: poppinsKecil.copyWith(color: blackColor),
              ),
              TextFormField(
                key: const Key('textfieldConfirmPasswordBaru'),
                onChanged: (v) {
                  setState(() {
                    if (v.isNotEmpty) {
                      confirmPassNotEmpty = true;
                    } else {
                      confirmPassNotEmpty = false;
                    }
                    setEnableButton();
                  });
                },
                controller: confirmPasswordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Masukkan Password';
                  } else if (v.length < 8) {
                    return 'Password tidak boleh kurang dari 8';
                  }
                  return null;
                },
                obscureText: showPassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: secondaryColor,
                    size: 24,
                  ),
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
                          ? Icon(
                              Icons.visibility,
                              color: secondaryColor,
                              key: const Key('iconVisibilityOn'),
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: secondaryColor,
                              key: const Key('iconVisibilityOff'),
                            )),
                  hintText: 'Masukkan Password Baru',
                  hintStyle: poppinsKecil.copyWith(
                      color: Colors.grey, fontSize: 12.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.w)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: secondaryColor,
                  )),
                ),
              ),
              SizedBox(height: 30.h),
              buttonResetPass(context, isValidated),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonResetPass(BuildContext context, bool enable) {
    return enable
        ? Container(
            key: const Key('buttonResetPass'),
            width: 360.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Selanjutnya',
                key: const Key('selanjutnya'),
                style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
        : GestureDetector(
          key: Key('buttonResetPsw'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BerhasilUbahPsw()));
            },
            child: Container(
              key: const Key('buttonResetPass'),
              width: 360.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Selanjutnya',
                  key: const Key('selanjutnya'),
                  style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
  }
}
