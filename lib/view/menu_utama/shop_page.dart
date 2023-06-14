import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('Shop'),
      )),
    );
  }
}
