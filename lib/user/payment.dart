// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/review.dart';
import 'package:google_fonts/google_fonts.dart';

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

      
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.line_weight,color: Colors.white,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Text("Payment",style:GoogleFonts.inknutAntiqua(textStyle:
                     TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                     ),
                  )
                ],
              ),
            ),
            Divider(color: Colors.white,),
             Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[400],
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "150",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),

                //
                 Padding(
        padding: const EdgeInsets.only(top: 200),
        child: InkWell(
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>Review1()));
          },
          child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[400],
                    ),
                    child: Center(
                      child: Text(
                        " Next",
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                    ),
                  ),
        ),
      ),
          ],
        ),
        
    );
  }
}