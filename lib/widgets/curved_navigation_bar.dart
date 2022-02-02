import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String display = "";
Color color = Colors.blueAccent;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(display, style: GoogleFonts.balooDa()),
          backgroundColor: color,
        ),
        backgroundColor: color,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: color,
          animationCurve: Curves.linear,
          items: const [
            Icon(Icons.add),
            Icon(Icons.home),
            Icon(Icons.search),
          ],
          onTap: (index) {
            setState(() {
              if (index == 0) {
                display = "Add";
                color = Colors.indigoAccent;
              } else if (index == 1) {
                display = "Home";
                color = Colors.indigo;
              } else {
                display = "Search";
                color = Colors.greenAccent;
              }
            });
          },
        ),
        // body: Container(
        //   child: Text(
        //     display,
        //     style: GoogleFonts.bungee(
        //       fontSize: 50,
        //       color: Colors.white,
        //     ),
      ),
    );
  }
}
