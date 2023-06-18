import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme.dart';

class EvenCardWidget extends StatelessWidget {
  const EvenCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      key: const Key('cardEventHome'),
      // color: Color.fromRGBO(215, 245, 246, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          // CarouselView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: 87.h,
                width: 94.w,
                child: Image.network(
                  key: const Key('imageEventHome'),
                  'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
                  // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                  ,
                  fit: BoxFit.cover,
                  // scale: 25.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              right: 35.0,
            ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        key: const Key('dateEventHome'),
                        '12 Jan 2023',
                        style: poppinsKecil.copyWith(
                            fontSize: 10.sp,
                            color: const Color.fromRGBO(247, 245, 245, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    key: const Key('titleEventHome'),
                    'Title Event',
                    style: poppinsKecil.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Color.fromRGBO(194, 129, 62, 1),
                      size: 15,
                    ),
                    const SizedBox(
                      width: 6.67,
                    ),
                    Text(
                      key: const Key('eventLocationHome'),
                      'Event Location',
                      style: poppinsKecil.copyWith(
                        fontSize: 12.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
