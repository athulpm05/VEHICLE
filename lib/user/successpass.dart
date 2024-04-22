// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/user/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Successpass extends StatefulWidget {
  const Successpass({super.key});

  @override
  State<Successpass> createState() => _SuccesspassState();
}

class _SuccesspassState extends State<Successpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[400],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 340),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.black,
          ),

          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 509,
                width: 352,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Stack(
                        children: [
                          // Implement the stroke
                          Text(
                            'Password Changed',
                            style: GoogleFonts.inknutAntiqua(textStyle: TextStyle(
                              fontSize: 26,
                              
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.orange, // Set the stroke color
                            ),)
                          ),
                          // The text inside
                           Text(
                            'Password Changed',
                            style:GoogleFonts.inknutAntiqua( textStyle: TextStyle(
                              fontSize: 26,
                              
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Set the text color
                            ),)
                          ),
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
                          fontSize: 20,
                        )),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "password",
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        )),
                      ),
                    ),
                    //image

                    Padding(
                      padding: const EdgeInsets.only(top: 1),
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
                                builder: (context) => Homepage1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          height: 60,
                          width: 293,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Login",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                          fontSize: 25,
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
          ])
        ],
      ),
    );
  }
}
