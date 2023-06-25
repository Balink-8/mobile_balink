import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';

class CardCalendar extends StatelessWidget {
  final Event eventData;
  const CardCalendar({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      height: 150.h,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, right: 5, left: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon/event_icon/bulan.png',
                    width: 11.w,
                    height: 12.h,
                    key: const Key('icon kalendar'),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Tanggal',
                    style: poppinsKecil.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                    key: const Key('label tanggal'),
                  )
                ],
              ),
              SizedBox(height: 5.h),
              Column(
                children: [
                  Text(
                    eventData.tanggalMulai,
                    style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    key: const Key('text tanggal mulai'),
                  ),
                  Text(
                    '-',
                    style: poppinsKecil.copyWith(
                        fontWeight: FontWeight.w700, color: blackColor),
                    key: const Key('text garis hubung'),
                  ),
                  Text(eventData.tanggalSelesai,
                      style: poppinsKecil.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      key: const Key('text tanggal selesai')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
