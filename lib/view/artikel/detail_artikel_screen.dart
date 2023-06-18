import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

import '../../view_model/artikel_provider.dart';

class DetailArtikelScreen extends StatefulWidget {
  const DetailArtikelScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<DetailArtikelScreen> createState() => _DetailArtikelScreenState();
}

class _DetailArtikelScreenState extends State<DetailArtikelScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<ArtikelProvider>(context, listen: false)
          .getSingleArtikel(widget.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ArtikelProvider>(
      builder: (context, artikelProvider, child) {
        final artikel = artikelProvider.artikel;
        if (artikel == null) {
          // Artikel is null, show loading or error widget
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: const Color(0xffffffff),
            appBar: AppBar(
              backgroundColor: const Color(0xffffffff),
              elevation: 0,
              title: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: blackColor.withOpacity(0.25),
                    ),
                  ),
                  child: Text(
                    artikel.judul,
                    style: poppinsKecil.copyWith(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/ogoh.png',
                        scale: .8.r,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReadMoreText(
                            artikel.deskripsi,
                            trimLines: 10,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: ' READ MORE',
                            moreStyle: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: Colors.brown.shade500,
                            ),
                            lessStyle: poppinsKecil.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: Colors.brown.shade500,
                            ),
                            trimExpandedText: ' SHOW LESS',
                            style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
