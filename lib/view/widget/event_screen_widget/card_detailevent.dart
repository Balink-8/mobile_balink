import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';

class DetailEv extends StatelessWidget {
  const DetailEv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: putihColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Deskripsi',
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w700, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Festival Ogoh-ogoh adalah acara tradisional yang diadakan setiap tahun di Bali pada malam sebelum Hari Nyepi. Ogoh-ogoh adalah patung raksasa yang dibuat dari bambu, kertas, dan bahan-bahan lainnya yang mewakili makhluk jahat atau roh jahat dalam mitologi Bali',
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
