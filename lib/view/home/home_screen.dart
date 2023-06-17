import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/checkout/checkout_shop.dart';
import 'package:mobile_balink/view/widget/home_screen_widget/promo_card.dart';
import 'package:mobile_balink/view_model/product_provider.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../model/product_model.dart';
import '../widget/home_screen_widget/carousel_welcome.dart';
import '../widget/home_screen_widget/event_card.dart';
import '../widget/home_screen_widget/shopping_card_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({
    super.key,
  });

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => Provider.of<ProductProvider>(context, listen: false).getProduct(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('homeScreen'),
      backgroundColor: fifthColor,
      body: SafeArea(
        child: SingleChildScrollView(
          key: const Key('scrollHomeScreen'),
          child: Column(
            key: const Key('layoutHomeScreen'),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CarouselView(),
              Container(
                key: const Key('containerAppBar'),
                height: 74.h,
                width: MediaQuery.of(context).size.width * 1,
                // color: secondaryColor,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    // color: Colors.blueAccent[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0.r),
                      bottomRight: Radius.circular(10.0.r),
                    )),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          key: const Key('textFieldSearchHome'),
                          style: poppinsKecil,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(205, 203, 200, 0.2),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 14.67,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.w)),
                                borderSide: BorderSide(
                                  color: secondaryColor,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.w)),
                                borderSide: BorderSide(
                                  color: secondaryColor,
                                )),
                          ),
                        ),
                      )),
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
                          key: const Key('cartHome'),
                          child: Image.asset(
                              'assets/icon/bottom_navigasi_icon/cart.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              const CarouselView(
                key: Key('carouselViewHome'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  top: 24.0,
                ),
                child: Text(
                  'Event',
                  style: poppinsKecil.copyWith(
                      fontSize: 16.sp,
                      color: const Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                  key: const Key('titleEventHome'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25.0,
                    bottom: 17,
                  ),
                  child: SizedBox(
                    height: 120.h,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        key: const Key('listEvenHome'),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return const EvenCardWidget();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5.w,
                          );
                        },
                        itemCount: 5),
                  )
                  // eventCard(),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 14.0),
                child: Text(
                  key: const Key('titleShoppingHome'),
                  'Shopping',
                  style: poppinsKecil.copyWith(
                      fontSize: 16.sp,
                      color: const Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 17),
                  child: SizedBox(
                    height: 87.h,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        key: const Key('listShoppingHome'),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return const ShoppingCardWidget();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5.w,
                          );
                        },
                        itemCount: 5),
                  )),

              //PROMO CARD
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 14),
                child: Text(
                  key: const Key('titlePromoHome'),
                  'Promo',
                  style: poppinsKecil.copyWith(
                      fontSize: 16.sp,
                      color: const Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Consumer<ProductProvider>(builder: (context, provProduct, child) {
                final products = provProduct.listProduct;
                return Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, bottom: 17),
                    child: SizedBox(
                      height: 230.h,
                      child: ListView.separated(
                          key: const Key('listPromoHome'),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            Product productData = products[index];
                            return PromoCardWidget(productData: productData);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 5.w,
                            );
                          },
                          itemCount: products.length),
                    ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
