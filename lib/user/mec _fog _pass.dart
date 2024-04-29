// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/mec_resetpass.dart';
import 'package:google_fonts/google_fonts.dart';

class Mec_frgpass extends StatefulWidget {
  const Mec_frgpass({super.key});

  @override
  State<Mec_frgpass> createState() => _Mec_frgpassState();
}

class _Mec_frgpassState extends State<Mec_frgpass> {
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
                  child: Container(color: Colors.white.withOpacity(0.3)),
                ),
              )
            ])),
            //iconbutton AND DIVIDER
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () => Navigator.pop(context), 
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 23,)),
                  Divider(),
                ],
              ),
            ),
            
        //colum
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 250, left: 20),
                    child: Text(
                        "We' ll send a verification code this email or phone number",
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600))),
                  ),
                  // Implement the stroke
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 150),
                    child: Text('Forget Password?',
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
                    padding: const EdgeInsets.only(left: 70, top: 150),
                    child: Text('Forget Password?',
                        style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                            fontSize: 23,
          
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Set the text color
                          ),
                        )),
                  ),
                ],
              ) ,
              //container
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: SizedBox(
                  height: 60,
                  width: 320,
                  child: TextFormField(
                    //boxcolor
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
          
                        //label text
                        label: Center(
                          child: Text(
                            "Type Email",
                            style: GoogleFonts.inknutAntiqua(
                                textStyle: TextStyle(fontSize: 20)),
                          ),
                        )),
                  ),
                ),
              ),
          
              //inkwell button
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mec_rstpass1()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                      height: 60,
                      width: 320,
                      child: Center(
                          child: Text(
                        "Send",
                        style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
