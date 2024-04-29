// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/payment.dart';

class sheduletime extends StatefulWidget {
  const sheduletime({super.key});

  @override
  State<sheduletime> createState() => _sheduletimeState();
}

class _sheduletimeState extends State<sheduletime> {
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
          Divider(
            color: Colors.white,
          ),
           Container(
                height: 80,
                width: 360,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[400],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    "choose your",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
                  ),
                ),
              ),
              //inkwell
               Padding(
                 padding: const EdgeInsets.all(8.0),

                 child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment1()));
                  },
                   child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[400],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45, top: 15),
                      child: Text(
                        "continue",
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                      ),
                    ),
                                 ),
                 ),
               ),

        ]),
      ]
      ),
    
    );
  }
}