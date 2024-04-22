// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/resetpass.dart';
import 'package:google_fonts/google_fonts.dart';

class Userposition extends StatefulWidget {
  const Userposition({super.key});

  @override
  State<Userposition> createState() => _UserpositionState();
}

class _UserpositionState extends State<Userposition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[400],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 340),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            },
             icon: Icon(Icons.arrow_back_ios),iconSize: 40,color: Colors.white,),
             
          ),
          
        ],
      ),

      //body 

      body: SingleChildScrollView(
        child: Column(
          children: [
             Divider(color: Colors.black,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Forget Password?",
               
               //google_font
               
               style: GoogleFonts.inknutAntiqua(textStyle: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
               ))),
             ),
        
             Padding(
               padding: const EdgeInsets.only(top: 150,left: 20),
               child: Text("We' ll send a verification code this email or phone number",
               style:  GoogleFonts.inknutAntiqua(textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600
               ))),
             ),
        
             //SizedBox
             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: SizedBox(
                height: 60,
                width: 350,

                child: TextFormField(

                  //boxcolor
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                  ),

                  //label text
                  label: Center(
                    child: Text("Type Email",
                    style: GoogleFonts.inknutAntiqua(
                       textStyle: TextStyle(fontSize: 20)
                    ),),
                  )
                  ),
                ),
               ),
             ),
        
             //inkwell button
              InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Resetpass()));
              },
               child: Padding(
                 padding: const EdgeInsets.only(top: 70),
                 child: Container(
                  height: 60,
                  width:350,
                  child: Center(
                    child: Text("Send",style: GoogleFonts.inknutAntiqua(
                       textStyle:  TextStyle(fontSize: 25,color: Colors.white,
                     
                    fontWeight: FontWeight.bold),),
                    )
                   
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.black,)),
                           ),
               ),
             
        
        
          ],
        ),
      ),
    );
  }
}