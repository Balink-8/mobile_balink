import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view_model/artikel_provider.dart';
import 'package:provider/provider.dart';

import '../../model/artikel_model.dart';
import 'widgets/item_artikel_widget.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({super.key});

  @override
  State<ArtikelScreen> createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<ArtikelProvider>(context, listen: false).getArtikel(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ArtikelProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          leadingWidth: 32.w,
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xffffffff),
          title: SizedBox(
            height: 40.h,
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0.r),
                  ),
                  borderSide: const BorderSide(
                    color: Color(0xff868686),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0.r),
                  ),
                  borderSide: const BorderSide(
                    color: Color(0xff868686),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff868686),
                ),
                hintText: 'cari artikel di balink',
                hintStyle: poppinsKecil.copyWith(
                  color: const Color(0xff868686),
                ),
              ),
              onChanged: (value) {
                provider.search(value);
              },
            ),
          ),
        ),
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, value, child) {
          final artikel = value.listArtikel;
          final search = value.searchText;

          List filteredArtikels = artikel
              .where((product) =>
                  product.judul.toLowerCase().contains(search.toLowerCase()))
              .toList();

          if (value.searchText.isEmpty) {
            return ListView.builder(
              itemCount: artikel.length,
              itemBuilder: (context, index) {
                Artikel dataArtikel = artikel[index];
                return ItemArtikelWidget(dataArtikel: dataArtikel);
              },
            );
          } else {
            return ListView.builder(
              itemCount: filteredArtikels.length,
              itemBuilder: (context, index) {
                Artikel dataArtikel = filteredArtikels[index];
                return ItemArtikelWidget(dataArtikel: dataArtikel);
              },
            );
          }
        },
      ),
    );
  }
}
