import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/profile/pengaturan_screen.dart';
import 'package:mobile_balink/view/profile/profile_screen.dart';

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
          home: PengaturanScreen(),
        );
      },
      // child: LoginScreen(),
    );
  }
}
