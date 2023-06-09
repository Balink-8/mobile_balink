import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/checkout/checkout_shop.dart';
import '../../config/theme.dart';
import '../widget/home_screen_widget/carousel_welcome.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CarouselView(),
              Container(
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
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CheckoutShopPage()));
                          },
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
              const CarouselView(),
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
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 17),
                  child: SizedBox(
                    height: 120.h,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return eventCard();
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
                  'Shopping',
                  style: poppinsKecil.copyWith(
                      fontSize: 16.sp,
                      color: const Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 25.0,
              //     bottom: 17.0,
              //   ),
              //   child: shoppingCard(),
              // ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 17),
                  child: SizedBox(
                    height: 87.h,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return shoppingCard();
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
                padding: const EdgeInsets.only(left: 25.0, bottom: 14),
                child: Text(
                  'Promo',
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
                    height: 200.h,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return promoCard();
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 25.0, bottom: 17.0
              //       // right: 24.0,
              //       ),
              //   child: promoCard(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Card promoCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: SizedBox(
        height: 175.h,
        width: 125.w,
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 96.h,
                width: 125.w,
                child: ClipRRect(
                  // decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  // ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                    fit: BoxFit.cover,

                    // scale: 1.7,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Daster Bali',
                  style: poppinsKecil.copyWith(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Rp 34.000',
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
                height: 9.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 6.0,
                ),
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
                      '23 Terjual',
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

  ClipRRect shoppingCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: SizedBox(
        height: 87.h,
        width: 68.w,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1625733143873-d8bec4591192?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
              // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
              ,
              fit: BoxFit.cover,
              // scale: 25.0,
            ),
            Center(
              child: Text(
                'Pakaian',
                style: poppinsKecil.copyWith(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }

  Card eventCard() {
    return Card(
      // color: Color.fromRGBO(215, 245, 246, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          // CarouselView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: 87.h,
                width: 94.w,
                child: Image.network(
                  'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
                  // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                  ,
                  fit: BoxFit.cover,
                  // scale: 25.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              right: 35.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color:
                          thirdColor, // Replace with your desired background color
                      borderRadius: BorderRadius.circular(
                          4.0), // Replace with your desired border radius
                    ),
                    // color: thirdColor,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '12 Jan 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(247, 245, 245, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'Title Event',
                    style: poppinsKecil.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Color.fromRGBO(194, 129, 62, 1),
                      size: 15,
                    ),
                    const SizedBox(
                      width: 6.67,
                    ),
                    Text(
                      'Event Location',
                      style: poppinsKecil.copyWith(
                        fontSize: 12.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
