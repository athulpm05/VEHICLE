// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/help.dart';
import 'package:google_fonts/google_fonts.dart';

class Changepass1 extends StatefulWidget {
  const Changepass1({super.key});

  @override
  State<Changepass1> createState() => _Changepass1State();
}

class _Changepass1State extends State<Changepass1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      //image blurrer
      SizedBox(
          height: double.infinity,
          child: Stack(fit: StackFit.expand, children: [
            Image.asset('asset/65802197753975556e8cc77ae48e2b51.png',
                fit: BoxFit.cover),
            ClipRRect(
              // Clip it cleanly.
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
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
                        padding: const EdgeInsets.only(top: 40, left: 30),
                        child: Text(
                          "Change password",
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
                  //sizedbox with textformfield

                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: SizedBox(
                      height: 60,
                      width: 320,
                      child: TextFormField(
                        //boxcolor
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),

                            //label text
                            label: Center(
                              child: Text(
                                "Current password",
                                style: GoogleFonts.inknutAntiqua(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 195, 194, 194))),
                              ),
                            )),
                      ),
                    ),
                  ),
                  //2nd sizedbox
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: SizedBox(
                      height: 60,
                      width: 320,
                      child: TextFormField(
                        //boxcolor
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),

                            //label text
                            label: Center(
                              child: Text(
                                "New password",
                                style: GoogleFonts.inknutAntiqua(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 195, 194, 194))),
                              ),
                            )),
                      ),
                    ),
                  ), 
                  //3rd box
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: SizedBox(
                      height: 60,
                      width: 320,
                      child: TextFormField(
                        //boxcolor
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),

                            //label text
                            label: Center(
                              child: Text(
                                "Confirm password",
                                style: GoogleFonts.inknutAntiqua(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 195, 194, 194))),
                              ),
                            )),
                      ),
                    ),
                  ),

                  //inkwell button
                  Padding(
                    padding: const EdgeInsets.only(left: 110,top: 100),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder:(context) => Help1(),));
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[400],
                        ),
                        child: Center(
                          child: Text(
                            "Reset",
                            style:GoogleFonts.inknutAntiqua(
                              textStyle: 
                              TextStyle(fontWeight: FontWeight.w800, fontSize: 20),)
                          ),
                        ),
                                     ),
                    ),
                  ),
                ]))
          ]))
    ]));
  }
}
