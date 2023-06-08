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
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    'assets/ogoh.png',
                    width: 310.w,
                    height: 167.h,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Ogoh-Ogoh',
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: blackColor),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/location.png',
                      width: 10.w,
                      height: 13.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Denpasar, Bali',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: blackColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/icon/event_icon/ticket.png',
                            width: 13.w,
                            height: 10.h,
                          ),
                        ),
                        Text(
                          'Ticket',
                          style: poppinsKecil.copyWith(
                              fontSize: 16.sp,
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
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                const DetailEv(),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const cardCalendar(),
                    SizedBox(
                      width: 10.w,
                    ),
                    const cardClock(),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/net.png',
                      width: 10.w,
                      height: 13.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Tentang Event',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: blackColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CardTentangEvent(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/location.png',
                      width: 10.w,
                      height: 13.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Detail Lokasi',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: blackColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
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
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
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
