import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newsitts/pages/home.dart';
import 'package:newsitts/pages/newsSection.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
            ),
            items: [
              AssetImage("assets/images/gambar1.png"),
              AssetImage("assets/images/gambar1.png"),
              AssetImage("assets/images/gambar1.png"),
              AssetImage("assets/images/gambar1.png"),
            ].map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 77, 76, 76),
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsSection(),
                            ));
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        //child: Center(
                        //child: Text(''),
                        //),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5.0,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigate to new page when the item is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsSection(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/gambar1.png',
                        width: 100.0,
                      ),
                      title: Text('Judul $index'),
                      subtitle: Text('Subjudul $index'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
