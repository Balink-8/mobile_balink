import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        leadingWidth: 60,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Batal',
            style: poppinsKecil.copyWith(
              color: blackColor,
              fontSize: 16,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Edit',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontSize: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: Text(
              'Simpan',
              style: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'isi Email';
                  } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Masukkan alamat email yang valid";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: poppinsKecil.copyWith(
                    color: blackColor,
                    fontSize: 20,
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
              SizedBox(height: 20.h),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'isi nomor telpon';
                  } else if (value.length < 10 || value.length > 12) {
                    return 'nomor tidak valid';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                controller: numberController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'No Telepon',
                  labelStyle: poppinsKecil.copyWith(
                    color: blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'XXXXXXXXXXXX',
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
              SizedBox(height: 20.h),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'isi Alamat';
                  }
                  return null;
                },
                keyboardType: TextInputType.streetAddress,
                controller: addressController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  labelStyle: poppinsKecil.copyWith(
                    color: blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Kec. Sukawati, Kabupaten Gianyar, Bali',
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
            ],
          ),
        ),
      ),
    );
  }
}
