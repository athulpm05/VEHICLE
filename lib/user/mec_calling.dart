// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';

class Mec_caling extends StatefulWidget {
  const Mec_caling({super.key});

  @override
  State<Mec_caling> createState() => _Mec_calingState();
}

class _Mec_calingState extends State<Mec_caling> {
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
      //iocon and divider
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
              iconSize: 23,
              color: Colors.white,
            ),
          ),
          Divider(
            color: Colors.white,
          ),

          //container
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 80),
            child: Container(
                height: 100,
                width: 320,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rahul",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "8985868475",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ],
                  ),
                )),
          ),

          //details of vechicle
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Container(
              height: 400,
              width: 320,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 10),
                    child: Row(
                      children: [
                        Text(
                          "Vechicle name",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                         Text(
                          " : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                         Text(
                          "Bajaj pulsar",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Divider(color: Colors.black,),
                  ),

                   Padding(
                     padding: const EdgeInsets.only(left: 10,top: 20),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                                "Registration number",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                               Text(
                            "Eg :KL11AF1283",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                           Text(
                            "Kilometers",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                           Text(
                            "Manf Year : 2018",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                          Row(
                        children: [
                          Text(
                            "Complaint",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                           Text(
                            " : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                           Text(
                            " Starting problem",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ],
                      ),
                       ],
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Divider(color: Colors.black,),
                  ),
                  //3rd row
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                             Text(
                              " : ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                             Text(
                              "Address",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                          ],),
                  ),

                  //callbutton
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.add_ic_call_sharp,size: 40,)),
                  )


                ],
              ),
              
            ),
          )
        ],
      ),
    ]));
  }
}
