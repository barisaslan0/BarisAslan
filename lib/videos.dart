import 'dart:math';
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
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
    return ListView.builder(
        itemCount: thumbnails.length,
        itemBuilder: (context, index) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: thumbnails[index]),
            ),
          );
        });
  }
}
