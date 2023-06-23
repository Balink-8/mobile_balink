import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/shopping/shopping_page/list_gambar.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../model/product_model.dart';
import '../../../view_model/product_provider.dart';
import '../shopping_page/detail_shop_card.dart';

class ShoppingCard extends StatefulWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {
  @override
  void initState() {
    context.read<ProductProvider>().searchText = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, provProduct, child) {
      final products = provProduct.listProduct;
      final searchText = provProduct.searchText;

      List filteredProducts = products
          .where((product) =>
              product.nama.toLowerCase().contains(searchText.toLowerCase()))
          .toList();

      if (provProduct.searchText.isEmpty) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
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
                      detailProduct: productData,
                    ),
                  ),
                );
              },
              key: Key('shoppingCard_$index'),
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
                        imageProduct[index],
                        fit: BoxFit.cover,
                        width: 155.w,
                        height: 150.h,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 8),
                        child: Text(
                          productData.nama,
                          maxLines: 2,
                          style: poppinsKecil.copyWith(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          key: Key('shoppingCardProductName_$index'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Rp ${productData.harga.toString()}',
                        style: poppinsKecil.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        key: Key('shoppingCardProductPrice_$index'),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                      child: Text(
                        '${productData.stok} Terjual',
                        style: poppinsKecil.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.black),
                        key: Key('shoppingCardProductSold_$index'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      } else {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: filteredProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 270.h,
          ),
          itemBuilder: (BuildContext context, int index) {
            Product productData = filteredProducts[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => DetailCard(
                      index: index,
                      detailProduct: productData,
                    ),
                  ),
                );
              },
              key: Key('shoppingCard_$index'),
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
                        imageProduct[index],
                        fit: BoxFit.cover,
                        width: 155.w,
                        height: 150.h,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 8),
                        child: Text(
                          productData.nama,
                          maxLines: 2,
                          style: poppinsKecil.copyWith(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          key: Key('shoppingCardProductName_$index'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Rp ${productData.harga.toString()}',
                        style: poppinsKecil.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        key: Key('shoppingCardProductPrice_$index'),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                      child: Text(
                        '${productData.stok} Terjual',
                        style: poppinsKecil.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.black),
                        key: Key('shoppingCardProductSold_$index'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    });
  }
}
