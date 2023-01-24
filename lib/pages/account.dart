import "package:flutter/material.dart";
import 'package:newsitts/pages/home.dart';
import 'package:newsitts/pages/login.dart';

class Account extends StatelessWidget {
  const Account({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/gambar1.png"),
            ),
            Text(
              "Laode Muhammad Oshama Abdillah",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, height: 4.0),
            ),
            Text(
              "username",
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}
