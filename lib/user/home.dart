// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/problems.dart';
import 'package:flutter_application_4/user/successpass.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
              "asset/65802197753975556e8cc77ae48e2b51.png",
              fit: BoxFit.fitHeight,),
              ClipRRect(
                child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
                child: Container(color: Colors.white.withOpacity(0.3)),),
                
              )
              ],
            ),
             
              
            // ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Problems()));
                        },

                        icon: Icon(
                          Icons.density_medium_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Text(
                        "Home",
                        style: GoogleFonts.inknutAntiqua(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 93),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Successpass()));
                          },

                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 40,
                          )),
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                ),

                //sized box
                Stack(children: [
                  //    SizedBox(
                  //   height: 50,
                  //   width: 320,
                  //   child: TextFormField(
                  //     decoration: InputDecoration(
                  //         prefixIcon: Icon(
                  //           Icons.search,
                  //           size: 40,
                  //           color: Colors.white,
                  //         ),
                  //         hintText: "Search",
                  // hintStyle: GoogleFonts.inknutAntiqua(
                  //     textStyle: TextStyle(
                  //     foreground: Paint()
                  //         ..style = PaintingStyle.stroke
                  //         ..strokeWidth = 2
                  //         ..color = Colors.white, ),
                  //         ),
                  //         border: OutlineInputBorder()),
                  //   ),

                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20),

                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Problems()));
                      },
                      child: Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                          border: Border.all(width: 5,color: Colors.black),
                        ),
                        
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.search,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Text(
                                "Search",
                                style: GoogleFonts.inknutAntiqua(
                                  textStyle: TextStyle(
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 2
                                        ..color = Colors.black,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                      
                              child: Text('Search',
                                  style: GoogleFonts.inknutAntiqua(
                                    textStyle: TextStyle(
                                      fontSize: 25,
                      
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white, // Set the text color
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text("Choose your vehicle",style: GoogleFonts.inknutAntiqua(
                      textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                      foreground: Paint()
                      ..style=PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.black),
                      
                    ),),
                  ),

                  //textsecond color
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text('Choose your vehicle',
                                style: GoogleFonts.inknutAntiqua(
                                  textStyle: TextStyle(
                                    fontSize: 30,
                    
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[300], // Set the text color
                                  ),
                                )),
                  ),

                  //  vehicles
                 
                  Padding(
                    padding: const EdgeInsets.only(top: 200),

                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Problems()));
                      },
                      child: Container(
                        height: 95,
                        width: 345,
                      
                        //listtile
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 10),
                          child: ListTile( 
                          title: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text("Two wheeler",style: GoogleFonts.inknutAntiqua(
                              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                          ),
                            // ClipRRect
                            leading: ClipRRect(
                              child: Image.asset("asset/c352b8fe1313b58ffd0a0ae3ca3c846e.png"),
                             borderRadius: BorderRadius.circular(10))
                          ),
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]
                        ),
                      ),
                    ),
                  ),

                  //three wheeler
                  Padding(
                    padding: const EdgeInsets.only(top: 320),
                    
                    child: InkWell(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Problems()));
                      },
                      child: Container(
                          height: 95,
                          width: 345,
                        
                          //listtile
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: ListTile( 
                            title: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text("Three wheeler",style: GoogleFonts.inknutAntiqua(
                                textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                            ),
                              // ClipRRect
                              leading: ClipRRect(
                                child: Image.asset("asset/8e3bd2ba452c3a0c374d0b007fe36eac.png"),
                               borderRadius: BorderRadius.circular(10))
                            ),
                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]
                          ),
                        ),
                    ),
                  ),

                  //four wheeler
                   Padding(
                    padding: const EdgeInsets.only(top: 440),

                    child: InkWell(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Problems()));
                      },
                      child: Container(
                          height: 95,
                          width: 345,
                        
                          //listtile
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: ListTile( 
                            title: Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text("Four wheeler",style: GoogleFonts.inknutAntiqua(
                                textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                            ),
                              // ClipRRect
                              leading: ClipRRect(
                                child: Image.asset("asset/03cfe5b9094c68a9477eddda787b3196.png"),
                               borderRadius: BorderRadius.circular(10))
                            ),
                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]
                          ),
                        ),
                    ),
                  ),

                  //six wheeler
                   Padding(
                    padding: const EdgeInsets.only(top: 560),

                    child: InkWell(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Problems()));
                      },
                      child: Container(
                          height: 95,
                          width: 345,
                        
                          //listtile
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: ListTile( 
                            title: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text("Six wheeler",style: GoogleFonts.inknutAntiqua(
                                textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                            ),
                              // ClipRRect
                              leading: ClipRRect(
                                child: Image.asset("asset/c98c62833c071e839679caaef7e2dd3d.png"),
                               borderRadius: BorderRadius.circular(10))
                            ),
                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]
                          ),
                        ),
                    ),
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
