import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/artikel_model.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/artikel/artikel_screen.dart';

class CardTentangEvent extends StatelessWidget {
  final Event eventData;
  const CardTentangEvent({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    int artikel_id;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArtikelScreen(),
          ),
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/logo.png',
                width: 94,
                height: 87,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                eventData.nama,
                style: poppinsKecil.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              ),
              Text(
                eventData.artikelId,
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
