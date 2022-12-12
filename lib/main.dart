import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "BUGÜN NE YESEM ?",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: const YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  void getir() {
    setState(() {
      yemekNo = Random().nextInt(4) + 1;
      tatliNo = Random().nextInt(4) + 1;
      corbaNo = Random().nextInt(4) + 1;
    });
  }

  List<String> yemekAdlari = [
    "Karnıyarık",
    "Mantı",
    "Kuru Fasulye",
    "İçli Köfte",
    "Izgara Balık",
  ];
  List<String> corbaAdlari = [
    "Mecimek",
    "Tarhana",
    "Tavuk Suyu",
    "Düğün Çorbası",
    "Yoğurtlu Çorba"
  ];
  List<String> tatliAdlari = [
    "Kadayıf",
    "Baklava",
    "Sütlaç",
    "Kazandibi",
    "Dondurma"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: const ButtonStyle(),
                  onPressed: getir,
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
          ),
          Container(
            width: 220,
            child: const Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: const ButtonStyle(),
                  onPressed: getir,
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
          ),
          Container(
            width: 220,
            child: const Divider(height: 10, color: Colors.black87),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: const ButtonStyle(),
                  onPressed: getir,
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
          ),
          Container(
            width: 220,
            child: const Divider(height: 10, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
