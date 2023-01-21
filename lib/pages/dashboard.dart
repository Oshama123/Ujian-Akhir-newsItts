import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 195, 192),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sistem Akademik Mahasiswa"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            'https://itts.ac.id/files/assets/img/slider/16ohI6xb61034q3165Ce1LQ06.png',
            width: 400,
            height: 400,
          ),
          const Text("Institut Teknologi Tangerang Selatan",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 13, 30, 44))),
        ],
      )),
    );
  }
}
