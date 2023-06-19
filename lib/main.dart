import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/splashscreen.dart';
import 'package:mobile_balink/view_model/artikel_provider.dart';
import 'package:mobile_balink/view_model/event_provider.dart';
import 'package:mobile_balink/view_model/login_provider.dart';
import 'package:mobile_balink/view_model/product_provider.dart';
import 'package:mobile_balink/view_model/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => EventProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ArtikelProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (_, child) {
          return const MaterialApp(
            title: 'Balink',
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
