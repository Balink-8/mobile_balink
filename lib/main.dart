import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/shopping/sopping_page/shop_page.dart';

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
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      // child: LoginScreen(),
      child: const ShopScreen(),
    );
  }
}
