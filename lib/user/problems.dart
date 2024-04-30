// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/user/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class Problems extends StatefulWidget {
  const Problems({super.key});

  @override
  State<Problems> createState() => _ProblemsState();
}

class _ProblemsState extends State<Problems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 23,
                        color: Colors.white,
                      )),
                ),
                Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 48),
                  child: Text(
                    "Enter your  problem’s",
                    style: GoogleFonts.inknutAntiqua(
                        textStyle:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 23,color: Colors.white)),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top: 50,left: 20),
                   child: SizedBox(
                    height: 250,
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        )
                      ),
                    ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
            
                  child: InkWell(
                     onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile1()));
                    },
                    child: Container(
                      height: 60,
                      width: 150,
                      
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 25,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(left: 105,top: 50),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile1()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      child:  Center(
                        child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                      ),
                    
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
