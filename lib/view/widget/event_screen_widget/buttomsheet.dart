import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventcheckout.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';

import '../../../model/event_model.dart';

class bsTicket extends StatefulWidget {
  final Event? eventData;
  const bsTicket({super.key, required this.eventData});

  @override
  State<bsTicket> createState() => _bsTicketState();
}

int jumlah = 0;
int harga = harga;

class _bsTicketState extends State<bsTicket> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key('buttonPesanSekarang'),
      onTap: () {
        showModalBottomSheet(
          elevation: 0.9,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (context) {
            return SizedBox(
              width: 360.w,
              height: 516.h,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/icon/event_icon/dummy/g1.png',
                                    //  '${Api.event}${eventData.gambar}',
                                    width: 64.w,
                                    height: 64.h,
                                    key: Key('gambar event'),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        widget.eventData!.tanggalMulai,
                                        style: poppinsKecil.copyWith(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: secondaryColor),
                                        key: Key('text tanggal mulai'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    widget.eventData!.nama,
                                    style: poppinsKecil.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: blackColor),
                                    key: Key('text event'),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/event_icon/location.png',
                                        width: 10.w,
                                        height: 13.h,
                                        key: Key('icon lokasi'),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        widget.eventData!.lokasi,
                                        style: poppinsKecil.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: blackColor),
                                        key: Key('text alamat'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EventDetailScreen(
                                        eventData: widget.eventData,
                                      ),
                                    ),
                                  );
                                },
                                icon: Image.asset(
                                  'assets/icon/event_icon/close.png',
                                  width: 11.w,
                                  height: 11.h,
                                  key: Key('icon close'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/event_icon/ticket.png',
                                        width: 13.w,
                                        height: 11.h,
                                        key: Key('icon tiket'),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Tiket',
                                        style: poppinsKecil.copyWith(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: blackColor),
                                        key: Key('label tiket'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Rp ${widget.eventData!.hargaTiket.toString()}",
                                    style: poppinsKecil.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: blackColor),
                                    key: Key('text harga'),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        jumlah = jumlah - 1;
                                      });
                                    },
                                    icon: Image.asset(
                                      'assets/icon/event_icon/min.png',
                                      width: 11.w,
                                      height: 11.h,
                                      key: Key('icon minus'),
                                    ),
                                  ),
                                  Text(
                                    jumlah.toString(),
                                    style: poppinsKecil.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: secondaryColor),
                                    key: Key('label jumlah'),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        jumlah = jumlah + 1;
                                      });
                                    },
                                    icon: Image.asset(
                                      'assets/icon/event_icon/add.png',
                                      width: 11.w,
                                      height: 11.h,
                                      key: Key('icon tambah'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150.w,
                          height: 50.h,
                          color: fifthColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                  key: Key('label total'),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Rp ${widget.eventData!.hargaTiket * jumlah} ',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor),
                                  key: Key('text harga total'),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          key: Key('buttonBeliSekarang'),
                          onTap: () {
                            _showMyDialog(context);
                            Timer(const Duration(seconds: 3), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventCo(
                                      hargaTiket: widget.eventData!.hargaTiket,
                                      jumlah: jumlah,
                                      total: harga,
                                      eventData: widget.eventData),
                                ),
                              );
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 150.w,
                            height: 60.h,
                            color: secondaryColor,
                            child: Text(
                              'Beli Sekarang',
                              style: poppinsKecil.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: fifthColor,
                              ),
                              key: Key('label beli sekarang'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: secondaryColor,
        ),
        alignment: Alignment.center,
        width: 328.w,
        height: 40.h,
        child: Text(
          'Pesan Sekarang',
          style: poppinsKecil.copyWith(
              fontSize: 14.sp, fontWeight: FontWeight.w700, color: whiteColor),
          key: Key('label text pesan sekarang'),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 150, vertical: 360),
          titlePadding:
              const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
          title: Image.asset(
            'assets/icon/event_icon/memuat.png',
            width: 22.w,
            height: 22.h,
            key: Key('icon loading'),
          ),
          content: SizedBox(
              width: 106.w,
              height: 77.h,
              child: const Center(
                  child: Text(
                'Memuat',
                key: Key('text memuat'),
              ))),
        );
      },
    );
  }
}
