import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/config/theme.dart';

class card_CO extends StatelessWidget {
  var jumlah;

  card_CO({super.key, required this.jumlah});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            'assets/icon/event_icon/dummy/g1.png',
            width: 50,
            height: 50,
          ),
          const SizedBox(
            width: 25,
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
                'Rp.120.000',
                style: poppinsKecil.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              )
            ],
          ),
          SizedBox(
            width: 170.w,
          ),
          Text(
            'x $jumlah',
            style: poppinsKecil.copyWith(
                fontSize: 12, fontWeight: FontWeight.w400, color: blackColor),
          )
        ],
      ),
    );
  }
}
