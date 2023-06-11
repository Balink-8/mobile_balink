import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme.dart';
import '../widgets_shopping/order_now.dart';
import '../widgets_shopping/shopping_card.dart';
import '../widgets_shopping/keranjang.dart';
import 'list_gambar.dart';
import 'package:badges/badges.dart' as badges;

class DetailCard extends StatefulWidget {
  const DetailCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  final TextEditingController _searchController = TextEditingController();

  final int _cartBadgeAmount = 1;
  late bool _showCartBadge;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    _showCartBadge = _cartBadgeAmount > 0;

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
                    category[widget.index],
                    width: 360.h,
                    height: 360.h,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: SizedBox(
                              height: 36.h,
                              child: TextField(
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
                          backgroundColor: Colors.white,
                          child: _shoppingCartBadge(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameCategory[widget.index],
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      'Rp. 90.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      '162 Terjual',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Ongkir',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset('assets/truck.png'),
                        ),
                        Text(
                          'Ongkos kirim Rp. 5.000 - Rp. 10.000',
                          style: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w400, color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Garansi',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Text(
                      'Terima pesanan dengan aman atau uang Anda akan kami kembalikan',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black38),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Deskripsi',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Text(
                      'Endek adalah kain tenun tradisional Bali yang sudah ada pada zaman dahulu. Kain endek Bali dibuat sistem tenun ikat, yakni dengan mengikat benang pakan dan benang lungsi.',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                          overflow: TextOverflow.clip),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Ready Warna :',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black),
                    ),
                    Text(
                      'Ungu Wine',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black),
                    ),
                    Text(
                      'Ungu Terong',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black),
                    ),
                    Text(
                      'Biru',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black),
                    ),
                    Text(
                      'Hitam',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Kategori Produk',
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Text(
                      categoryProduct[widget.index],
                      style: poppinsKecil.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/location.png',
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lokasi',
                                style: poppinsKecil.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              Text(
                                'Jl. Pudak, Gianyar, Kec. Gianyar, Kabupaten Gianyar',
                                style: poppinsKecil.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ShoppingCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: OrderNow(
        index: widget.index,
      ),
    );
  }

  Widget _shoppingCartBadge() {
    return badges.Badge(
      badgeAnimation: const badges.BadgeAnimation.slide(),
      showBadge: _showCartBadge,
      badgeStyle: badges.BadgeStyle(
        badgeColor: color,
      ),
      badgeContent: Text(
        _cartBadgeAmount.toString(),
        style: const TextStyle(color: Colors.white),
      ),
      child: IconButton(
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Keranjang(index: widget.index),
            ),
          );
        },
      ),
    );
  }
}
