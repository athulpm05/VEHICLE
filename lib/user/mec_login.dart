// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/mec%20_fog%20_pass.dart';
import 'package:flutter_application_4/user/mec_home.dart';

class Mlogin1 extends StatefulWidget {
  const Mlogin1({super.key});

  @override
  State<Mlogin1> createState() => _Mlogin1State();
}

class _Mlogin1State extends State<Mlogin1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
          height: double.infinity,
          child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              "asset/65802197753975556e8cc77ae48e2b51.png",
              fit: BoxFit.fitHeight,
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(color: Colors.white.withOpacity(0.3)),
              ),
            )
          ])),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
          ),

      //cntainer

      Padding(
        padding: const EdgeInsets.only(left: 20, top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                height: 60,
                width: 320,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                        size: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 4)),
              ),
            ),

            //second
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 60,
                width: 320,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.key_rounded,
                        color: Colors.grey,
                        size: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Icon(
                        Icons.visibility_off_sharp,
                        color: Colors.black,
                        size: 23,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Mec_frgpass();
                    }));
                  },
                  child: Text(
                    "Forget password ?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),

            // third
            //inkwellbutton

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mec_home1()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  height: 60,
                  width: 320,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      border: Border.all(color: Colors.grey, width: 4)),
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
