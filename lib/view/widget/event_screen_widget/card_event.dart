import 'package:flutter/material.dart';
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
      key: Key('buttonEventDetailScreen'),
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
                key: Key('gambar event'),
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/icon/event_icon/dummy/g1.png',
                  width: 64,
                  height: 64,
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
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
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: Key('text tanggal'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  eventData.nama,
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                  key: const Key('text nama event'),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/location.png',
                      width: 10,
                      height: 13,
                      key: Key('icon lokasi'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      eventData.lokasi,
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: Key('text lokasi'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
