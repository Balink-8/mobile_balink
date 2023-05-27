import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/event/eventPage/event.dart';
import 'package:mobile_balink/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) {
        return const MaterialApp(
          title: 'Balink',
          debugShowCheckedModeBanner: false,
          // home: LoginScreen(),
          home: EventPage(),
        );
      },
    );
  }
}
