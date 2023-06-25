import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/model/category_model.dart';
import 'package:mobile_balink/view_model/category_provider.dart';
import 'package:provider/provider.dart';

import '../../../config/theme.dart';
import '../shopping_page/category_product.dart';
import '../shopping_page/list_gambar.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(builder: (context, provCategory, child) {
      final categorys = provCategory.listCategory;

      return SizedBox(
        height: 60.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (BuildContext context, int index) {
            CategoryModel categoryData = categorys[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => CategoryProduct(
                      index: index,
                      categoryData: categoryData,
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 70.h,
                  width: 70.h,
                  child: Stack(fit: StackFit.expand, children: [
                    Image.network(
                      category[index],
                      fit: BoxFit.cover,
                      key: Key('categoryImage_$index'),
                    ),
                    Center(
                      child: Text(
                        categoryData.nama!,
                        // categoryProduct[index],
                        textAlign: TextAlign.center,
                        style: poppinsKecil.copyWith(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        key: Key('categoryName_$index'),
                      ),
                    )
                  ]),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 5,
          ),
        ),
      );
    });
    // child:
    // );
  }
}
