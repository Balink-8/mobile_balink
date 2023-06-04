import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shopping_page/list_gambar.dart';
import '../shopping_page/category_product.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => CategoryProduct(
                    index: index,
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                category[index],
                fit: BoxFit.cover,
                width: 60.w,
                height: 60.h,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 5,
        ),
      ),
    );
  }
}
