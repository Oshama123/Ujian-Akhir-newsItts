// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:newsitts/pages/dashboard.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://itts.ac.id/files/assets/img/slider/3w191Q5RUmc0483nJ644kVV66.png',
            width: 400,
            height: 400,
          ),
          const Text("Institut Teknologi Tangerang Selatan",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 13, 30, 44))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ));
                  },
                  child: Text("Login")),
            ],
          ),
        ],
      )),
    );
  }
}
