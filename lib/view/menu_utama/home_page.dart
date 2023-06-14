import 'package:flutter/material.dart';
import 'package:mobile_balink/view_model/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserProvider>(builder: (context, prov, child) {
        return SafeArea(
            child: Center(
          child: Column(
            children: [
              Text(prov.getUser.nama ?? ""),
              Text(prov.getUser.alamat ?? ""),
              Text(prov.getUser.email ?? ""),
              Text(prov.getUser.noTelepon ?? ""),
              Text(prov.getUser.role ?? ""),
              Text(prov.getToken ?? ""),
            ],
          ),
        ));
      }),
    );
  }
}
