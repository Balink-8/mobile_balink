import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/model/category_model.dart';
import '../../../config/theme.dart';
import '../../shopping/shopping_page/list_gambar.dart';

class ShoppingCardWidget extends StatelessWidget {
  final CategoryModel categoryDataHome;
  const ShoppingCardWidget({
    super.key,
    required this.categoryDataHome,
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
              // imageProduct[index]
              'https://images.unsplash.com/photo-1647481045013-8efc5594369d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=428&q=80',

              // 'https://images.unsplash.com/photo-1625733143873-d8bec4591192?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
              // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
              // ,
              fit: BoxFit.cover,
              // scale: 25.0,
            ),
            Center(
              child: Text(
                key: const Key('titleShoppingHome'),
                // 'Pakaian',
                categoryDataHome.nama,
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
