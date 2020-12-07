import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> carouselImages = [
  'assets/images/demo.png',
  'assets/images/anna_logo.png',
  'assets/images/demo.png',
  'assets/images/demo.png',
];

class CarouselEffect extends StatelessWidget {
  const CarouselEffect({
    @required this.carouselSlider,
  });

  final CarouselController carouselSlider;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselSlider,
      options: CarouselOptions(
        initialPage: 0,
        autoPlayAnimationDuration: Duration(seconds: 2),
        autoPlayInterval: Duration(seconds: 4),
        scrollPhysics: BouncingScrollPhysics(),
        enlargeCenterPage: true,
        autoPlay: true,
        enableInfiniteScroll: true,
      ),
      items: carouselImages.map((imgUrl) {
        return Builder(builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black54,
              //     offset: Offset(0.0, 2.0),
              //     blurRadius: 6.0,
              //     spreadRadius: 1.5,
              //   ),
              // ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          );
        });
      }).toList(),
    );
  }
}
