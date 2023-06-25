import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_balink/view/profile/edit_profile_screen.dart';
import 'package:mobile_balink/view/profile/pengaturan_screen.dart';
import 'package:mobile_balink/view/transaksi/transaksi_widget/tab_bar_navigaton.dart';
import 'package:mobile_balink/view_model/user_provider.dart';
import 'package:provider/provider.dart';

import '../../config/theme.dart';
import '../artikel/artikel_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
  void initState() {
    super.initState();
    Future.microtask(
        () => Provider.of<UserProvider>(context, listen: false).getUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text(
          'Profile',
          style: poppinsKecil.copyWith(
            color: const Color(0xff000000),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImageUser(context),
            SizedBox(height: 25.h),
            buildIdentitasUser(),
            SizedBox(height: 25.h),
            buildTransaksiArtikel(),
            buildSetting(context),
          ],
        ),
      ),
    );
  }

  GestureDetector buildImageUser(BuildContext context) {
    return GestureDetector(
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
              height: 260.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Center(
                      child: Text(
                        'Ambil Foto',
                        style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
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
                          fontSize: 14.sp,
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
                          fontSize: 14.sp,
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
                          fontSize: 14.sp,
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
              backgroundImage: const AssetImage('assets/profil.png'),
              radius: 60.r,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'User',
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildIdentitasUser() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Consumer<UserProvider>(builder: (context, prov, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tentang Anda',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                  ),
                ),
                GestureDetector(
                  key: Key('buttonEditProfile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const EditProfileScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Edit',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      prov.getUser.email ?? 'Belum Mengisi Email',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 38.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'No. Hp',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      prov.getUser.noTelepon ?? 'Belum mengisi Nomer HP',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 38.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alamat',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      prov.getUser.alamat ?? 'Belum mengisi Alamat',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.w,
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      }),
    );
  }

  Padding buildTransaksiArtikel() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TabBarNavigation()));
            },
            child: Container(
              height: 100.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'assets/icon/setting_icon/receipt_long.png',
                        scale: 3.r,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Transaksi',
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            key: Key('buttonArtikel'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ArtikelScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 100.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      // width: 40.w,
                      child: Image.asset(
                        'assets/icon/setting_icon/newspaper.png',
                        scale: 3.r,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Artikel',
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSetting(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const PengaturanScreen();
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Container(
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 18.w,
                    child: Image.asset(
                      'assets/icon/setting_icon/settings.png',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Pengaturan',
                    style: poppinsKecil.copyWith(
                      fontSize: 14.sp,
                      color: blackColor,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 18.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
