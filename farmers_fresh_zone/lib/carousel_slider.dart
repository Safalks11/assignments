import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  final List<String> ads = [
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697618692/banner/z8laxsptxhs9dbdaox0h.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697711207/banner/jrfzvbw3jlstr1x2edwx.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697874885/banner/jz1vacuvqyxfpo0k8li9.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697545453/banner/lpeoszjqzzaonlst9loz.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: CarouselSlider(
          items: ads.map((url) {
            return ClipRRect(
              child: Image.network(
                url,
                width: MediaQuery.of(context).size.width,
                height: 200, // Set your desired height
                fit: BoxFit
                    .fill, // Use BoxFit.cover to maintain the aspect ratio
              ),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            height: 200, // Set your desired height
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
