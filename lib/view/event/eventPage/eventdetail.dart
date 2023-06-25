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
import 'package:url_launcher/url_launcher.dart';
import '../../../view_model/event_provider.dart';

class EventDetailScreen extends StatefulWidget {
  final Event? eventData;
  const EventDetailScreen({super.key, required this.eventData});

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => Provider.of<EventProvider>(context, listen: false).getEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        key: const Key('appbarScreenDetail'),
      ),
      body: SafeArea(
        key: const Key('screenEventDetail'),
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
                    key: const Key('gambarEvent'),
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
                    key: const Key('textNamaEvent'),
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
                      key: const Key('iconLokasi'),
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
                      key: const Key('textLokasi'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  key: const Key('columnTiket'),
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
                            key: const Key('iconTiket'),
                          ),
                        ),
                        Text(
                          'Ticket',
                          style: poppinsKecil.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                          key: const Key('texTiket'),
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
                        key: const Key('textHarga'),
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
                  key: const Key('tanggalDanWaktu'),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: CardCalendar(eventData: widget.eventData!)),
                    Expanded(child: CardClock(eventData: widget.eventData!)),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  key: const Key('layoutTentangEvent'),
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/net.png',
                      width: 10.w,
                      height: 13.h,
                      key: const Key('iconNet'),
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
                      key: const Key('labelTentangEvent'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                // GET DATA DARI ARTIKEL
                SizedBox(
                  height: 100.h,
                  child: CardTentangEvent(
                    eventData: widget.eventData!,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  key: const Key('lokasiEventMaps'),
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
                      'Detail Lokasi',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: blackColor),
                      key: const Key('label lokasi'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () async {
                    Uri mapsUrl = Uri.parse(
                      widget.eventData!.linkLokasi,
                    );
                    await launchUrl(mapsUrl);
                  },
                  child: Container(
                    key: const Key('screenMaps'),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: whiteColor,
                        border: Border.all(color: secondaryColor)),
                    alignment: Alignment.center,
                    width: 328.w,
                    height: 40.h,
                    child: Text(
                      'Arahkan Saya Ke Lokasi Destinasi',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor),
                      key: const Key('labelTextDestiinasi'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                BsTicket(
                  key: const Key('buttomsheetPembelianTiket'),
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
