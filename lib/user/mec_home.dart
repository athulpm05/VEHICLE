// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/mec_login.dart';
import 'package:flutter_application_4/user/mec_manufature.dart';
import 'package:flutter_application_4/user/mec_service.dart';
import 'package:flutter_application_4/user/mec_success.dart';
import 'package:google_fonts/google_fonts.dart';

class Mec_home1 extends StatefulWidget {
  const Mec_home1({super.key});

  @override
  State<Mec_home1> createState() => _Mec_home1State();
}

class _Mec_home1State extends State<Mec_home1> {
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
        ),

        // ),
      ),
      SafeArea(
        child: Column(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Mec_sucesspass1()));
                  },
                  icon: Icon(
                    Icons.density_medium_outlined,
                    color: Colors.white,
                    size: 20,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    "Home",
                    style: GoogleFonts.inknutAntiqua(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mec_manufature1()));
                    },
                    icon: Icon(
                      Icons.notification_important,
                      color: Colors.white,
                      size: 20,
                    )),
              ),
              //notification
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mlogin1()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  )),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          //text
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Text("Your avilable schedule",

                //google_font

                style: GoogleFonts.inknutAntiqua(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
          ),
          //container and text
          Padding(
            padding: const EdgeInsets.only(top: 50),
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

          //2nd row
          Padding(
            padding: const EdgeInsets.only(top: 40),
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
                          "asset/5bbc46cce9c451bc344b665d7f238ed3.png",
                        ),
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ashiq",
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

          //button
           Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55,top: 150),
//inkwel button
                  child: InkWell(

                    onTap: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>Mec_service()));
                    },

                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[400],
                      ),
                    
                      child: Center(
                        child: Text("Service",style: 
                        TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                      ),
                    ),
                  ),
                ),

                //inkwellbutton 2container
                 Padding(
              padding: const EdgeInsets.only(left: 50,top: 150),
              
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context){
                    return Mec_manufature1();
                   }));
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[400],
                  ),
                
                  child: Center(
                    child: Text("Profle",style: 
                    TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                  ),
                ),
              ),
            ),
              ],
            ),
        ]),
      )
    ]));
  }
}
