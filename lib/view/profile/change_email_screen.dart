import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme.dart';

class ChangeEmailScreen extends StatefulWidget {
  const ChangeEmailScreen({super.key});

  @override
  State<ChangeEmailScreen> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF7F5F5),
        leadingWidth: 60,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Batal',
            style: poppinsKecil.copyWith(
              color: blackColor,
              fontSize: 14.sp,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Email',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Simpan',
              style: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              hintText: 'userexample@gmail.com',
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffC6C6C6),
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffC6C6C6),
                ),
              ),
              suffixIcon: const Icon(
                Icons.check,
                color: Color(0xff5E5E5E),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
