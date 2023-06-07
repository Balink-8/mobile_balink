import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        return MaterialApp(
          title: 'Balink',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          )),
          debugShowCheckedModeBanner: false,
<<<<<<< HEAD
          home: LoginScreen(),
=======
          home: const LoginScreen(),
>>>>>>> 9fc870faf05fd37595f99b67097cc6bc767cfb4b
        );
      },
      // child: LoginScreen(),
    );
  }
}
