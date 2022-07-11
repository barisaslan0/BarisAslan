import 'dart:math';

import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  int numberThumbnail = 0;

  List thumbnails = [
    Image.asset("assets/images/Hepsiburada 3.jpg"),
    Image.asset("assets/images/Mikrofon 8.jpg"),
    Image.asset("assets/images/Gaomon S620 04.jpg"),
    Image.asset("assets/images/Ege 03.jpg"),
    Image.asset("assets/images/Trakya Part 1 07.jpg"),
    Image.asset("assets/images/Trakya Part 2.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Youtube"),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("YouTube Video Kapak Fotoğraflarım"),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: thumbnails[numberThumbnail],
                ),
                Container(
                  width: 300,
                  child: Divider(
                    color: Colors.red,
                    thickness: 3,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                  onPressed: () {
                    setState(() {
                      numberThumbnail = Random().nextInt(6);
                    });
                  },
                  child: Text(
                    "Fotoğrafı Değiştir",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("GERİ")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
