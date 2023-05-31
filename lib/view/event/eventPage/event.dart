import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/widgetEvent/card_event.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                WeeklyDatePicker(
                  backgroundColor: thirdColor,
                  weekdays: const [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun'
                  ],
                  selectedBackgroundColor: fifthColor,
                  enableWeeknumberText: false,
                  selectedDigitColor: thirdColor,
                  digitsColor: secondaryColor,
                  weekdayTextColor: blackColor,
                  selectedDay: _selectedDay,
                  changeDay: (value) => setState(
                    () {
                      _selectedDay = value;
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CardEvent(),
                const SizedBox(
                  height: 10,
                ),
                const CardEvent(),
                const SizedBox(
                  height: 10,
                ),
                const CardEvent(),
                const SizedBox(
                  height: 10,
                ),
                const CardEvent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
