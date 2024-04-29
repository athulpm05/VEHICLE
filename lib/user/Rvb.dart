// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/next.dart';

class Rvb extends StatefulWidget {
  const Rvb({super.key});

  @override
  State<Rvb> createState() => _RvbState();
}

class _RvbState extends State<Rvb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "asset/6aea3a97f5fd8ba700caf9f8f7ca3abe.jpeg",
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 300,
            right: 50,
            child: Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage("asset/e3a67eca4d9822941a4e87db3b2397dd.jpeg"),
                fit: BoxFit.cover)
              ),
            
              
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100,right: 25),
            child: Align(
              alignment: Alignment.bottomRight,

              //inkwell

              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Next()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Start",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Icon(Icons.arrow_forward_ios,size: 20,weight: 100,)
                    ],
                  ),
                  decoration:  BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(20),
                   ),
                ),
              ),
            ),
          )

        
        ],
      ),
    );
  }
}
