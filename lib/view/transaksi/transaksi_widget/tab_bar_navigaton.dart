import 'package:flutter/material.dart';
import 'package:mobile_balink/view/transaksi/transaksi_event.dart';
import '../../../config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../transaksi_shop.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 56.h,
              decoration: BoxDecoration(
                // boxShadow: BoxShadow.lerpList(a, b, t),
                border: Border.all(width: 0.1),
                color: Colors.white70,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
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
                        const Icon(Icons.event_available),
                        SizedBox(
                          width: 11.w,
                        ),
                        const Text(
                          'Event',
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/bottom_navigasi_icon/cart.png',
                          color: blackColor,
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        const Text(
                          'Shopping',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  TransaksiEventPage(),
                  TransaksiShopPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
