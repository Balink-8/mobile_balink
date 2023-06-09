import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class KebijakanPrivasiScreen extends StatelessWidget {
  const KebijakanPrivasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Kebijakan Privasi',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kebijakan Privasi',
              style: poppinsKecil.copyWith(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Terakhir diperbaruhi : 27 Mei 2023',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Selamat datang di Balink. Kebijakan Privasi ini berlaku untuk layanan Balink "Platform", yang mencangkup aplikasi, situs web, perangkat lunak, dan layanan terkait dengan Balink yang diakses melalui platform atau perangkat apa pun. Platform ini disediakan dan dikendalikan oleh Balink dengan alamat di Indonesia.',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 14.h),
            Text(
              'Kami memiliki komitmen untuk melindungi dan menghormati privasi Anda. Kebijakan ini menjelaskan cara kami untuk mengumpulkan, menggunakan, membagikan, dan memproses informasi pribadi pengguna. Jika Anda tidak setuju dengan kebijakan yang telah kami buat, Anda sebaiknya tidak menggunakan platform ini.',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
