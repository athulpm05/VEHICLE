// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/login1.dart';
import 'package:google_fonts/google_fonts.dart';

class Logout1 extends StatefulWidget {
  const Logout1({super.key});

  @override
  State<Logout1> createState() => _Logout1State();
}

class _Logout1State extends State<Logout1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 55, 55),
      body: Padding(
        padding: const EdgeInsets.only(left: 5,top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             IconButton(onPressed: (){
        
                Navigator.pop(context);
              },
               icon: Icon(Icons.arrow_back_ios),iconSize: 40,color: Colors.white,),
               Divider(indent:0,),

               
                
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 25),
                  child: Text("Are you sure want to logout",
                   style:GoogleFonts.inknutAntiqua(textStyle: 
                   TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800))),
                ),
                //inkwell button
                
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 50,top: 100),
                     child: InkWell(
                       onTap: () => Navigator.push(context, 
                     MaterialPageRoute(builder: (context) =>Login1() ,)),
                       child: Container(
                        height: 35,
                        width: 105,
                        decoration: BoxDecoration(shape: BoxShape.rectangle,
                        color: const Color.fromRGBO(158, 158, 158, 1),borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text("Yes ",
                             style:GoogleFonts.inknutAntiqua(textStyle: 
                             TextStyle(color: Colors.black,
                             fontSize: 25,fontWeight: FontWeight.w800))),
                        ) ,
                       ),
                     ),
                   ),
                   //inkwell button
                    InkWell(
                    //  onTap: () => Navigator.push(context, 
                    //  MaterialPageRoute(builder: (context) => ,)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100,top: 100),
                        child: Container(
                         height: 35,
                         width: 105,
                         decoration: BoxDecoration(shape: BoxShape.rectangle,
                         color: const Color.fromRGBO(158, 158, 158, 1),borderRadius: BorderRadius.circular(20)),
                         child: Center(
                           child: Text("No ",
                              style:GoogleFonts.inknutAntiqua(textStyle: 
                              TextStyle(color: Colors.black,
                              fontSize: 25,fontWeight: FontWeight.w800))),
                         ) ,
                        ),
                      ),
                    )
                 ],
               )
               
          ],
        ),
      ),
    );
  }
}