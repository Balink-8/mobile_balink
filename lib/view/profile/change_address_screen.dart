import 'package:flutter/material.dart';

import '../../config/theme.dart';

class ChangeAddressScreen extends StatefulWidget {
  const ChangeAddressScreen({super.key});

  @override
  State<ChangeAddressScreen> createState() => _ChangeAddressScreenState();
}

class _ChangeAddressScreenState extends State<ChangeAddressScreen> {
  final addressController = TextEditingController();

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
          'Alamat',
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
            keyboardType: TextInputType.streetAddress,
            controller: addressController,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Alamat',
              labelStyle: poppinsKecil.copyWith(
                color: blackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              hintText: 'Maluku',
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
