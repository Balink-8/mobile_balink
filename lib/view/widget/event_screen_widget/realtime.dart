import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../config/theme.dart';

class RealTimeScreen extends StatefulWidget {
  const RealTimeScreen({super.key});

  @override
  State<RealTimeScreen> createState() => _RealTimeScreentate();
}

class _RealTimeScreentate extends State<RealTimeScreen> {
  String currentTime = '';

  @override
  void initState() {
    super.initState();
    getCurrentTime();
  }

  void getCurrentTime() {
    String formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
    setState(() {
      currentTime = formattedTime;
    });
    // Update jam setiap detik
    Future.delayed(Duration(seconds: 1), getCurrentTime);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      currentTime,
      style: poppinsKecil.copyWith(
          fontSize: 24.sp, fontWeight: FontWeight.w400, color: blackColor),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String currentDate = '';

  @override
  void initState() {
    super.initState();
    getCurrentDate();
  }

  void getCurrentDate() {
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(DateTime.now());
    setState(() {
      currentDate = formattedDate;
    });

    Future.delayed(Duration(seconds: 1), getCurrentDate);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      currentDate,
      style: poppinsKecil.copyWith(
          fontSize: 24.sp, fontWeight: FontWeight.w400, color: blackColor),
    );
  }
}
