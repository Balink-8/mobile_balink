import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/model/category_model.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/shopping/shopping_page/category_product.dart';
import 'package:mobile_balink/view/shopping/shopping_page/detail_shop_card.dart';
import 'package:mobile_balink/view/widget/home_screen_widget/promo_card.dart';
import 'package:mobile_balink/view_model/category_provider.dart';
import 'package:mobile_balink/view_model/event_provider.dart';
import 'package:mobile_balink/view_model/product_provider.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../model/product_model.dart';
import '../widget/home_screen_widget/carousel_welcome.dart';
import '../widget/home_screen_widget/event_card.dart';
import '../widget/home_screen_widget/search_home.dart';
import '../widget/home_screen_widget/shopping_card_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

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
    Future.microtask(
      () => Provider.of<EventProvider>(context, listen: false).getEvent(),
    );
    Future.microtask(
      () => Provider.of<CategoryProvider>(context, listen: false).getCategory(),
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
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SearchHomeWidget()));
                          },
                          child: TextField(
                            key: const Key('textFieldSearchHome'),
                            style: poppinsKecil,
                            decoration: InputDecoration(
                              enabled: false,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 5.0),
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(205, 203, 200, 0.2),
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
              Consumer<EventProvider>(builder: (context, provEvent, child) {
                final events = provEvent.listEvent;
                return Padding(
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
                            Event eventData = events[index];
                            return EvenCardWidget(
                              eventDataHome: eventData,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 5.w,
                            );
                          },
                          itemCount: events.length >= 5 ? 5 : events.length),
                    )
                    // eventCard(),
                    );
              }),
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
              Consumer<CategoryProvider>(
                builder: (context, provCategory, child) {
                  final shoppings = provCategory.listCategory;
                  return Padding(
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
                              CategoryModel categoryData = shoppings[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryProduct(index: index)));
                                },
                                child: ShoppingCardWidget(
                                  categoryDataHome: categoryData,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 5.w,
                              );
                            },
                            itemCount: shoppings.length),
                      ));
                },
              ),
              // (
              //   // child:
              // ),

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
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailCard(
                                              index: index,
                                              detailProduct: productData)));
                                },
                                child:
                                    PromoCardWidget(productData: productData));
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 5.w,
                            );
                          },
                          itemCount:
                              products.length >= 5 ? 5 : products.length),
                    ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
