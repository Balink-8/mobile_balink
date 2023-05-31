import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventcheckout.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';

class BuyEvent extends StatefulWidget {
  const BuyEvent({super.key});

  @override
  State<BuyEvent> createState() => _OverlayEventState();
}

class _OverlayEventState extends State<BuyEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          '29 Mei 2023',
                          style: poppinsKecil.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: secondaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Ogoh - Ogoh',
                      style: poppinsKecil.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
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
                          'Lokasi Event',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 90,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EventDetailScreen(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'assets/icon/event_icon/close.png',
                    width: 11,
                    height: 11,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BuyNow(),
    );
  }
}

class BuyNow extends StatefulWidget {
  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 190,
          height: 60,
          color: fifthColor,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Total',
                style: poppinsKecil.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Rp 120.000',
                style: poppinsKecil.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EventCo(),
              ),
            );
          },
          child: Container(
              alignment: Alignment.center,
              width: 180.w,
              height: 60,
              color: secondaryColor,
              child: Text(
                'Beli Sekarang',
                style: poppinsKecil.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: fifthColor,
                ),
              )),
        )
      ],
    );
  }
}
