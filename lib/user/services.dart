// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/user/manufacture.dart';
import 'package:flutter_application_4/user/timeshedule.dart';

class Service1 extends StatefulWidget {
  const Service1({super.key});

  @override
  State<Service1> createState() => _Service1State();
}

class _Service1State extends State<Service1> {
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
              iconSize: 40,
              color: Colors.white,
            ),
          ),
          Divider(
            color: Colors.white,
          ),

          //image
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Container(
              height: 90,
              width: 90,
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
                padding: const EdgeInsets.only(left: 22, top: 30),
                child: Container(
                  height: 80,
                  width: 360,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45, top: 10),
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
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                ),
                                Text(
                                  "Experience",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
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
                                        size: 30,
                                      ),
                                      Text(
                                        "100",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Minimum Fee",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22),
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
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 420,
              width: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),

              child: Padding(
                padding: const EdgeInsets.only(top: 30,
                left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manufacture",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          ),
                    ),
                    Text(
                      "All vechile mechanic",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          ),
                    ),
                    //icons
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.circle),
                              Text(
                                " Tvs 2 Wheeler",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                          //2nd
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                Text(
                                  " Yamaha",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                          ),
                          //3rd
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                Text(
                                  " Honda 2 wheeler",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                          ),
                          //4th
                          Padding(
                            padding: const EdgeInsets.only(top: 10,),
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                Text(
                                  " Suzuki",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                          ),
                          //others service
                          Padding(
                            padding: const EdgeInsets.only(right: 230,top: 10),
                            child: Text(
                              "Other service",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  ),
                            ),
                          ),
                          //5th
                          Padding(
                            padding: const EdgeInsets.only(top: 10,),
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                Text(
                                  " 2 Wheeler service",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,),
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                Text(
                                  " Washing",
                                  style: TextStyle(
                                      fontSize: 22,
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
          //            imkwell button
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
//inkwel button
                  child: InkWell(

                    onTap: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>Manufacture()));
                    },

                    child: Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[400],
                      ),
                    
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Quick Services",style: 
                        TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                      ),
                    ),
                  ),
                ),

                //inkwellbutton 2container
                 Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context){
                    return sheduletime();
                   }));
                },
                child: Container(
                  height: 70,
                  width: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[400],
                  ),
                
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Text("Schedule",style: 
                    TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                  ),
                ),
              ),
            ),
              ],
            ),

        ]),
      ]),
    );
  }
}
