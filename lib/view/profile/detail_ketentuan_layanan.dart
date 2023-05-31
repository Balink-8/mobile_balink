import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class KetentuanLayananScreen extends StatelessWidget {
  const KetentuanLayananScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        centerTitle: true,
        title: Text(
          'Ketentuan Layanan',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ketentuan Layanan',
              style: poppinsKecil.copyWith(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ketentuan Umun untuk seluruh pengguna!',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              '1. Hubungan Anda dengan Kami',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '2. Persetujuan atas ketentuan',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '3. Perubahan-perubahan terhadapat ketentuan yang ada',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '4. Akun Anda pada Kami',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '5. Pengaksesan dan Penggunaan Layanan Kami oleh Anda',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '6. Hak dan Kekayaan Intelektual',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '7. Konten',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '8. Identitas',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
            Text(
              '9. Dan ketentuan lainnya',
              style: poppinsKecil.copyWith(
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
