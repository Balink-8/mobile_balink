import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/transaksi/transaksi_widget/tab_bar_navigaton.dart';
import 'package:mobile_balink/view/checkout/berhasil_bayar.dart';
import 'package:mobile_balink/view/checkout/checkout_shop.dart';
import 'package:mobile_balink/view/checkout/upload_bukti_pembayaran.dart';
import 'package:mobile_balink/view/login_page.dart';
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
        return MaterialApp(
          title: 'Balink',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          )),
          debugShowCheckedModeBanner: false,

         

          home: PengaturanScreen(),


        );
      },
      // child: LoginScreen(),
    );
  }
}
