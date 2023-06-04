import 'package:flutter/material.dart';
import 'package:mobile_balink/view/transaksi/transaksi_event.dart';
import '../../config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'transaksi_shop.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({Key? key}) : super(key: key);

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Color getTabColor(int index) {
    return _selectedTabIndex == index ? Colors.red : Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text(
          'Transaksi',
          style: poppinsKecil.copyWith(
              color: blackColor, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Container(
            //   height: 40.h,
            //   width: 152.w,
            //   color: secondaryColor,
            // ),
            Container(
              height: 56.h,
              decoration: BoxDecoration(
                // boxShadow: BoxShadow.lerpList(a, b, t),
                border: Border.all(width: 0.1),
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                labelStyle: poppinsKecil.copyWith(fontWeight: FontWeight.w600),
                labelColor: blackColor,
                unselectedLabelColor: blackColor,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.event_available),
                        SizedBox(
                          width: 11.w,
                        ),
                        Text(
                          'Event',
                          // style: poppinsKecil,
                        )
                      ],
                    ),
                    // text: 'Event',
                    // icon: Icon(Icons.event_note),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/bottom_navigasi_icon/cart.png',
                          color: getTabColor(2),
                        ),
                        // Icon(Icons.shopify_outlined),
                        SizedBox(
                          width: 11.w,
                        ),
                        Text(
                          'Shopping',
                          // style: poppinsKecil,
                        )
                      ],
                    ),
                    // text: 'Shopping',
                    // icon: Icon(Icons.shop),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1500.h,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  TransaksiEventPage(),
                  // Center(
                  //   child: Text(
                  //     'Event',
                  //     style: poppinsKecil.copyWith(color: blackColor),
                  //   ),
                  // ),
                  // TransaksiShopPage(),
                  // Center(
                  //   child: Text(
                  //     'Shopping',
                  //     style: poppinsKecil,
                  //   ),
                  // ),
                  TransaksiShopPage()
                ],
              ),
            ),
            // SizedBox(
            //   height: 220.h,
            //   width: 330.w,
            //   child: Card(
            //     // margin: const EdgeInsets.fromLTRB(6, 16, 6, 16),
            //     // color: Color.fromRGBO(215, 245, 246, 1),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(2.0)),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding:
            //               const EdgeInsets.only(left: 6, top: 16.0, bottom: 6),
            //           child: Container(
            //               height: 30.h,
            //               width: 150.w,
            //               decoration: BoxDecoration(
            //                 border: Border.all(),
            //                 // Replace with your desired background color
            //                 borderRadius: BorderRadius.circular(
            //                     20.0), // Replace with your desired border radius
            //               ),
            //               // color: thirdColor,
            //               child: Center(
            //                 child: Text(
            //                   'Berhasil dipesan',
            //                   style: poppinsKecil.copyWith(
            //                       color: blackColor,
            //                       fontWeight: FontWeight.w400),
            //                 ),
            //               )),
            //         ),
            //         Row(
            //           children: [
            //             // CarouselView(),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(4.0),
            //                 child: SizedBox(
            //                   height: 120.h,
            //                   width: 120.w,
            //                   child: Image.network(
            //                     'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
            //                     // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
            //                     ,
            //                     fit: BoxFit.cover,
            //                     // scale: 25.0,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color:
            //                         thirdColor, // Replace with your desired background color
            //                     borderRadius: BorderRadius.circular(
            //                         4.0), // Replace with your desired border radius
            //                   ),
            //                   // color: thirdColor,
            //                 ),
            //                 Text(
            //                   'Festival Ogoh - Ogoh',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 16,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w600),
            //                 ),
            //                 Text(
            //                   'Denpasar, Bali',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 14,
            //                       color: Colors.grey,
            //                       fontWeight: FontWeight.w400),
            //                 ),
            //                 Text(
            //                   'Rp 90.000',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 14,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w600),
            //                 ),
            //                 SizedBox(
            //                   height: 14.h,
            //                 ),
            //                 Text(
            //                   'Event Berlangsung',
            //                   style: poppinsKecil.copyWith(
            //                     fontSize: 14,
            //                     color: Colors.grey,
            //                   ),
            //                 ),
            //                 Text(
            //                   '29 Mei 2023',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 14,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w600),
            //                 ),
            //               ],
            //             )
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 13.h,
            // ),
            // SizedBox(
            //   height: 220.h,
            //   width: 330.w,
            //   child: Card(
            //     // margin: const EdgeInsets.fromLTRB(6, 16, 6, 16),
            //     // color: Color.fromRGBO(215, 245, 246, 1),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(2.0)),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding:
            //               const EdgeInsets.only(left: 8, top: 16.0, bottom: 6),
            //           child: Container(
            //               height: 30.h,
            //               width: 100.w,
            //               decoration: BoxDecoration(
            //                 border: Border.all(),
            //                 // Replace with your desired background color
            //                 borderRadius: BorderRadius.circular(
            //                     20.0), // Replace with your desired border radius
            //               ),
            //               // color: thirdColor,
            //               child: Center(
            //                 child: Text(
            //                   'Dibatalkan',
            //                   style: poppinsKecil.copyWith(
            //                       color: blackColor,
            //                       fontWeight: FontWeight.w400),
            //                 ),
            //               )),
            //         ),
            //         Row(
            //           children: [
            //             // CarouselView(),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(4.0),
            //                 child: SizedBox(
            //                   height: 120.h,
            //                   width: 120.w,
            //                   child: Image.network(
            //                     'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
            //                     // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
            //                     ,
            //                     fit: BoxFit.cover,
            //                     // scale: 25.0,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color:
            //                         thirdColor, // Replace with your desired background color
            //                     borderRadius: BorderRadius.circular(
            //                         4.0), // Replace with your desired border radius
            //                   ),
            //                   // color: thirdColor,
            //                 ),
            //                 Text(
            //                   'Festival Ogoh - Ogoh',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 16,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w600),
            //                 ),
            //                 Text(
            //                   'Denpasar, Bali',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 14,
            //                       color: Colors.grey,
            //                       fontWeight: FontWeight.w400),
            //                 ),
            //                 Text(
            //                   'Rp 90.000',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 14,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w600),
            //                 ),
            //                 SizedBox(
            //                   height: 14.h,
            //                 ),
            //                 Text(
            //                   'Event Berlangsung',
            //                   style: poppinsKecil.copyWith(
            //                     fontSize: 14,
            //                     color: Colors.grey,
            //                   ),
            //                 ),
            //                 Text(
            //                   '29 Mei 2023',
            //                   style: poppinsKecil.copyWith(
            //                       fontSize: 14,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w600),
            //                 ),
            //               ],
            //             )
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
