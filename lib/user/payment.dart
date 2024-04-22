// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/review.dart';

class Payment1 extends StatefulWidget {
  const Payment1({super.key});

  @override
  State<Payment1> createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: InkWell(
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Review1()));
            },
            child: Container(
                      height: 80,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: Text(
                          " Next",
                          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                        ),
                      ),
                    ),
          ),
        ),
      ),

    );
  }
}