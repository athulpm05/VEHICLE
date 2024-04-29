// ignore_for_file: prefer_const_constructors, sort_child_properties_last, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/mec_login.dart';
import 'package:google_fonts/google_fonts.dart';

class Mec_sucesspass1 extends StatefulWidget {
  const Mec_sucesspass1({super.key});

  @override
  State<Mec_sucesspass1> createState() => _Mec_sucesspass1State();
}

class _Mec_sucesspass1State extends State<Mec_sucesspass1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: double.infinity,
            child: Stack(fit: StackFit.expand, children: [
              Image.asset(
                "asset/65802197753975556e8cc77ae48e2b51.png",
                fit: BoxFit.fitHeight,
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(color: Colors.black.withOpacity(0.3)),
                ),
              )
            ])),
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
              Divider(),
            ],
          ),
        ),

        //image and container

        Padding(
          padding: const EdgeInsets.only(left: 20,top: 100),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 509,
                width: 320,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white.withOpacity(0.2),
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
                                  color: Colors.white, // Set the text color
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
                          color: Colors.white,
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
                          color: Colors.white,
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mlogin1()));
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
      ]),
    );
  }
}
