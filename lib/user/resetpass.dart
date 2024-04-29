// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/successpass.dart';
import 'package:google_fonts/google_fonts.dart';

class Resetpass extends StatefulWidget {
  const Resetpass({super.key});

  @override
  State<Resetpass> createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[400],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            },
             icon: Icon(Icons.arrow_back_ios),
             iconSize: 23,color: Colors.white,),
             
          ),
          
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Divider(color: Colors.black,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Reset your Password", 
                   
                   //google_font
                   
                   style: GoogleFonts.inknutAntiqua(textStyle: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                   ))),
            ),
            //sizedbox
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: SizedBox(
                height: 60,
                width: 320,
                child: TextFormField( decoration: InputDecoration(
                      
                        suffixIcon: IconButton(onPressed: (){},
                         icon: Icon(Icons.visibility_off_outlined)),
                        prefixIcon: Icon(Icons.lock),
                        fillColor: Colors.white,
                        filled: true,
              
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                      ),
              
                      //label text
                      label: Center(
                        child: Text("New Password",
                        style: GoogleFonts.inknutAntiqua(
                           textStyle: TextStyle(fontSize: 19)
                        ),),
                      )
                      ),),
              ),
            ),
        
        
             Padding(
               padding: const EdgeInsets.only(top: 60),
               child: SizedBox(
                height: 60,
                width: 320,
                child: TextFormField( decoration: InputDecoration(
                  
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined)),
                        prefixIcon: Icon(Icons.lock_clock_sharp),
                        fillColor: Colors.white,
                        filled: true,
               
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                      ),
               
                      //label text
                      label: Center(
                        child: Text("Confirm Password",
                        style: GoogleFonts.inknutAntiqua(
                           textStyle: TextStyle(fontSize: 18)
                        ),),
                      )
                      ),),
                         ),
             ),
        
             //inkwell button
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Successpass()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 60,
                    width: 320,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Update",
                      style: GoogleFonts.inknutAntiqua(textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                         ))),                  ],
                    ),
                    decoration:  BoxDecoration(color:const Color.fromARGB(255, 51, 49, 49),borderRadius: BorderRadius.circular(20),
                     ),
                  ),
                ),
              ),
          ],
          
        ),
      ),
    );
  }
}