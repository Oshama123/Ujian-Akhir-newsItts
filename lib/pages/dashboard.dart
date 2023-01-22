import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newsitts/pages/login.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 215, 215),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
              icon: Icon(
                Icons.logout,
                color: Color.fromARGB(255, 118, 118, 118),
              ),
            ),
          ],
          elevation: 5,
          leading: Container(
            child: Image.asset(
              'assets/images/logoSmall.png',
            ),
          ),
          centerTitle: false,
          title: Text("NEWS",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: Color.fromARGB(255, 8, 67, 134),
              )),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
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
