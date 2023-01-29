import "package:flutter/material.dart";
import 'package:newsitts/pages/dashboard.dart';
import 'package:newsitts/pages/newsSection.dart';

class open extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('HOT NEWS', textAlign: TextAlign.start),
          Container(
            margin: EdgeInsets.all(13),
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/images/gambar1.png',
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 0),
          Container(
            padding: EdgeInsets.all(0.0),
            child: Text(
              'Ditinjau 18 Maret 2021. Ahmad Baharu Tim Developer',
              style: TextStyle(fontSize: 11.0),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Dalam mewujudkan sebuah kota dengan sumberdaya yang cerdas, modern, serta relijius seperti cita-cita Pemerintah Tangerang Selatan, perlu dibangun sebuah instansi Pendidikan yang akan mendukung aspek tersebut. Setelah melalui perjuangan panjang dan banyak tantangan, Yayasan Pendidikan Tangerang Selatan berhasil merancang sebuah perguruan tinggi yang memiliki misi sama dengan tujuan Pemerintah Tangerang Selatan. Yayasan Pendidikan Tangerang Selatan mendirikan kampus Institut Teknologi Tangerang Selatan. Institut Teknologi Tangerang Selatan (ITTS) merupakan perguruan tinggi swasta berlatar belakang Kampus IT yang terletak di kawasan metropolitan Bumi Serpong Damai (BSD). Tepatnya berada di Komplek Komersial BSD, Jl. Raya Serpong Jl. Komp. Bsd No.Kav. 9, Lengkong Karya, Kec. Serpong Utara, Kota Tangerang Selatan, Banten 15117.',
              style: TextStyle(fontSize: 14.0),
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
