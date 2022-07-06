import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
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
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                      radius: 85,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage(
                        "assets/images/Profil Fotosu 5 büyük daire.png",
                      )),
                  Text(
                    "Barış Aslan",
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Divider(
                      height: 30,
                      thickness: 3,
                      color: Colors.black,
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    color: Color.fromARGB(255, 255, 200, 0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: Text(
                        "baris.aslan100@gmail.com",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    color: Color.fromARGB(255, 255, 200, 0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        "+90 555 201 00 00",
                        style: GoogleFonts.montserrat(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
