import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
      options: CarouselOptions(height: 230.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              child: Center(
                child: Image.asset(
                  'assets/images/gambar1.png',
                  width: 420,
                ),
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}
