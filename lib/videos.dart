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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text("YouTube Video Kapak Fotoğraflarım"),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: thumbnails[numberThumbnail],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 300,
              child: Divider(
                color: Colors.red,
                thickness: 3,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
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
          ),
        ),
      ],
    );
  }
}
