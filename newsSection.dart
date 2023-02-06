import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newsitts/pages/dashboard.dart';
import 'package:newsitts/pages/login.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(children: <Widget>[
      Align(
        alignment: Alignment.topLeft,
        child: Text("Hot News",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 5, 51, 105))),
      ),
      Image.asset('assets/images/gambar1.png', width: 420),
      Text('KAMPUS SWASTA BERBASIS INTERNASIONAL',
          style: TextStyle(
              fontSize: 15,
              fontFamily: "Inter",
              height: 2.0,
              color: Color.fromARGB(255, 5, 51, 105)),
          textAlign: TextAlign.center),
      Text(
        'DI TANGERANG SELATAN',
        style: TextStyle(
            fontSize: 15,
            fontFamily: "Inter",
            height: 1.0,
            color: Color.fromARGB(255, 5, 51, 105)),
      ),
      Padding(padding: EdgeInsets.only(bottom: 15.0)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 100,
            height: 35,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.blue),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Semua",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 200, 255),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 35,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.blue),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Prestasi",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 200, 255),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 35,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                side: BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Webinar",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 200, 255),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 35,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                side: BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Penelitian",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 200, 255),
                ),
              ),
            ),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.only(bottom: 15.0)),
      ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        title: Text("Webinar ITTS"),
        subtitle: Text(
            "Statistic, Computer Science dan Business Knowledge Dalam Data Sciences"),
        leading: Image.network(
            "https://itts.ac.id/files/assets/img/berita/13854656V474em01aO60J503n.png"),
        trailing: Text(""),
      ),
      Divider(
        color: Colors.grey,
      ),
      Padding(padding: EdgeInsets.only(bottom: 10.0)),
      ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        title: Text("Webinar ITTS"),
        subtitle: Text(
            "Statistic, Computer Science dan Business Knowledge Dalam Data Sciences"),
        leading: Image.network(
            "https://itts.ac.id/files/assets/img/berita/13854656V474em01aO60J503n.png"),
        trailing: Text(""),
      ),
      Divider(
        color: Colors.grey,
      ),
      Padding(padding: EdgeInsets.only(bottom: 10.0)),
      ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        title: Text("Webinar ITTS"),
        subtitle: Text(
            "Statistic, Computer Science dan Business Knowledge Dalam Data Sciences"),
        leading: Image.network(
            "https://itts.ac.id/files/assets/img/berita/13854656V474em01aO60J503n.png"),
        trailing: Text(""),
      ),
      Divider(
        color: Colors.grey,
      ),
    ])));
  }
}
