// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 55, 55),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, top: 40),
        child: Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 23,
                color: Colors.white,
              ),
              Divider(
                indent: 0,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 10 ),
              child: Text(
                  "Remote vehicle breakdown assistance services provide help to drivers who experience vehicle trouble on the road, especially in remote areas. These services can be particularly useful when you're stranded and unsure of how to get help. They typically offer a variety of services.",
                  style: GoogleFonts.inknutAntiqua(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ))),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Everywhere Anytime",
                    style: GoogleFonts.inknutAntiqua(
                        textStyle:
                            TextStyle(fontSize: 20, color: Color(0xff4285F4))),
                  ),
                  Text("Assistance for your  Vehicle",style: GoogleFonts.inknutAntiqua(
                        textStyle:
                            TextStyle(fontSize: 20, color: Color(0xff4285F4))),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
