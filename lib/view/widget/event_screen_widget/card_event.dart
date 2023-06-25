import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';
import '../../../model/event_model.dart';

class CardEvent extends StatelessWidget {
  final Event eventData;
  const CardEvent({
    super.key,
    required this.eventData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('buttonEventDetailScreen'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailScreen(eventData: eventData),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: putihColor,
        shadowColor: abuColor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                key: const Key('gambar event'),
                borderRadius: BorderRadius.circular(10.0),
                child: SizedBox(
                  height: 87.h,
                  width: 94.w,
                  child: Image.network(
                    'https://www.rentalmobilbali.net/wp-content/uploads/2016/05/10-Tempat-Wisata-Favorit-Wisatawan-Indonesia-Di-Bali-Unggulan.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: putihColor,
                  shadowColor: blackColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      eventData.tanggalMulai,
                      style: poppinsKecil.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('text tanggal'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  eventData.nama,
                  style: poppinsKecil.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: const Key('textNamaEvent'),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/location.png',
                      width: 10.w,
                      height: 13.h,
                      key: const Key('icon lokasi'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      eventData.lokasi,
                      style: poppinsKecil.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('text lokasi'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
