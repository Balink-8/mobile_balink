import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';

import '../../../model/event_model.dart';

class BuyEvent extends StatefulWidget {
  final Event? eventData;
  const BuyEvent({super.key, required this.eventData});

  @override
  State<BuyEvent> createState() => _OverlayEventState();
}

class _OverlayEventState extends State<BuyEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0.r),
                    child: Image.asset(
                      'assets/icon/event_icon/dummy/g1.png',
                      width: 64.w,
                      height: 64.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          '29 Mei 2023',
                          style: poppinsKecil.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: secondaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'Ogoh - Ogoh',
                      style: poppinsKecil.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
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
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Lokasi Event',
                          style: poppinsKecil.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 90.w,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EventDetailScreen(eventData: widget.eventData),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'assets/icon/event_icon/close.png',
                    width: 11.w,
                    height: 11.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BuyNow(),
    );
  }
}

class BuyNow extends StatefulWidget {
  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 190.w,
          height: 60.h,
          color: fifthColor,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Total',
                style: poppinsKecil.copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Rp 120.000',
                style: poppinsKecil.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => EventCo(),
            //   ),
            // );
          },
          child: Container(
              alignment: Alignment.center,
              width: 180.w,
              height: 60.h,
              color: secondaryColor,
              child: Text(
                'Beli Sekarang',
                style: poppinsKecil.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: fifthColor,
                ),
              )),
        )
      ],
    );
  }
}
