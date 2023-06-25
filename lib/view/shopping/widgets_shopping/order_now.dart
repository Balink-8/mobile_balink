import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../config/theme.dart';
import '../../../model/product_model.dart';
import 'bottom_sheet_ordernow.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({Key? key, required this.index, required this.productData})
      : super(key: key);
  final int index;
  final Product productData;

  @override
  Widget build(BuildContext context) {
    String? noTelepon;
    String wa = 'halo';

    sendMessage() async {
      String text = 'https://wa.me/${noTelepon!}?text=$wa';
      var url = Uri.parse(text);
      await canLaunchUrl(url)
          ? await launchUrl(url, mode: LaunchMode.externalApplication)
          : throw 'Could not launch $url';
    }

    getNomor() {
      String no = '+6281357311456';
      noTelepon = no.substring(1);
    }

    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              sendMessage();
            },
            icon: Image.asset(
              'assets/whatsapp.png',
              height: 24,
              width: 24,
            ),
            key: const Key('whatsappIconButton'),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        SizedBox(height: 10.0.h),
                        Text(
                          'Barang berhasil dimasukkan ke keranjang',
                          textAlign: TextAlign.center,
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.shopping_cart_outlined),
            key: const Key('cartIconButton'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) => BottomSheetOrderNow(
                    index: index,
                    productInfo: productData,
                  ),
                );
              },
              key: const Key('buyNowButton'),
              child: Text(
                'Beli Sekarang',
                style: poppinsKecil.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
