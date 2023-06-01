import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class BuktiPembayaranPage extends StatefulWidget {
  const BuktiPembayaranPage({super.key});

  @override
  State<BuktiPembayaranPage> createState() => _BuktiPembayaranPageState();
}

class _BuktiPembayaranPageState extends State<BuktiPembayaranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menunggu Pembayaran',
          style: poppinsKecil.copyWith(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Total',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Rp. 100.000',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Metode pembayaran pilihan',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Bank Central Asia',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Divider(thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.local_shipping_outlined),
                  SizedBox(width: 4.w),
                  Text(
                    'Pengiriman Produk',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                              ),
                              SizedBox(width: 6.w),
                              Text(
                                'Alamat Pengiriman',
                                style: poppinsKecil.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16.w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jl. Mengaling, Celuk, Kec. Sukawati,',
                            style: poppinsKecil.copyWith(color: blackColor),
                          ),
                          Text(
                            'Kabupaten Gianyar, Bali',
                            style: poppinsKecil.copyWith(color: blackColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              Divider(thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      // decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                        // topRight: Radius.circular(5.0),
                      ),
                      // ),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                        fit: BoxFit.cover,

                        // scale: 1.7,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Kemeja Endek Strait Motif Bali Premium',
                            style: poppinsKecil.copyWith(
                                color: blackColor,
                                fontWeight: FontWeight.w400)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp 90.0000',
                              style: poppinsKecil.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('1x',
                                style: poppinsKecil.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Divider(thickness: 1),
              SizedBox(height: 10.h),
              Text(
                'Rincian Pesanan',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nomor Pesanan',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  Text(
                    '577889036123879654',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tanggal Pemesanan',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  Text(
                    '29 April 2023, 6:15 AM',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Metode Pembayaran',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  Text(
                    'Bank Central Asia',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Divider(thickness: 1),
              SizedBox(height: 10.h),
              Text(
                'Ringkasan Pesanan',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  Text(
                    'Rp. 90.000',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pengiriman',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  Text(
                    'Rp. 10.000',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Promo',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                  Text(
                    '-',
                    style: poppinsKecil.copyWith(color: Colors.red),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rp. 100.000',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Divider(thickness: 1),
              SizedBox(height: 10.h),
              Text(
                'No. Virtual Account',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Bank Central Asia',
                      style: poppinsKecil.copyWith(color: blackColor),
                    ),
                    Text(
                      '2668 8001 9203 8388',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.content_copy,
                          size: 20.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Copy Code',
                          style: poppinsKecil.copyWith(color: blackColor),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 90.h,
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.0.r),
                      ),
                    ),
                    builder: (context) {
                      return SizedBox(
                        height: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Center(
                                child: Text(
                                  'Ambil Foto',
                                  style: poppinsKecil.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                            const Divider(),
                            ListTile(
                              title: Center(
                                child: Text(
                                  'Pilih dari Galeri',
                                  style: poppinsKecil.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                            const Divider(),
                            ListTile(
                              title: Center(
                                child: Text(
                                  'Lihat foto',
                                  style: poppinsKecil.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                            const Divider(),
                            ListTile(
                              title: Center(
                                child: Text(
                                  'Batal',
                                  style: poppinsKecil.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w100,
                                    color: const Color(0xff5E5E5E),
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
                child: Container(
                  width: 360.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Upload Bukti Pembayaran',
                      style: poppinsKecil.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
                SizedBox(height: 100.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 360.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Batalkan Pesanan',
                        style: poppinsKecil.copyWith(),
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
}
