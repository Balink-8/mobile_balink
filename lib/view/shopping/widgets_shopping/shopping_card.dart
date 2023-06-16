import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme.dart';
import '../shopping_page/detail_shop_card.dart';
import '../shopping_page/list_gambar.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: category.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
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
              child: SizedBox(
                width: 155.h,
                height: 354.h,
                child: Column(
                  children: [
                    Image.network(
                      category[index],
                      fit: BoxFit.cover,
                      width: 155.w,
                      height: 60.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameCategory[index],
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'Rp. 90.000',
                            style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '162 Terjual',
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
