import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_event.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Stack(
              children: [
                Image.asset('assets/laut.png', width: 360.w, height: 150),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          '12 : 22',
                          style: poppinsKecil.copyWith(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Senin, 29 Mei 2023',
                          style: poppinsKecil.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 600.h,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return CardEvent();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },
                    itemCount: 5),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
