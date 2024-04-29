// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/settings.dart';
import 'package:google_fonts/google_fonts.dart';

class Review1 extends StatefulWidget {
  const Review1({super.key});

  @override
  State<Review1> createState() => _Review1State();
}

class _Review1State extends State<Review1> {
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
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          ],
        ),
      ),

      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 23,
                  color: Colors.white,
                ),
              //review text
                Padding(
                        padding: const EdgeInsets.only(top: 10,left: 90),
                        child: Text("Review",style:
                         GoogleFonts.inknutAntiqua(textStyle: 
                         TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),
                      )
              ],
            ),
          ),
          //text
          
          Divider(
            color: Colors.white,
          ),

          //container trasperent
          Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),

                //sizedbox
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 60,
                        width: 340,
                        child: TextFormField(
                          cursorColor: Colors.amber,

                          //boxcolor
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              // fillColor: Colors.white,
                              // filled: true,

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),

                              //label text
                              label: Center(
                                child: Text(
                                  " Email",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ),
                    ),
                    //text
                    Text(
                      " Add your review",
                      style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )),

              //inkwellbutton
               InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings1()));
              },
               child: Padding(
                 padding: const EdgeInsets.only(top: 39,left: 85),
                 child: Container(
                  height: 60,
                  width:200,
                  child: Center(
                    child: Text("Submit",style: GoogleFonts.inknutAntiqua(
                       textStyle:  TextStyle(fontSize: 20,color: Colors.black,
                     
                    fontWeight: FontWeight.bold),),
                    )
                   
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[400],)),
                           ),
               ),
        ]),
      )
    ]));
  }
}
