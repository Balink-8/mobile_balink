import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/alamat/tambah_alamat.dart';

class AlamatPage extends StatefulWidget {
  const AlamatPage({super.key});

  @override
  State<AlamatPage> createState() => _AlamatPageState();
}

class _AlamatPageState extends State<AlamatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          'Info Pengiriman',
          style: poppinsKecil.copyWith(
              color: blackColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            'Tambah Alamat',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TambahAlamat()));
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16.w,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Container(
                  width: 320.w,
                  height: 100.h,
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Azriel',
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.bold, color: blackColor),
                          ),
                          Text(
                            'Edit',
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.bold, color: blackColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text('(+62)83238283298'),
                      SizedBox(height: 8.h),
                      Text('Jl. Slamet Riyadi No. 81'),
                      SizedBox(height: 8.h),
                      Text('Kabupaten Jember, Jember'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          width: 330.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Simpan',
              style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
