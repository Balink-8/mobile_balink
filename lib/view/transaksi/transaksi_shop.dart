import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme.dart';
import 'berhasil_pesan.dart';

class TransaksiShopPage extends StatelessWidget {
  const TransaksiShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child:
            // ListView.builder(
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     return CardShopSuccess();
            //   },
            // )
            Column(children: [
          // const Text('Transaksi Shop Page'),
          CardShopSuccess(),
          SizedBox(
            height: 13.h,
          ),
          CardShopCancel(),
          SizedBox(
            height: 13.h,
          ),
          CardShopProccess(),
          SizedBox(
            height: 13.h,
          ),
          CardShopSend(),
        ]),
      ),
    );
  }
}

class CardShopSuccess extends StatelessWidget {
  const CardShopSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BerhasilBayarPage()));
      },
      child: SizedBox(
        height: 220.h,
        width: 330.w,
        child: Card(
          // margin: const EdgeInsets.fromLTRB(6, 16, 6, 20),
          // color: Color.fromRGBO(215, 245, 246, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6, top: 16.0, bottom: 6),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: SizedBox(
                        height: 120.h,
                        width: 120.w,
                        child: Image.network(
                          'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
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
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text(
                            'Kemeja Endek Strait Motif Bali Premium',
                            style: poppinsKecil.copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Denpasar, Bali',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp 90.000',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                '1x',
                                style: poppinsKecil.copyWith(
                                    fontSize: 12,
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
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '29 Mei 2023',
                          style: poppinsKecil.copyWith(
                              fontSize: 12,
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
    );
  }
}

class CardShopCancel extends StatelessWidget {
  const CardShopCancel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: 330.w,
      child: Card(
        // margin: const EdgeInsets.fromLTRB(6, 16, 6, 20),
        // color: Color.fromRGBO(215, 245, 246, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 16.0, bottom: 6),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: SizedBox(
                      height: 120.h,
                      width: 120.w,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
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
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Text(
                          'Kemeja Endek Strait Motif Bali Premium',
                          style: poppinsKecil.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'Denpasar, Bali',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp 90.000',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '1x',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12,
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
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '29 Mei 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
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

class CardShopProccess extends StatelessWidget {
  const CardShopProccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: 330.w,
      child: Card(
        // margin: const EdgeInsets.fromLTRB(6, 16, 6, 20),
        // color: Color.fromRGBO(215, 245, 246, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 16.0, bottom: 6),
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
                      'Diproses',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontWeight: FontWeight.w400),
                    ),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: SizedBox(
                      height: 120.h,
                      width: 120.w,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
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
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Text(
                          'Kemeja Endek Strait Motif Bali Premium',
                          style: poppinsKecil.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'Denpasar, Bali',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp 90.000',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '1x',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12,
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
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '29 Mei 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
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

class CardShopSend extends StatelessWidget {
  const CardShopSend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: 330.w,
      child: Card(
        // margin: const EdgeInsets.fromLTRB(6, 16, 6, 20),
        // color: Color.fromRGBO(215, 245, 246, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 16.0, bottom: 6),
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
                      'Dikirim',
                      style: poppinsKecil.copyWith(
                          color: blackColor, fontWeight: FontWeight.w400),
                    ),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: SizedBox(
                      height: 120.h,
                      width: 120.w,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
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
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Text(
                          'Kemeja Endek Strait Motif Bali Premium',
                          style: poppinsKecil.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'Denpasar, Bali',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp 90.000',
                            style: poppinsKecil.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '1x',
                              style: poppinsKecil.copyWith(
                                  fontSize: 12,
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
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '29 Mei 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 12,
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
