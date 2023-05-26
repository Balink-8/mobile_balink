import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselView extends StatelessWidget {
  const CarouselView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> picture = [
      'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png',
      'https://i.pinimg.com/originals/a3/89/c1/a389c11d8813d13498e36ac5fb6bd24f.jpg',
      'https://i.ytimg.com/vi/AWcfQxQ-riI/maxresdefault.jpg',
    ];
    // final pictureData = Provider.of<CarouselPicture>(context);
    // final picture = pictureData.pictCarousels;
    return Column(
      children: [
        CarouselSlider(
          items: picture
              .map((item) => ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: 167,
                      width: 310,
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
        ),
      ],
    );
  }
}
