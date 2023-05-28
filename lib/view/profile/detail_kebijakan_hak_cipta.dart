import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class KebijakanHakCiptaScreen extends StatelessWidget {
  const KebijakanHakCiptaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        centerTitle: true,
        title: Text(
          'Kebijakan Hak Cipta',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kebijakan Hak Cipta',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Balink adalah Aplikasi mobile yang bertujuan untuk memberikan kemudahan kepada User dalam menemukan Event dan Artikel tentang kebudayaan Lokal Bali serta User juga dapat membeli Produk Lokal disini.',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Latar Belakang aplikasi ini adalah,',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
              Text(
                'Keanekaragaman Budaya Bali. Bali adalah destinasi tempat wisata terpopuler di Indonesia, Bali memiliki keanekaragaman budaya yang unik dan menarik, termasuk seni, musik, tarian, dan tradisi agama. Keanekaragaman ini telah menarik minat wisatawan dari dalam maupun luar negeri untuk berkunjung ke Bali agar dapat mengenal kebudayaan Bali secara langsung.',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Kebutuhan Akses Informasi yang Mudah',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
              Text(
                'Bali memiliki berbagai event budaya dan produk lokal yang menarik, namun sulit bagi wisatawan dan masyarakat lokal untuk menemukan informasi tentang event dan produk lokal tersebut. Dengan adanya aplikasi mobile ini, pengguna dapat dengan mudah mengakses informasi tentang event dan produk lokal Bali di satu tempat yang terintegrasi.',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Potensi Pasar yang Besar.',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
              Text(
                'Wisatawan dari dalam dan luar negeri sangat tertarik untuk mengunjungi Bali, yang memungkinkan adanya potensi pasar yang besar untuk produk lokal Bali dan event budaya Bali. Dengan aplikasi mobile ini, produk lokal Bali dan event budaya Bali dapat diakses oleh lebih banyak wisatawan, sehingga dapat meningkatkan pendapatan pelaku usaha dan komunitas lokal Bali.',
                style: poppinsKecil.copyWith(
                  color: blackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
