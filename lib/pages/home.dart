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
  int selectedIndex = 1;
  final pilihPageWidget = [
    Dashboard(),
    Account(),
    NewsSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ));
            },
            icon: Image.asset("assets/images/logoSmall.png"),
          ),
        ],
        leading: SizedBox(),
        centerTitle: false,
        title: Text("NEWS"),
      ),
      body: Center(
        child: pilihPageWidget.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Jadwal Kuliah"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
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
