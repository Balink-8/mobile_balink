import 'package:flutter/material.dart';
import '../../config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransaksiEventPage extends StatefulWidget {
  const TransaksiEventPage({super.key});

  @override
  State<TransaksiEventPage> createState() => _TransaksiEventPageState();
}

class _TransaksiEventPageState extends State<TransaksiEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: whiteColor),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 28, 15, 28),
        child: Column(
          children: [
            Container(
              height: 40.h,
              width: 152.w,
              color: secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
