// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admin_manufa.dart';
import 'package:flutter_application_4/user/admin_profile.dart';
import 'package:google_fonts/google_fonts.dart';

class Adm_notifi extends StatefulWidget {
  const Adm_notifi({super.key});

  @override
  State<Adm_notifi> createState() => _Adm_notifiState();
}

class _Adm_notifiState extends State<Adm_notifi> {
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
          )),
      //icon button and row
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Adm_profile()));
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 20,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 62),
              child: Text(
                "Notification",
                style: GoogleFonts.inknutAntiqua(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
        Divider(
          color: Colors.white,
        ),
        //contAINER
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: 300,
            width: 320,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   raj@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Divider(color: Colors.black),
                   Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: Text(
                      "I am disappointed with the mechanicservice.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                                       ),
                   ),
                   Text(
                    "   raj@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),

                ],
              ),
            ),
            
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 250,top: 50),
          child: IconButton(onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Admin_mafure(),));
          }, icon: Icon(Icons.arrow_forward_ios,size: 40,color: Colors.white,)),
        )
      ])
    ]));
  }
}
