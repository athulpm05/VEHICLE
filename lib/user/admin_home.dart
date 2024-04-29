// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/Uma.dart';
import 'package:flutter_application_4/user/admin_nitifi.dart';
import 'package:flutter_application_4/user/admin_profile.dart';
import 'package:google_fonts/google_fonts.dart';

class Adm_home extends StatefulWidget {
  const Adm_home({super.key});

  @override
  State<Adm_home> createState() => _Adm_homeState();
}

class _Adm_homeState extends State<Adm_home> {
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
            )
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Adm_profile()));
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
              padding: const EdgeInsets.only(left: 93),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Uma1()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  )),
            )
          ],
        ),
        Divider(
          thickness: 2,
        ),


        Padding(
          padding: const EdgeInsets.only(top: 50),
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
                ],
              ),
            ),
          ),
        ),
        //button
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 55, top: 60),
//inkwel button
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Adm_notifi()));
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[400],
                  ),
                  child: Center(
                    child: Text(
                      "Edit",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),

            //inkwellbutton 2container
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 60),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Adm_notifi();
                  }));
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[400],
                  ),
                  child: Center(
                    child: Text(
                      "Delete",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]))
    ]));
  }
}
