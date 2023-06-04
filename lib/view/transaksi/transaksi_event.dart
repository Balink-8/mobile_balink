import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme.dart';

class TransaksiEventPage extends StatefulWidget {
  const TransaksiEventPage({super.key});

  @override
  State<TransaksiEventPage> createState() => _TransaksiEventPageState();
}

class _TransaksiEventPageState extends State<TransaksiEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Column(children: [
          // const Text('Transaksi Event Page'),
          CardEventSuccess(),
          SizedBox(
            height: 13.h,
          ),
          // CardEventSuccess(),
          SizedBox(
            height: 220.h,
            width: 330.w,
            child: Card(
              // margin: const EdgeInsets.fromLTRB(6, 16, 6, 16),
              // color: Color.fromRGBO(215, 245, 246, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, top: 16.0, bottom: 6),
                    child: Container(
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          // Replace with your desired background color
                          borderRadius: BorderRadius.circular(
                              20.0), // Replace with your desired border radius
                        ),
                        // color: thirdColor,
                        child: Center(
                          child: Text(
                            'Dibatalkan',
                            style: poppinsKecil.copyWith(
                                color: blackColor, fontWeight: FontWeight.w400),
                          ),
                        )),
                  ),
                  Row(
                    children: [
                      // CarouselView(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: SizedBox(
                            height: 120.h,
                            width: 120.w,
                            child: Image.network(
                              'https://www.duniart.com/wp-content/uploads/2020/03/Makepung-14-08-528-2048x1365.jpg'
                              // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                              ,
                              fit: BoxFit.cover,
                              // scale: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color:
                                    thirdColor, // Replace with your desired background color
                                borderRadius: BorderRadius.circular(
                                    4.0), // Replace with your desired border radius
                              ),
                              // color: thirdColor,
                            ),
                            Text(
                              'Festival Makepung',
                              style: poppinsKecil.copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Kab. Jembrang',
                              style: poppinsKecil.copyWith(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rp 90.000',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    '1x',
                                    style: poppinsKecil.copyWith(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Text(
                              'Event Berlangsung',
                              style: poppinsKecil.copyWith(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '29 Mei 2023',
                              style: poppinsKecil.copyWith(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CardEventSuccess extends StatelessWidget {
  const CardEventSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: 330.w,
      child: Card(
        // margin: const EdgeInsets.fromLTRB(6, 16, 6, 16),
        // color: Color.fromRGBO(215, 245, 246, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 6,
                top: 16.0,
                bottom: 6,
              ),
              child: Container(
                  height: 30.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    // Replace with your desired background color
                    borderRadius: BorderRadius.circular(
                        20.0), // Replace with your desired border radius
                  ),
                  // color: thirdColor,
                  child: Center(
                    child: Text(
                      'Berhasil dipesan',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontWeight: FontWeight.w400),
                    ),
                  )),
            ),
            Row(
              children: [
                // CarouselView(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: SizedBox(
                      height: 120.h,
                      width: 120.w,
                      child: Image.network(
                        'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
                        // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                        ,
                        fit: BoxFit.cover,
                        // scale: 25.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              thirdColor, // Replace with your desired background color
                          borderRadius: BorderRadius.circular(
                              4.0), // Replace with your desired border radius
                        ),
                        // color: thirdColor,
                      ),
                      Text(
                        'Festival Ogoh - Ogoh',
                        style: poppinsKecil.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Denpasar, Bali',
                        style: poppinsKecil.copyWith(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp 90.000',
                            style: poppinsKecil.copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '1x',
                              style: poppinsKecil.copyWith(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        'Event Berlangsung',
                        style: poppinsKecil.copyWith(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '29 Mei 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
