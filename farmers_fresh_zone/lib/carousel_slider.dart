import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel_Slider extends StatefulWidget {
  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  var ads = [
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697618692/banner/z8laxsptxhs9dbdaox0h.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697711207/banner/jrfzvbw3jlstr1x2edwx.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697874885/banner/jz1vacuvqyxfpo0k8li9.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1697545453/banner/lpeoszjqzzaonlst9loz.jpg',
    'https://scontent-del1-1.xx.fbcdn.net/v/t1.6435-9/198795150_4972502546134866_6452719905953119953_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=300f58&_nc_ohc=ii_e0gLYXZgAX9qzXdL&_nc_ht=scontent-del1-1.xx&oh=00_AfCKZ3H13ZTgrtNMWFaMZD7Uk27gyNuchgNQpS7ru3gLQg&oe=655F9B6E',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: CarouselSlider(
          items: List.generate(
              ads.length,
              (index) => ClipRRect(
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.network(
                          ads[index],
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.fill,
                        )),
                  )),
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            height: 200,
            onPageChanged: (index, reason) {
              // Handle page change
              currentIndex = index;
            },
          ),
        ),
      ),
    );
  }
}
