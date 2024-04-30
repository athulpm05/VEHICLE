// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/calling.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile1 extends StatefulWidget {
  const Profile1({super.key});

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: [
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
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, 
                       icon: Icon(Icons.arrow_back_ios),
                       color: Colors.white,iconSize: 23,),

                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context)=>Calling1()));
                            },
                  
                            icon: Icon(
                              Icons.density_medium_outlined,
                              color: Colors.white,
                              size: 23,
                            )),

                            
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "Profile",
                            style: GoogleFonts.inknutAntiqua(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>Calling1()));
                              },
                  
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 23,
                              )),
                        )
                      ],
                    ),
                ),
              ),
                Divider(color: Colors.white,),
                Padding(
                padding: const EdgeInsets.only(top: 30, left: 5),
                child: Text(
                  "Near by mecahic",
                  style: GoogleFonts.inknutAntiqua(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white)),
                ),
              ),
              //first one
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: InkWell(
                  onTap:() {
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context)=>Calling1()));
                            },
                   child: Container(
                        height: 120,
                        width: 320,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(13)),
                            
                            child:Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(backgroundImage: 
                                  AssetImage("asset/e430e9688cf4c7e4504321c11c6713e5.png",)
                                  ,radius: 40,),
                              
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30,top: 20),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Arjun",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                         Text("8523561220",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                          Text("Exp:9 yeras",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                           Text("Fee:150",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                    
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                   
                      ),
                 ),
               ),
                  //second one
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: InkWell(
                      onTap: () {
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context)=>Calling1()));
                            },
                      child: Container(
                        height: 120,
                        width: 320,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(13)),
                            
                            child:Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(backgroundImage: 
                                  AssetImage("asset/e430e9688cf4c7e4504321c11c6713e5.png",)
                                  ,radius: 40,),
                              
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30,top: 20),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Rahul",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                         Text("9685235677",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                          Text("Exp:7 yeras",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                           Text("Fee:180",style: 
                                        TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                    
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      
                      ),
                    ),
                  ),
                  // third one
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 120,
                      width: 320,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(13)),
                          
                          child:Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                CircleAvatar(backgroundImage: 
                                AssetImage("asset/e430e9688cf4c7e4504321c11c6713e5.png",)
                                ,radius: 40,),
                            
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 20),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Manu",style: 
                                      TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                       Text("8956235612",style: 
                                      TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                        Text("Exp:8 yeras",style: 
                                      TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                         Text("Fee:160",style: 
                                      TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),
                                  
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    
                    ),
                  ),

              
            ],
          )
          ]
    )
    );
  }
}