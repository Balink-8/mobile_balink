import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/model/event_model.dart';

class cardClock extends StatelessWidget {
  final Event eventData;
  const cardClock({super.key, required this.eventData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 140.h,
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
                    'assets/icon/event_icon/alarmm.png',
                    width: 11.w,
                    height: 12.h,
                    key: Key('icon jam'),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Waktu',
                    style: poppinsKecil.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                    key: Key('text waktu'),
                  )
                ],
              ),
              SizedBox(height: 5.h),
              Column(
                children: [
                  Text(
                    eventData.waktuMulai,
                    style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    key: Key('text waktu mulai'),
                  ),
                  Text(
                    '-',
                    style: poppinsKecil.copyWith(
                      fontWeight: FontWeight.w700,
                      color: blackColor,
                    ),
                    key: Key('label garis hubung'),
                  ),
                  Text(
                    eventData.waktuSelesai,
                    style: poppinsKecil.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    key: Key('text waktu selesai'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
