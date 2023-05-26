import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/ovLayBuyEvent.dart';
import 'package:mobile_balink/view/event/widgetEvent/card_aboutEvent.dart';
import 'package:mobile_balink/view/event/widgetEvent/card_ticket_event.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({super.key});

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/ogoh.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Pagelaran Kolosal Ogoh-Ogoh',
                  style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 15,
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
                      'GWK',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const TicketCard(),
                const SizedBox(
                  height: 15,
                ),
                const DetailEv(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, right: 40, left: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icon/event_icon/calendar_month.png',
                                  width: 11,
                                  height: 12,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Tanggal',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text('12 Jan 2023',
                                style: poppinsKecil.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, right: 40, left: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icon/event_icon/alarm.png',
                                  width: 11,
                                  height: 12,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Waktu',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text('18:00',
                                style: poppinsKecil.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/language.png',
                      width: 10,
                      height: 13,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tentang Event',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CardTentangEvent(),
                const SizedBox(
                  height: 10,
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
                      'Detail Lokasi',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor),
                    child: Text(
                      'Arahkan Saya Ke Lokasi Destinasi',
                      style: poppinsKecil.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: PesanNow(),
    );
  }
}

class DetailEv extends StatelessWidget {
  const DetailEv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: fifthColor,
      shadowColor: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'READ MORE',
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor),
              ))
        ],
      ),
    );
  }
}

class PesanNow extends StatefulWidget {
  const PesanNow({super.key});

  @override
  State<PesanNow> createState() => _PesanNowState();
}

class _PesanNowState extends State<PesanNow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BuyEvent(),
          ),
        );
      },
      child: Container(
        color: secondaryColor,
        alignment: Alignment.center,
        height: 53,
        child: Text(
          'Pesan Sekarang',
          style: poppinsKecil.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700, color: whiteColor),
        ),
      ),
    );
  }
}
