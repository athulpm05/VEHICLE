// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/about.dart';
import 'package:flutter_application_4/user/manufacture.dart';
import 'package:flutter_application_4/user/payment.dart';
import 'package:flutter_application_4/user/timeshedule.dart';
import 'package:google_fonts/google_fonts.dart';

class Help1 extends StatefulWidget {
  const Help1({super.key});

  @override
  State<Help1> createState() => _Help1State();
}

class _Help1State extends State<Help1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      //image blurrer
      SizedBox(
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('asset/65802197753975556e8cc77ae48e2b51.png',
                fit: BoxFit.cover),
            ClipRRect(
              // Clip it cleanly.
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
            SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 10),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 60),
                        child: Text(
                          "Help center",
                          style: GoogleFonts.inknutAntiqua(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 90),
                    child: Text(
                      "How can we help?",
                      style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 50, left: 32),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Aboutus()));
                          },
                          child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 10),
                                  child: Icon(
                                    Icons.search,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70,top: 5),
                                  child: Text(
                                    "Search",
                                    style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4
                                            ..color = Colors.black,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70,top: 5),
                                  child: Text('Search',
                                      style: GoogleFonts.inknutAntiqua(
                                        textStyle: TextStyle(
                                          fontSize: 20,

                                          fontWeight: FontWeight.bold,
                                          color: Colors
                                              .white, // Set the text color
                                        ),
                                      )),
                                ),
                              ])))),

                              //steps in rows& inkwell button

                              Padding(
                                padding: const EdgeInsets.only(top: 50,left: 10),
                                child: InkWell(
                                  onTap: () => Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) =>Payment1())),
                                  child: Row(
                                    children: [
                                      Icon(Icons.payment_outlined,
                                      color: Colors.white,size: 23,),
                                      Text(
                                      "   Payment",
                                      style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                                                          ),
                                                          
                                    ],
                                  ),
                                ),
                              ),
                              Divider(color: Colors.white,) ,
                              //row in second&inkwell button
                              Padding(
                                padding: const EdgeInsets.only(top: 25,left: 10),
                                child: InkWell(
                                  onTap: () => Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) =>sheduletime())),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_month,
                                      color: Colors.white,size: 23,),
                                      Text(
                                      "   Schedule",
                                      style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                                                          ),
                                                          
                                    ],
                                  ),
                                ),
                              ),
                              Divider(color: Colors.white,) ,
                              //3rd row and inkwell button

                               Padding(
                                padding: const EdgeInsets.only(top: 25,left: 10),
                                child: InkWell(
                                  onTap: () => Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) =>Manufacture())),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bookmarks_outlined,
                                      color: Colors.white,size: 23,),
                                      Text(
                                      "   Booking",
                                      style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                                                          ),
                                                          
                                    ],
                                  ),
                                ),
                              ),
                              Divider(color: Colors.white,) 
                ]))
          ],
        ),
      ),
    ]));
  }
}
