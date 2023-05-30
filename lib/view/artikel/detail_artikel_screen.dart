import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class DetailArtikelScreen extends StatelessWidget {
  const DetailArtikelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: blackColor.withOpacity(0.25),
              ),
            ),
            child: Text(
              'Ogoh - Ogoh',
              style: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/icon/ogoh.png',
                  scale: .8.r,
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding( 
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Judul: Festival Ogoh-ogoh di Bali: Pesta Budaya yang Mempesona Pendahuluan: Bali, pulau dewata yang terkenal dengan keindahan alamnya, juga memiliki kekayaan budaya yang memikat. Salah satu perayaan budaya yang paling menarik di Bali adalah Festival Ogoh-ogoh. Festival ini merupakan perayaan tahunan yang diadakan menjelang Hari Raya Nyepi, yang merupakan tahun baru Saka (kalender Bali). Dalam artikel ini, kita akan menjelajahi Festival Ogoh-ogoh di Bali, mengungkap keindahan dan maknanya yang dalam. Latar Belakang Festival Ogoh-ogoh: Festival Ogoh-ogoh di Bali merupakan perayaan yang bermakna religius dan memiliki tujuan tertentu. Ogoh-ogoh adalah patung raksasa yang dibuat dari anyaman bambu, kertas, dan bahan-bahan lainnya. Patung ini melambangkan roh jahat atau setan dalam mitologi Hindu Bali. Festival ini diadakan untuk mengusir roh-roh jahat tersebut sebelum Hari Raya Nyepi dimulai, yang merupakan hari kesunyian dan meditasi bagi umat Hindu Bali. Prosesi Festival: Festival Ogoh-ogoh diawali dengan pembuatan patung ogoh-ogoh oleh kelompok masyarakat atau banjar setempat.',
                      style: poppinsKecil.copyWith(
                        fontSize: 12.sp,
                        color: blackColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
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
