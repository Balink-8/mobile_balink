import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/profile/pengaturan_screen.dart';
import 'package:mobile_balink/view/profile/profile_screen.dart';
import 'view/transaksi/tab_bar_navigaton.dart';

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
        return MaterialApp(
          title: 'Balink',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          )),
          debugShowCheckedModeBanner: false,
          home: TabBarNavigation(),
        );
      },
      // child: LoginScreen(),
    );
  }
}
