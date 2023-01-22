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
          Image.asset(
            'assets/images/logo.png',
            width: 244,
            height: 224,
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          const Text("NEWS",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 5, 51, 105))),
          const Text("Institut Teknologi Tangerang Selatan",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 13, 30, 44))),
          Padding(padding: EdgeInsets.only(bottom: 50.0)),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(20.0),
              label: Text("Masukkan Username"),
              icon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            autocorrect: false,
            obscureText: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(20.0),
              label: Text("Masukkan Password"),
              icon: Icon(Icons.key),
              border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ));
              },
              child: Text("Login")),
        ],
      )),
    );
  }
}
