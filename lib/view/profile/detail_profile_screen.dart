import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_balink/view/profile/change_email_screen.dart';

import '../../config/theme.dart';
import 'change_address_screen.dart';
import 'change_number_screen.dart';

class DetailProfileScreen extends StatefulWidget {
  const DetailProfileScreen({super.key});

  @override
  State<DetailProfileScreen> createState() => _DetailProfileScreenState();
}

class _DetailProfileScreenState extends State<DetailProfileScreen> {
  File? image;
  void pickImage() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        image = file;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F5F5),
        elevation: 0,
        title: Text(
          'Profile',
          style: poppinsKecil.copyWith(
            fontSize: 18.sp,
            color: blackColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0.r),
                  ),
                ),
                builder: (context) {
                  return SizedBox(
                    height: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Center(
                            child: Text(
                              'Ambil Foto',
                              style: poppinsKecil.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Pilih dari Galeri',
                              style: poppinsKecil.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          onTap: () {
                            pickImage();
                          },
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Lihat foto',
                              style: poppinsKecil.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Batal',
                              style: poppinsKecil.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w100,
                                color: const Color(0xff5E5E5E),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffD9D9D9),
                    radius: 60.r,
                    child: Image.asset(
                      'assets/icon/setting_icon/photo_camera.png',
                      scale: 0.8.w,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Ubah Foto',
                    style: GoogleFonts.poppins(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang Anda',
                    style: poppinsKecil.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff5E5E5E),
                    ),
                  ),
                  SizedBox(height: 28.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff5E5E5E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangeEmailScreen();
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'userexample@gmail.com',
                              style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No Telpon',
                        style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff5E5E5E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangeNumberScreen();
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              '0823 1234 5678',
                              style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat',
                        style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff5E5E5E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangeAddressScreen();
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'Maluku',
                              style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15.w,
                            ),
                          ],
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
    );
  }
}
