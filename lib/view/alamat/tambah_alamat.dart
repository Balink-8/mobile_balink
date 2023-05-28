import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class TambahAlamat extends StatefulWidget {
  const TambahAlamat({super.key});

  @override
  State<TambahAlamat> createState() => _TambahAlamatState();
}

class _TambahAlamatState extends State<TambahAlamat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        title: Text(
          'Alamat Pengiriman',
          style: poppinsKecil.copyWith(
              color: blackColor, fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 24, 15, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Masukkan Nama'),
            ),
            SizedBox(height: 10.h),
            Text(
              'Email',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Masukkan Email'),
            ),
            SizedBox(height: 10.h),
            Text(
              'No Telepon',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'No Telepon'),
            ),
            SizedBox(height: 10.h),
            Text(
              'Alamat',
              style: poppinsKecil.copyWith(
                  color: blackColor, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Masukkan Alamat Lengkap'),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          width: 330.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Simpan',
              style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
