import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_aboutEvent.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_calendar.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_clock.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_detailevent.dart';

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
                    width: 310.w,
                    height: 167.h,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Ogoh-Ogoh',
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: blackColor),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/icon/event_icon/ticket.png',
                            width: 13,
                            height: 10,
                          ),
                        ),
                        Text(
                          'Ticket',
                          style: poppinsKecil.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Rp 50.000 - 120.000',
                        style: poppinsKecil.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const DetailEv(),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardCalendar(),
                    SizedBox(
                      width: 10,
                    ),
                    cardClock(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/net.png',
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
                const CardTentangEvent(),
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
                ),
                const bsTicket()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
