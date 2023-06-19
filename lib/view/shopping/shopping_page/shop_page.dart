import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/shopping/widgets_shopping/category.dart';
import 'package:mobile_balink/view/shopping/widgets_shopping/shopping_card.dart';
import 'package:mobile_balink/view_model/product_provider.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<ProductProvider>(context, listen: false);
    provider.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);

    return Scaffold(
      key: const Key('shopPage'),
      body: SafeArea(
        child: SingleChildScrollView(
          key: const Key('scrollShopPage'),
          child: Column(
            key: const Key('layoutShopPage'),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  key: const Key('SizedBoxAppBar'),
                  height: 55.h,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            height: 36.h,
                            child: TextField(
                              key: const Key('searchFieldShopPage'),
                              controller: _searchController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0.r),
                                  ),
                                  borderSide: const BorderSide(
                                    color: Color(0xff868686),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0.r),
                                  ),
                                  borderSide: const BorderSide(
                                    color: Color(0xff868686),
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Color(0xff868686),
                                ),
                                hintText: 'Cari barang di balink ...',
                                hintStyle: poppinsKecil.copyWith(
                                  color: const Color(0xff868686),
                                ),
                              ),
                              onChanged: (value) {
                                provider.search(value);
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const CheckoutShopPage()));
                          },
                          key: const Key('cartShop'),
                          child: const Icon(
                            Icons.local_mall_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kategori',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      key: const Key('titleKategori'),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Category(),
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terlaris',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      key: const Key('titleTerlaris'),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ShoppingCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
