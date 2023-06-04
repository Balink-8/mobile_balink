import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/view/shopping/widgets_shopping/shopping_card.dart';

import '../../../config/theme.dart';
import '../shopping_page/list_gambar.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.network(
                    category[index],
                    width: 360.h,
                    height: 135.h,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.white,
                        //   child: IconButton(
                        //     icon: const Icon(
                        //       Icons.arrow_back,
                        //       color: Colors.black,
                        //     ),
                        //     onPressed: () {
                        //       Navigator.pop(context);
                        //     },
                        //   ),
                        // ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: SizedBox(
                              height: 36.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Cari barang di Balink..',
                                  hintStyle: poppinsKecil.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black38),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabled: false,
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: const Icon(
                              Icons.local_mall_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 37,
                    left: 16,
                    child: Text(
                      categoryProduct[index],
                      style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: ShoppingCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
