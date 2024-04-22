// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/user/manufacture.dart';
import 'package:flutter_application_4/user/services.dart';

class Calling1 extends StatefulWidget {
  const Calling1({super.key});

  @override
  State<Calling1> createState() => _Calling1State();
}

class _Calling1State extends State<Calling1> {
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
      
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 40,
              color: Colors.white,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          //image
          Center(
            child: Container(
              height: 140,
              width: 149,
              decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          "asset/e430e9688cf4c7e4504321c11c6713e5.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          //inkwell

          Padding(
            padding: const EdgeInsets.only(top: 100, left: 45),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Service1()));
              },
              child: Container(
                height: 100,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(right: 55, top: 15),
                  child: Column(
                    children: [
                      Text(
                        "Arjun",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ringing ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 25),
                            ),
                            Icon(
                              Icons.phone,
                              size: 32,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]),
              ),
            ),
          )
        ],
      ),
    ]));
  }
}
