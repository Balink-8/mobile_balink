import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme.dart';
import '../../../model/category_model.dart';
import '../widgets_shopping/shopping_card.dart';
import 'list_gambar.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct(
      {Key? key, required this.index, required this.categoryData})
      : super(key: key);
  final CategoryModel categoryData;
  final int index;

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  final TextEditingController _searchController = TextEditingController();

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
                    key: Key('categoryImage_${widget.index}'),
                    category[widget.index],
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
                              child: TextField(
                                key: const Key('searchFieldCategoryProduct'),
                                controller: _searchController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0.r),
                                    ),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0.r),
                                    ),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Color(0xff868686),
                                  ),
                                  hintText: 'Cari barang di balink ...',
                                  hintStyle: poppinsKecil.copyWith(
                                    color: const Color(0xff868686),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          key: const Key('shoppingCartButton'),
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
                      widget.categoryData.nama,
                      style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      key: const Key('categoryTitle'),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: ShoppingCard(key: Key('shoppingCard')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
