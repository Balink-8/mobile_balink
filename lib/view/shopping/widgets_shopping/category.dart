import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../view_model/category_provider.dart';
import '../shopping_page/category_product.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, _) {
        return SizedBox(
          height: 60.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categoryProvider.data.length,
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
                    categoryProvider.data[index],
                    fit: BoxFit.cover,
                    width: 60.w,
                    height: 60.h,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 5,
            ),
          ),
        );
      },
    );
  }
}
