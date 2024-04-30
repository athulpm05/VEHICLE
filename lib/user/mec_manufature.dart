// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/mec_calling.dart';

class Mec_manufature1 extends StatefulWidget {
  const Mec_manufature1({super.key});

  @override
  State<Mec_manufature1> createState() => _Mec_manufature1State();
}

class _Mec_manufature1State extends State<Mec_manufature1> {
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

        //image
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 30),
          child: Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                        "asset/e430e9688cf4c7e4504321c11c6713e5.png"),
                    fit: BoxFit.fill)),
          ),
        ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 40),
              child: Container(
                height: 80,
                width: 320,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "5+ Year",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              Text(
                                "Experience",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee_sharp,
                                      size: 25,
                                    ),
                                    Text(
                                      "100",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Minimum Fee",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        //transpernt in container
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 350,
            width: 400,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Manufacture",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "All vechile mechanic",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  //icons
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                            ),
                            Text(
                              " Tvs 2 Wheeler",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                        //2nd
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              Text(
                                " Yamaha",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                        //3rd
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              Text(
                                " Honda 2 wheeler",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                        //4th
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              Text(
                                " Suzuki",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                        //others service
                        Padding(
                          padding: const EdgeInsets.only(right: 230, top: 5),
                          child: Text(
                            "Other service",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        //5th
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              Text(
                                " 2 Wheeler service",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              Text(
                                " Washing",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
      //new button
      Padding(
        padding: const EdgeInsets.only(left: 300, top: 40),
        child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mec_caling(),
                  ));
            },
            icon: Icon(
              Icons.navigate_next_outlined,
              color: Colors.white,
              size: 40,
            )),
      )
    ]));
  }
}
