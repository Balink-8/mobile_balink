import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/profile/detail_kebijakan_privasi.dart';
import 'package:mobile_balink/view/profile/detail_tentang_kami.dart';

class PengaturanScreen extends StatefulWidget {
  const PengaturanScreen({super.key});

  @override
  State<PengaturanScreen> createState() => _PengaturanScreenState();
}

class _PengaturanScreenState extends State<PengaturanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        title: Text(
          'Pengaturan',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: 150.h,
              width: MediaQuery.of(context).size.width,
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dukungan & Tentang',
                      style: poppinsKecil.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.shield_outlined,
                                    ),
                                    SizedBox(width: 6.w),
                                    Text(
                                      'Kebijakan Privasi',
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
                                      builder: (context) =>
                                          const KebijakanPrivasiScreen(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.w,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.error_outline,
                                    ),
                                    SizedBox(width: 6.w),
                                    Text(
                                      'Tentang Kami',
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
                                      builder: (context) =>
                                          const DetailTentangKamiScreen(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.w,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              height: 100.h,
              width: MediaQuery.of(context).size.width,
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Log Out',
                      style: poppinsKecil.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.logout,
                                    ),
                                    SizedBox(width: 6.w),
                                    Text(
                                      'Keluar',
                                      style: poppinsKecil.copyWith(
                                          color: blackColor,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10.r),
                                      ),
                                    ),
                                    builder: (context) {
                                      return SizedBox(
                                        height: 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  'Anda yakin ingin keluar?',
                                                  style: poppinsKecil.copyWith(
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w100,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  'Keluar',
                                                  style: poppinsKecil.copyWith(
                                                    fontSize: 18.sp,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Divider(),
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  'Batal',
                                                  style: poppinsKecil.copyWith(
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w100,
                                                    color:
                                                        const Color(0xff5E5E5E),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.w,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
