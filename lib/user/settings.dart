// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/about.dart';
import 'package:flutter_application_4/user/changepassword.dart';
import 'package:flutter_application_4/user/help.dart';
import 'package:flutter_application_4/user/logout.dart';
import 'package:flutter_application_4/user/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings1 extends StatefulWidget {
  const Settings1({super.key});

  @override
  State<Settings1> createState() => _Settings1State();
}

class _Settings1State extends State<Settings1> {
  String dropvalue = 'English';

  List Language = ["English", "Hindi", "Malayalam", "Tamil"];

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

      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                  IconButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //  MaterialPageRoute(builder: (context)=>Calling1()));
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Settings",
                      style: GoogleFonts.inknutAntiqua(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]))),
        Divider(),

        //traspernt withopasity
        Padding(
            padding: const EdgeInsets.only(top: 75, left: 10, right: 10),
            child: Container(
              height: 460,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.language,
                          size: 35,
                        ),
                        Text(
                          "  Language",
                          style: GoogleFonts.inknutAntiqua(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),

                        // dropdown button

                        // DropdownButton<String>(
                        //   value: dropvalue,
                        //   items: Language.map<DropdownMenuItem<String>>(
                        //       (String val) {
                        //     return DropdownMenuItem<String>(
                        //       value: val,
                        //       child: Text(val, style: TextStyle(fontSize: 20)),
                        //     );
                        //   }).toList(),
                        //   onChanged: (String? newValue) {
                        //     setState(() {
                        //       dropvalue = newValue!;
                        //     });
                        //   },
                        // ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  //2nd  inkwellbutton
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Changepass1(),
                          )),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 35,
                            ),
                            Text(
                              "  Change password",
                              style: GoogleFonts.inknutAntiqua(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                  Divider(color: Colors.black),

                  //3rd
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Help1(),
                          )),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.help,
                              size: 35,
                            ),
                            Text(
                              "  Help",
                              style: GoogleFonts.inknutAntiqua(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                  Divider(color: Colors.black),

                  //4th inkwell button
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Aboutus(),
                          )),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.co_present_outlined,
                              size: 35,
                            ),
                            Text(
                              "  About us",
                              style: GoogleFonts.inknutAntiqua(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                  Divider(color: Colors.black),
                  //5th inkwellbutton
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile1(),
                          )),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_3_rounded,
                              size: 35,
                            ),
                            Text(
                              "  Profile",
                              style: GoogleFonts.inknutAntiqua(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                  Divider(color: Colors.black),
                  //6th inkwell button
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Logout1(),
                          )),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.logout,
                              size: 35,
                            ),
                            Text(
                              "  Logout",
                              style: GoogleFonts.inknutAntiqua(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            )),
      ])
    ]));
  }
}
