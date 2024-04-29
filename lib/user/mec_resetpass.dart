// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/Uma.dart';
import 'package:flutter_application_4/user/mec_success.dart';
import 'package:google_fonts/google_fonts.dart';

class Mec_rstpass1 extends StatefulWidget {
  const Mec_rstpass1({super.key});

  @override
  State<Mec_rstpass1> createState() => _Mec_rstpass1State();
}

class _Mec_rstpass1State extends State<Mec_rstpass1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
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
                  child: Container(color: Colors.white.withOpacity(0.3)),
                ),
              )
            ])),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Uma1(),
                      )),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 23,
                  )),
              Divider(),
            ],
          ),
        ),

        //column

        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 150),
              child: Text('Reset your password',
                  style: GoogleFonts.inknutAntiqua(
                    textStyle: TextStyle(
                      fontSize: 23,

                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3.5
                        ..color = Colors.orange, // Set the stroke color
                    ),
                  )),
            ),
            // The text inside
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 150),
              child: Text('Reset your password',
                  style: GoogleFonts.inknutAntiqua(
                    textStyle: TextStyle(
                      fontSize: 23,

                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set the text color
                    ),
                  )),
            ),

            //sizedbox

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 180),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: SizedBox(
                        height: 60,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off_outlined)),
                              prefixIcon: Icon(Icons.lock),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                
                              //label text
                              label: Center(
                                child: Text(
                                  "New Password",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(fontSize: 19)),
                                ),
                              )),
                        ),
                      ),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: SizedBox(
                        height: 60,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off_outlined)),
                              prefixIcon: Icon(Icons.lock_clock_sharp),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                
                              //label text
                              label: Center(
                                child: Text(
                                  "Confirm Password",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(fontSize: 18)),
                                ),
                              )),
                        ),
                      ),
                    ),
                
                    //inkwell button
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mec_sucesspass1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Container(
                          height: 60,
                          width: 320,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Update",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
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
            )
          ],
        ),
      ],
    ));
  }
}
