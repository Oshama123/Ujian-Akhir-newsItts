import "package:flutter/material.dart";
import 'package:newsitts/pages/dashboard.dart';
import 'package:newsitts/pages/login.dart';
import 'package:newsitts/pages/newsSection.dart';
import 'package:newsitts/pages/newsOpened.dart';
import 'package:newsitts/pages/account.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final pilihPageWidget = [
    Dashboard(),
    NewsSection(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ));
            },
            icon: Icon(
              Icons.logout,
              color: Color.fromARGB(255, 79, 81, 83),
            ),
          ),
        ],
        leading: SizedBox(),
        centerTitle: false,
        title: Text("NEWS",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 5, 51, 105))),
      ),
      body: Center(
        child: pilihPageWidget.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 215, 223, 218),
          selectedItemColor: Color.fromARGB(255, 8, 22, 38),
          unselectedItemColor: Color.fromARGB(255, 107, 106, 106),
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ]),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
