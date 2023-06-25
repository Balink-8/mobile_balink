import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/checkout.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';

import '../../../model/event_model.dart';

class BsTicket extends StatefulWidget {
  final Event? eventData;
  const BsTicket({super.key, required this.eventData});

  @override
  State<BsTicket> createState() => _BsTicketState();
}

int jumlah = 0;
int total = 0;

class _BsTicketState extends State<BsTicket> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              key: const Key('buttomSheetOverlay'),
              width: 360.w,
              height: 450.h,
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
                                    key: const Key('gambarEvent'),
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
                                        key: const Key('textTanggalMulai'),
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
                                    key: const Key('textNamaEvent'),
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
                                        key: const Key('iconLookasi'),
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
                                        key: const Key('textAlamat'),
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
                                  key: const Key('icon close'),
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
                                        key: const Key('icon tiket'),
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
                                        key: const Key('label tiket'),
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
                                    key: const Key('text harga'),
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
                                        total = widget.eventData!.hargaTiket *
                                            jumlah;
                                      });
                                    },
                                    icon: Image.asset(
                                      'assets/icon/event_icon/min.png',
                                      width: 11.w,
                                      height: 11.h,
                                      key: const Key('iconMinus'),
                                    ),
                                  ),
                                  Text(
                                    jumlah.toString(),
                                    style: poppinsKecil.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: secondaryColor),
                                    key: const Key('labelJumlah'),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        jumlah = jumlah + 1;
                                        total = widget.eventData!.hargaTiket *
                                            jumlah;
                                      });
                                    },
                                    icon: Image.asset(
                                      'assets/icon/event_icon/add.png',
                                      width: 11.w,
                                      height: 11.h,
                                      key: const Key('iconTambah'),
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
                          height: 60.h,
                          color: fifthColor,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                  key: const Key('labelTotal'),
                                ),
                                Text(
                                  'Rp ${widget.eventData!.hargaTiket * jumlah} ',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor),
                                  key: const Key('textHargaTotal'),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          key: const Key('buttonBeliSekarang'),
                          onTap: () {
                            _showMyDialog(context);
                            Timer(const Duration(seconds: 3), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventCheckOut(
                                    total: total,
                                    hargaTiket: widget.eventData!.hargaTiket,
                                    jumlah: widget.eventData,
                                    eventData: widget.eventData,
                                  ),
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
                              key: const Key('labelBeliSekarang'),
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
        key: const Key('buttonPesanSekarang'),
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
          key: const Key('labelDeskripsi'),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Center(
            key: const Key('iconLoading'),
            child: Image.asset('assets/loading.png'));
      },
    );
  }
}
