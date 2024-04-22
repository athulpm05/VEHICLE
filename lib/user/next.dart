// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/login1.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 192,
              width: 262,
              child: Image.asset("asset/77078cadda3232d2d4bb71a69262246c.png",fit: BoxFit.fill,),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login1()));
              },
              child: Container(
                height: 60,
                width: 180,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios,size: 45,weight: 100,color: Colors.white,)
                  ],
                ),
                decoration:  BoxDecoration(color:const Color.fromARGB(255, 51, 49, 49),borderRadius: BorderRadius.circular(20),
                 ),
              ),
            ),
          )
        ],
      ) ,
    );
  }
}