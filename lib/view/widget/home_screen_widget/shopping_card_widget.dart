import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/model/category_model.dart';
import '../../../config/theme.dart';
import '../../shopping/shopping_page/list_gambar.dart';

class ShoppingCardWidget extends StatelessWidget {
  final CategoryModel categoryDataHome;
  final int index;
  const ShoppingCardWidget({
    super.key,
    required this.categoryDataHome,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: SizedBox(
        height: 87.h,
        width: 68.w,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              key: const Key('imageShoppingHome'),
              category[index],

              fit: BoxFit.cover,
              // scale: 25.0,
            ),
            Center(
              child: Text(
                key: const Key('titleShoppingHome'),
                // 'Pakaian',
                categoryDataHome.nama!,
                textAlign: TextAlign.center,
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
}
