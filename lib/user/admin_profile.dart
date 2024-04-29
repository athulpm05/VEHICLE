// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admin_home.dart';
import 'package:flutter_application_4/user/admin_nitifi.dart';
import 'package:google_fonts/google_fonts.dart';

class Adm_profile extends StatefulWidget {
  const Adm_profile({super.key});

  @override
  State<Adm_profile> createState() => _Adm_profileState();
}

class _Adm_profileState extends State<Adm_profile> {
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
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          ],
        ),
      ),

      Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 23,
                ),
               
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    "Profile",
                    style: GoogleFonts.inknutAntiqua(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Adm_notifi()));
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 23,
                      )),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 5),
          child: Text(
            "Near by mecahic",
            style: GoogleFonts.inknutAntiqua(
                textStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 23,color: Colors.white)),
          ),
        ),
        //first one
        Padding(
          padding: const EdgeInsets.only(top: 50),
          //  child: InkWell(
          //   onTap:() {
          //               Navigator.push(context,
          //                MaterialPageRoute(builder: (context)=>Calling1()));
          //             },
          child: Container(
            height: 120,
            width: 320,
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
                      "asset/e430e9688cf4c7e4504321c11c6713e5.png",
                    ),
                    radius: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Arjun",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "8523561220",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Exp:9 yeras",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Fee:150",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: IconButton(onPressed: (){
                    
                    }, icon: Icon(Icons.wifi_calling_3_sharp,size: 40,)),
                  )
                ],
              ),
            ),
          ),
        ),

        //2snd
         Padding(
          padding: const EdgeInsets.only(top: 25),
          //  child: InkWell(
          //   onTap:() {
          //               Navigator.push(context,
          //                MaterialPageRoute(builder: (context)=>Calling1()));
          //             },
          child: Container(
            height: 120,
            width: 320,
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
                      "asset/e430e9688cf4c7e4504321c11c6713e5.png",
                    ),
                    radius: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rahul",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "8523251220",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Exp:7 yeras",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Fee:170",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: IconButton(onPressed: (){
                    
                    }, icon: Icon(Icons.wifi_calling_3_sharp,size: 40,)),
                  )
                ],
              ),
            ),
          ),
        ),
        //3rd
         Padding(
          padding: const EdgeInsets.only(top: 25),
          //  child: InkWell(
          //   onTap:() {
          //               Navigator.push(context,
          //                MaterialPageRoute(builder: (context)=>Calling1()));
          //             },
          child: Container(
            height: 120,
            width: 320,
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
                      "asset/e430e9688cf4c7e4504321c11c6713e5.png",
                    ),
                    radius: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Manu",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "8543561220",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Exp:8 yeras",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Fee:160",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: IconButton(onPressed: (){
                    
                    }, icon: Icon(Icons.wifi_calling_3_sharp,size: 40,)),
                  )
                ],
              ),
            ),
          ),
        ),


      ])
    ]));
  }
}
