// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admlogin.dart';
import 'package:flutter_application_4/user/mec_login.dart';
import 'package:flutter_application_4/user/usersignup.dart';

class Uma1 extends StatefulWidget {
  const Uma1({super.key});

  @override
  State<Uma1> createState() => _Uma1State();
}

class _Uma1State extends State<Uma1> {
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

      body:Column(
        children: [
          Divider(color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: InkWell(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Usignup(),));
              },
              child: Container(
                  height: 60,
                  width: 320,
                  child: Center
                  (child: Text("User",style: 
                  TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                  color: Colors.black),)),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,border: Border.all(color: Colors.grey,width: 4)),
                ),
            ),
          ),
          //2nd
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Mlogin1(),));
              },
              child: Container(
                  height: 60,
                  width: 320,
                  child: Center
                  (child: Text("Mechanic",style: 
                  TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                  color: Colors.black),)),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,border: Border.all(color: Colors.grey,width: 4)),
                ),
            ),
          ),
          //3rd
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Admlogin(),));
              },
              child: Container(
                  height: 60,
                  width: 320,
                  child: Center
                  (child: Text("Admin",style: 
                  TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                  color: Colors.black),)),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,border: Border.all(color: Colors.grey,width: 4)),
                ),
            ),
          ),
        ],
      ) ,
    );
  }
}