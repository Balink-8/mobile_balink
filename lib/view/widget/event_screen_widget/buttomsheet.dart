import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';
import 'package:mobile_balink/view/event/eventPage/eventcheckout.dart';
import 'package:mobile_balink/view/event/eventPage/eventdetail.dart';

class bsTicket extends StatelessWidget {
  const bsTicket({
    super.key,
  });

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
            return Container(
              width: 360.w,
              height: 516.h,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/icon/event_icon/dummy/g1.png',
                                  width: 64,
                                  height: 64,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
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
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: secondaryColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Ogoh - Ogoh',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon/event_icon/location.png',
                                      width: 10,
                                      height: 13,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lokasi Event',
                                      style: poppinsKecil.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 125.w,
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const EventDetailScreen(),
                                  ),
                                );
                              },
                              icon: Image.asset(
                                'assets/icon/event_icon/close.png',
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon/event_icon/ticket.png',
                                      width: 13,
                                      height: 11,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Tiket',
                                      style: poppinsKecil.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rp 120.000',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: blackColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 147.w,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icon/event_icon/min.png',
                                width: 11,
                                height: 11,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1',
                              style: poppinsKecil.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: secondaryColor),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icon/event_icon/add.png',
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //       onPressed: () {},
                        //       icon: Image.asset(
                        //         'assets/icon/event_icon/check_box_ksg.png',
                        //         width: 14,
                        //         height: 14,
                        //       ),
                        //     ),
                        //     const SizedBox(
                        //       width: 15,
                        //     ),
                        //     Column(
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Image.asset(
                        //               'assets/icon/event_icon/ticket.png',
                        //               width: 13,
                        //               height: 11,
                        //             ),
                        //             const SizedBox(
                        //               width: 10,
                        //             ),
                        //             Text(
                        //               'Anak-Anak',
                        //               style: poppinsKecil.copyWith(
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.w400,
                        //                   color: blackColor),
                        //             ),
                        //           ],
                        //         ),
                        //         const SizedBox(
                        //           height: 10,
                        //         ),
                        //         Text(
                        //           'Rp  50.000',
                        //           style: poppinsKecil.copyWith(
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.w700,
                        //               color: blackColor),
                        //         ),
                        //         const SizedBox(
                        //           height: 10,
                        //         ),
                        //       ],
                        //     ),
                        //     SizedBox(
                        //       width: 85.w,
                        //     ),
                        //     IconButton(
                        //       onPressed: () {},
                        //       icon: Image.asset(
                        //         'assets/icon/event_icon/min.png',
                        //         width: 11,
                        //         height: 11,
                        //       ),
                        //     ),
                        //     const SizedBox(
                        //       width: 10,
                        //     ),
                        //     Text(
                        //       '2',
                        //       style: poppinsKecil.copyWith(
                        //           fontSize: 14,
                        //           fontWeight: FontWeight.w700,
                        //           color: secondaryColor),
                        //     ),
                        //     const SizedBox(
                        //       width: 10,
                        //     ),
                        //     IconButton(
                        //       onPressed: () {},
                        //       icon: Image.asset(
                        //         'assets/icon/event_icon/add.png',
                        //         width: 11,
                        //         height: 11,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        SizedBox(
                          height: 170.h,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 190.w,
                        height: 60.h,
                        color: fifthColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: poppinsKecil.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rp 120.000',
                                style: poppinsKecil.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: blackColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EventCo(),
                            ),
                          );
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: 170.w,
                            height: 60,
                            color: secondaryColor,
                            child: Text(
                              'Beli Sekarang',
                              style: poppinsKecil.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: fifthColor,
                              ),
                            )),
                      )
                    ],
                  )
                ],
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
        height: 35,
        child: Text(
          'Pesan Sekarang',
          style: poppinsKecil.copyWith(
              fontSize: 14, fontWeight: FontWeight.w700, color: whiteColor),
        ),
      ),
    );
  }
}
