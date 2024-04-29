// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admin_sucess.dart';
import 'package:google_fonts/google_fonts.dart';

class Adm_resetpass extends StatefulWidget {
  const Adm_resetpass({super.key});

  @override
  State<Adm_resetpass> createState() => _Adm_resetpassState();
}

class _Adm_resetpassState extends State<Adm_resetpass> {
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
      body: Column(
        children: [Divider(color: Colors.black,),

        //sTACK
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 50),
              child: Text('Reset your password',
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
              padding: const EdgeInsets.only(left: 30, top: 50),
              child: Text('Reset your password',
                  style: GoogleFonts.inknutAntiqua(
                    textStyle: TextStyle(
                      fontSize: 23,

                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Set the text color
                    ),
                  )),
            ),

            //sizedbox

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,top: 150),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: SizedBox(
                        height: 60,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off_outlined)),
                              prefixIcon: Icon(Icons.lock),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                
                              //label text
                              label: Center(
                                child: Text(
                                  "New Password",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(fontSize: 19)),
                                ),
                              )),
                        ),
                      ),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: SizedBox(
                        height: 60,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off_outlined)),
                              prefixIcon: Icon(Icons.lock_clock_sharp),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                
                              //label text
                              label: Center(
                                child: Text(
                                  "Confirm Password",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(fontSize: 18)),
                                ),
                              )),
                        ),
                      ),
                    ),
                
                    //inkwell button
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Adm_sucess1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Container(
                          height: 60,
                          width: 320,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Update",
                                  style: GoogleFonts.inknutAntiqua(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white))),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 51, 49, 49),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

        ],
      ),
    );
  }
}