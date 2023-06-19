import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/buttomsheet.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_aboutEvent.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_calendar.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_clock.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_detailevent.dart';
import 'package:provider/provider.dart';
import '../../../view_model/event_provider.dart';

class EventDetailScreen extends StatefulWidget {
  final Event? eventData;
  const EventDetailScreen({super.key, required this.eventData});

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
        key: Key('appbar screen detail'),
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
                    key: Key('gambar event'),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.eventData!.nama,
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: blackColor),
                    key: Key('text nama event'),
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
                      key: Key('icon lokasi'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      widget.eventData!.lokasi,
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: blackColor),
                      key: Key('text lokasi'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            'assets/icon/event_icon/ticket.png',
                            width: 13.w,
                            height: 10.h,
                            key: Key('icon tiket'),
                          ),
                        ),
                        Text(
                          'Ticket',
                          style: poppinsKecil.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                          key: Key('text tiket'),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Rp ${widget.eventData!.hargaTiket.toString()}",
                        style: poppinsKecil.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                        key: Key('text harga'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                DetailEv(eventData: widget.eventData!),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardCalendar(eventData: widget.eventData!),
                    cardClock(eventData: widget.eventData!),
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
                      key: Key('icon net'),
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
                      key: Key('label tentang event'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                // GET DATA DARI ARTIKEL
                CardTentangEvent(
                  eventData: widget.eventData!,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/location.png',
                      width: 10.w,
                      height: 13.h,
                      key: Key('icon lokasi'),
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
                      key: Key('label lokasi'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: whiteColor,
                        border: Border.all(color: secondaryColor)),
                    alignment: Alignment.center,
                    width: 328.w,
                    height: 40,
                    child: Text(
                      'Arahkan Saya Ke Lokasi Destinasi',
                      style: poppinsKecil.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor),
                      key: Key('label text lokasi destiinasi'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                bsTicket(
                  key: const Key('buttomsheet pembelian tiket'),
                  eventData: widget.eventData,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
