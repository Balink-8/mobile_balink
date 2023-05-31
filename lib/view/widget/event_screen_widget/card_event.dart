import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EventDetailScreen(),
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
                      '29 Mei 2023',
                      style: poppinsKecil.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Ogoh - Ogoh',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
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
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Denpasar, Bali',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
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
