import 'package:baris_aslan/homePage.dart';
import 'package:baris_aslan/testPage.dart';
import 'package:baris_aslan/videos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int selectedPage = 1;

  void returnHomePage() {
    selectedPage = 1;
  }

  List<Widget> pages = <Widget>[
    Videos(),
    HomePage(),
    TestPage(),
  ];

  void getPage(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 248, 182),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 94, 0),
          title: Text(
            "Barış Aslan",
            style: GoogleFonts.montserrat(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: pages[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 255, 98, 0),
          backgroundColor: Colors.white,
          currentIndex: selectedPage,
          onTap: getPage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Videolar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.announcement),
              label: 'Sorular',
            ),
          ],
        ),
      ),
    );
  }
}
