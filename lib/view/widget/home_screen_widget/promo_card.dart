import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme.dart';
import '../../../model/product_model.dart';

class PromoCardWidget extends StatelessWidget {
  final Product productData;
  const PromoCardWidget({
    super.key,
    required this.productData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      key: const Key('cardPromoHome'),
      // margin: EdgeInsets.only(botom:20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: SizedBox(
        height: 200.h,
        width: 140.w,
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 116.h,
                width: 140.w,
                child: ClipRRect(
                  // decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  // ),
                  child: Image.network(
                    key: const Key('imagePromoHome'),
                    'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 8),
                  child: Text(
                    key: const Key('productNameHome'),
                    // 'Daster Bali',
                    productData.nama,
                    maxLines: 2,
                    style: poppinsKecil.copyWith(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 4.h,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Text(
                      key: const Key('hargaPotonganProdukHome'),
                      // 'Rp 34.000',
                      productData.harga.toString(),
                      style: poppinsKecil.copyWith(
                          fontSize: 10.sp,
                          color: const Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      key: const Key('hargaProdukHome'),
                      'Rp 24.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 11.sp,
                          color: const Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 11,
                      color: Color.fromRGBO(194, 129, 62, 1),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '4.9 | ',
                      style: poppinsKecil.copyWith(
                          fontSize: 11.sp,
                          color: const Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      // '23 Terjual',
                      productData.stok.toString(),
                      style: poppinsKecil.copyWith(
                          fontSize: 11.sp,
                          color: const Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ]),
            Container(
              height: 20.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color:
                      thirdColor, // Replace with your desired background color
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ) // Replace with your desired border radius
                  ),
              child: Text(
                '20%',
                textAlign: TextAlign.center,
                style: poppinsKecil.copyWith(
                    fontSize: 12.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
