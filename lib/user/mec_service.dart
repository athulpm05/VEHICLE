// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/mec_calling.dart';
import 'package:flutter_application_4/user/mec_home.dart';
import 'package:google_fonts/google_fonts.dart';

class Mec_service extends StatefulWidget {
  const Mec_service({super.key});

  @override
  State<Mec_service> createState() => _Mec_serviceState();
}

class _Mec_serviceState extends State<Mec_service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(children: [
      SizedBox(
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "asset/65802197753975556e8cc77ae48e2b51.png",
              fit: BoxFit.fitHeight,
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(color: Colors.black.withOpacity(0.3)),
              ),
            ),
          ],
        )
        ),
        //icon button and row
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mec_home1()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 20,
                        )),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text(
                            "Service",
                            style: GoogleFonts.inknutAntiqua(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                      ),  
              ]
              ),
            ),
            Divider(thickness:2,),
            Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Text("Quick sevice",

                //google_font

                style: GoogleFonts.inknutAntiqua(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
          ),

          //container and inkwelll

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              // onTap:() {
              //             Navigator.push(context,
              //              MaterialPageRoute(builder: (context)=>Calling1()));
              //           },
              child: Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "asset/2c0ebbeeb4a776f730d26432b5f25600.png",
                        ),
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shanu",
                                style: GoogleFonts.inknutAntiqua(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))),
                            Text("Kl11af1283",
                                style: GoogleFonts.imprima(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))),
                            Text("ABC house",
                                style: GoogleFonts.imprima(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))),
                            Text("Kottapuram post",
                                style: GoogleFonts.imprima(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))),
                            Text("Kottapuram",
                                style: GoogleFonts.imprima(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))),
                            Text("999999999",
                                style: GoogleFonts.imprima(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => Mec_caling(),));
          }, icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 40,))
          ],
        )]),
        
    );
  }
}