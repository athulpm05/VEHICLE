// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/forgetpassword.dart';
import 'package:flutter_application_4/user/home.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

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
      body: Column(
        children: [
          Divider(color: Colors.black,),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: 60,
              width: 350,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.email_outlined,color: Colors.grey,size: 29,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text("Email",style: TextStyle(fontSize: 25,color: Colors.grey),),
                  )
                ],
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.white,border: Border.all(color: Colors.grey,width: 4)),
            ),
          ),

          //second 
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 350,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.key_rounded,color: Colors.grey,size: 29,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text("Password",style: TextStyle(fontSize: 25,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Icon(Icons.visibility_off_sharp,color: Colors.black,size: 29,),
                  )
                ],
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.white,border: Border.all(color: Colors.grey,width: 4)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),

            child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                return Userposition();
              }));
            },

               child: Text("Forget password ?",style:
              TextStyle(color: Colors.white,fontSize: 22),)),
          ),

          // third
          //inkwellbutton

           InkWell(
            onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>Homepage1()));
            },
             child: Padding(
               padding: const EdgeInsets.only(top: 80),
               child: Container(
                height: height/14,
                width: width-50,
                child: Center(
                  child: Text("Login",style: 
                  TextStyle(fontSize: 25,color: Colors.white,
                   
                  fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Colors.black,border: Border.all(color: Colors.grey,width: 4)),
                         ),
             ),
           ),

           InkWell(
            onTap: (){},
             child: Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Container(
                height: height/14,
                width: width-50,
                child: Center(
                  child: Text("Sign Up",style: 
                  TextStyle(fontSize: 25,color: Colors.white,
                  fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Colors.black,border: Border.all(color: Colors.grey,width: 4)),
                         ),
             ),
           ),
        ],
      ),
      
    );
  }
}