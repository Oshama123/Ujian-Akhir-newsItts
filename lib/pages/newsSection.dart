import "package:flutter/material.dart";

class NewsSection extends StatelessWidget {
  const NewsSection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 195, 192),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/bg1.jpg"),
            ),
            Text(
              "Laode Muhammad Oshama Abdillah",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              "1003200012",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Teknik Informatika",
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
