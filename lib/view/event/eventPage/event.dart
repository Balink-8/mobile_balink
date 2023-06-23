import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/card_event.dart';
import 'package:mobile_balink/view/widget/event_screen_widget/realtime.dart';
import 'package:mobile_balink/view_model/event_provider.dart';
import 'package:provider/provider.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
      body: SafeArea(
        key: Key('safearea screen event'),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(key: Key('columnGambardanListEvent'), children: [
            Stack(
              children: [

                Image.network(
                  'https://www.rentalmobilbali.net/wp-content/uploads/2016/05/10-Tempat-Wisata-Favorit-Wisatawan-Indonesia-Di-Bali-Unggulan.jpg',
                  width: 360.w,
                  height: 150.h,
                  fit: BoxFit.cover,
                  key: Key('gambar'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Column(
                      children: [
                        RealTimeScreen(),
                        SizedBox(
                          height: 8.h,
                        ),
                        Calendar()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Consumer<EventProvider>(
              builder: (context, provEvent, child) {
                final events = provEvent.listEvent;
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 30),
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Event eventData = events[index];
                      return CardEvent(eventData: eventData);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },
                    itemCount: events.length,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
