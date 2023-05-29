import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
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
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
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
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      child: Text(
                        '12 Jan 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: secondaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Title Event',
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
                          'assets/icon/event_icon/location_on.png',
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
            AdultTicket(),
            const SizedBox(
              height: 10,
            ),
            ChildTicket(),
            const SizedBox(
              height: 10,
            ),
            KiddosTicket()
          ],
        ),
      ),
      bottomNavigationBar: BuyNow(),
    );
  }

  Card AdultTicket() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/check_box.png',
                width: 14,
                height: 14,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/confirmation_number.png',
                      width: 13,
                      height: 11,
                      color: thirdColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Dewasa',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
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
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/min.png',
                width: 11,
                height: 11,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '2',
              style: poppinsKecil.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: secondaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/add.png',
                width: 11,
                height: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card ChildTicket() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/check_box_ksg.png',
                width: 14,
                height: 14,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/confirmation_number.png',
                      width: 13,
                      height: 11,
                      color: thirdColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Anak-anak',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Rp 50.000',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/min.png',
                width: 11,
                height: 11,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '2',
              style: poppinsKecil.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: secondaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/add.png',
                width: 11,
                height: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card KiddosTicket() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/check_box_ksg.png',
                width: 14,
                height: 14,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/confirmation_number.png',
                      width: 13,
                      height: 11,
                      color: thirdColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Anak < 2 Tahun',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Rp 0',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/min.png',
                width: 11,
                height: 11,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '2',
              style: poppinsKecil.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: secondaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon/event_icon/add.png',
                width: 11,
                height: 11,
              ),
            ),
          ],
        ),
      ),
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
                builder: (context) => const EventDetailScreen(),
              ),
            );
          },
          child: Container(
              alignment: Alignment.center,
              width: 200,
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
