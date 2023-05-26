import 'package:flutter/material.dart';
import 'package:mobile_balink/config/theme.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: fifthColor,
      shadowColor: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/icon/event_icon/confirmation_number.png',
                  width: 13,
                  height: 10,
                ),
              ),
              Text(
                'Ticket',
                style: poppinsKecil.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              )
            ],
          ),
          Text(
            'Rp 50.000 - 120.000',
            style: poppinsKecil.copyWith(
                fontSize: 18, fontWeight: FontWeight.w700, color: blackColor),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
