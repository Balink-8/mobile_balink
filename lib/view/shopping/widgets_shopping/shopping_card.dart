import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../model/product_model.dart';
import '../../../view_model/product_provider.dart';
import '../shopping_page/detail_shop_card.dart';
import '../shopping_page/list_gambar.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, provProduct, child) {
      final products = provProduct.listProduct;
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 10,
          mainAxisExtent: 270.h,
        ),
        itemBuilder: (BuildContext context, int index) {
          Product productData = products[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => DetailCard(
                    index: index,
                  ),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                    child: Image.network(
                      category[index],
                      fit: BoxFit.cover,
                      width: 155.w,
                      height: 150.h,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 8),
                      // child: Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       productData.nama,
                      //       // nameCategory[index],
                      //       style: poppinsKecil.copyWith(
                      //           fontWeight: FontWeight.w400, color: Colors.black),
                      //     ),
                      //     Text(
                      //       // 'Rp. 90.000',
                      //       'Rp ${productData.harga.toString()}',
                      //       style: poppinsKecil.copyWith(
                      //           fontSize: 14.sp,
                      //           fontWeight: FontWeight.w600,
                      //           color: Colors.black),
                      //     ),
                      //     SizedBox(
                      //       height: 5.h,
                      //     ),
                      //     Text(
                      //       // '162 Terjual',
                      //       '${productData.stok} Terjual',
                      //       style: poppinsKecil.copyWith(
                      //           fontWeight: FontWeight.w400, color: Colors.black),
                      //     ),
                      //   ],
                      // ),
                      child: Text(
                        productData.nama,
                        // nameCategory[index],
                        maxLines: 2,
                        style: poppinsKecil.copyWith(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      // 'Rp. 90.000',
                      'Rp ${productData.harga.toString()}',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                    child: Text(
                      // '162 Terjual',
                      '${productData.stok} Terjual',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
