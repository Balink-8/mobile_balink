import 'package:flutter/material.dart';

import '../../config/theme.dart';

class ChangeNumberScreen extends StatefulWidget {
  const ChangeNumberScreen({super.key});

  @override
  State<ChangeNumberScreen> createState() => _ChangeNumberScreenState();
}

class _ChangeNumberScreenState extends State<ChangeNumberScreen> {
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF7F5F5),
        leadingWidth: 60,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Batal',
            style: poppinsKecil.copyWith(
              color: blackColor,
              fontSize: 16,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'No Telepon',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontSize: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Simpan',
              style: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: numberController,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'No Telepon',
              labelStyle: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              hintText: '0823 1234 5678',
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffC6C6C6),
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffC6C6C6),
                ),
              ),
              suffixIcon: const Icon(
                Icons.check,
                color: Color(0xff5E5E5E),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
