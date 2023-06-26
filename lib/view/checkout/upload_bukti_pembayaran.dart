import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/shopping/shopping_page/list_gambar.dart';

import '../../model/product_model.dart';
import 'berhasil_bayar.dart';

class BuktiPembayaranPage extends StatefulWidget {
  const BuktiPembayaranPage(
      {super.key,
      required this.productMembayar,
      required this.index,
      required this.quantity,
      required this.bank});
  final Product productMembayar;
  final int index;
  final int quantity;
  final String bank;

  @override
  State<BuktiPembayaranPage> createState() => _BuktiPembayaranPageState();
}

class _BuktiPembayaranPageState extends State<BuktiPembayaranPage> {
  int ongkir = 10000;
  String metodePembayaran = "";

  var nova = '2668 8001 9203 8388';

  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicker =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicker!.path);
    // ignore: avoid_print
    print(image);
    setState(() {});
  }

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
        foregroundColor: blackColor,
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
                    'Rp ${(widget.productMembayar.harga * widget.quantity) + ongkir}',
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
                    widget.bank,
                    // 'Bank Central Asia',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              const Divider(thickness: 1),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.local_shipping_outlined),
                  SizedBox(width: 4.w),
                  Text(
                    'Pengiriman Produk',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Icon(
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
                      padding: const EdgeInsets.only(left: 30),
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
              const Divider(thickness: 1),
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
                        imageProduct[widget.index],
                        // 'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
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
                        Text(widget.productMembayar.nama,
                            style: poppinsKecil.copyWith(
                                color: blackColor,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp ${widget.productMembayar.harga}',
                              style: poppinsKecil.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('${widget.quantity}x',
                                style: poppinsKecil.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              const Divider(thickness: 1),
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
                    widget.bank,
                    // 'Bank Central Asia',
                    style: poppinsKecil.copyWith(color: blackColor),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              const Divider(thickness: 1),
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
                    'Rp ${widget.productMembayar.harga * widget.quantity}',
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
                    'Rp $ongkir',
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
                    'Rp ${(widget.productMembayar.harga * widget.quantity) + ongkir}',
                    style: poppinsKecil.copyWith(
                        color: blackColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              const Divider(thickness: 1),
              SizedBox(height: 10.h),
              Text(
                'No. Virtual Account',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Container(
                key: const Key('boxRincianVa'),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.r),
                    color: abuAColor),
                width: 327.w,
                height: 120.h,
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: Column(
                  children: [
                    Text(
                      widget.bank,
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      key: const Key('bank yang dipilih'),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '2668 8001 9203 8388',
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                      key: const Key('label no.va'),
                    ),
                    SizedBox(height: 3.h),
                    TextButton(
                      key: const Key('salinTextVa'),
                      onPressed: () {
                        FlutterClipboard.copy(nova).then((value) =>
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Berhasil Disalin'))));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon/event_icon/copy.png',
                            width: 17.w,
                            height: 20.h,
                            key: const Key('iconCopy'),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Copy Code',
                            style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: blackColor),
                            key: const Key('labelCopy '),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Bukti Pembayaran',
                style: poppinsKecil.copyWith(
                    color: blackColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.r),
                    color: abuAColor),
                width: 327.w,
                height: 390.h,
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      image != null
                          ? SizedBox(
                              height: 350,
                              width: 350,
                              child: Image.file(
                                image!,
                                // fit: BoxFit.cover,
                              ),
                            )
                          : Center(
                              child: InkWell(
                                child: const Text('Belum ada gambar'),
                                onTap: () async {
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0.r),
                                      ),
                                    ),
                                    builder: (context) {
                                      return SizedBox(
                                        height: 280.h,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              onTap: () async {
                                                await getImage();
                                              },
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
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BerhasilBayarPage(
                                image: image!,
                                productBerhasil: widget.productMembayar,
                                bank: widget.bank,
                                index: widget.index,
                                quantity: widget.quantity,
                              )));
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
