// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admlogin.dart';
import 'package:google_fonts/google_fonts.dart';

class Adm_sucess1 extends StatefulWidget {
  const Adm_sucess1({super.key});

  @override
  State<Adm_sucess1> createState() => _Adm_sucess1State();
}

class _Adm_sucess1State extends State<Adm_sucess1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body:
          //iconbutton AND DIVIDER
          Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 23,
                    )),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),

          //container and image
          Padding(
            padding: const EdgeInsets.only(left: 2, top: 50),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  height: 509,
                  width: 320,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Stack(
                          children: [
                            // Implement the stroke
                            Text('Password Changed',
                                style: GoogleFonts.inknutAntiqua(
                                  textStyle: TextStyle(
                                    fontSize: 23,

                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 2
                                      ..color =
                                          Colors.orange, // Set the stroke color
                                  ),
                                )),
                            // The text inside
                            Text('Password Changed',
                                style: GoogleFonts.inknutAntiqua(
                                  textStyle: TextStyle(
                                    fontSize: 23,

                                    fontWeight: FontWeight.bold,
                                    color: Colors.black, // Set the text color
                                  ),
                                )),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          "you’re successfully changed",
                          style: GoogleFonts.inknutAntiqua(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18,
                          )),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "password",
                          style: GoogleFonts.inknutAntiqua(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18,
                          )),
                        ),
                      ),
                      //image

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 90,
                          width: 90,
                          child: Image.asset("asset/images (8).png"),
                        ),
                      ),

                      // button
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Admlogin()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            height: 60,
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Login",
                                    style: GoogleFonts.inknutAntiqua(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 51, 49, 49),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
