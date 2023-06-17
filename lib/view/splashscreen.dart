import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_balink/config/session.dart';
import 'package:mobile_balink/view/login_page.dart';
import 'package:mobile_balink/view/widget/bottom_navbar.dart';
import 'package:mobile_balink/view_model/user_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  checkLogin() async {
    var user = await Session.getUser();
    var token = await Session.getToken();
    if (token == '') {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false);
      });
    } else {
      Provider.of<UserProvider>(context, listen: false).setUser(user);
      Provider.of<UserProvider>(context, listen: false).setToken(token);
      Timer(const Duration(seconds: 3), () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const NavbarBawah()),
            (route) => false);
      });
    }
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      checkLogin();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          key: const Key('screenSplashScreen'),
          bottom: false,
          child: Center(
            child: Image.asset(
              'assets/logo.png',
              key: const Key('logo'),
            ),
          )),
    );
  }
}
