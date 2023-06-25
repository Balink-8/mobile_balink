import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/artikel/detail_artikel_screen.dart';

class CardTentangEvent extends StatefulWidget {
  final Event eventData;
  const CardTentangEvent({
    super.key,
    required this.eventData,
  });

  @override
  State<CardTentangEvent> createState() => _CardTentangEventState();
}

class _CardTentangEventState extends State<CardTentangEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: const Key('cardArtikel'),
        body: GestureDetector(
          onTap: () {
            // print(widget.eventData.artikelId);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailArtikelScreen(
                  id: int.parse(widget.eventData.artikelId),
                ),
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
                    width: 94.w,
                    height: 87.h,
                  ),
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.eventData.nama,
                    style: poppinsKecil.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                  Text(
                    widget.eventData.artikelId,
                    style: poppinsKecil.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
