// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admin_resetpass.dart';
import 'package:google_fonts/google_fonts.dart';

class Adm_forgpass extends StatefulWidget {
  const Adm_forgpass({super.key});

  @override
  State<Adm_forgpass> createState() => _Adm_forgpassState();
}

class _Adm_forgpassState extends State<Adm_forgpass> {
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

      //body 

      body: SingleChildScrollView(
        child: Column(
          children: [
             Divider(color: Colors.black,),
            Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 20),
                    child: Text(
                        "We' ll send a verification code this email or phone number",
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600))),
                  ),
                  // Implement the stroke
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 50),
                    child: Text('Forget Password?',
                        style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                            fontSize: 23,
          
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 3.5
                              ..color = Colors.orange, // Set the stroke color
                          ),
                        )),
                  ),
                  // The text inside
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 50),
                    child: Text('Forget Password?',
                        style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                            fontSize: 23,
          
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Set the text color
                          ),
                        )),
                  ),
                ],
              ) ,
        
             //SizedBox
             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: SizedBox(
                height: 60,
                width: 320,

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Adm_resetpass()));
              },
               child: Padding(
                 padding: const EdgeInsets.only(top: 70),
                 child: Container(
                  height: 60,
                  width:320,
                  child: Center(
                    child: Text("Send",style: GoogleFonts.inknutAntiqua(
                       textStyle:  TextStyle(fontSize: 20,color: Colors.white,
                     
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