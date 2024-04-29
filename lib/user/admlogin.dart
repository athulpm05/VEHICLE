// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/admin.forgpass.dart';
import 'package:flutter_application_4/user/admin_home.dart';

class Admlogin extends StatefulWidget {
  const Admlogin({super.key});

  @override
  State<Admlogin> createState() => _AdmloginState();
}

class _AdmloginState extends State<Admlogin> {
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
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 23,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(children: [
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: 60,
              width: 320,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                      size: 23,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 4)),
            ),
          ),

          //second
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 320,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.key_rounded,
                      color: Colors.grey,
                      size: 23,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Icon(
                      Icons.visibility_off_sharp,
                      color: Colors.black,
                      size: 23,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 4)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Adm_forgpass();
                  }));
                },
                child: Text(
                  "Forget password ?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),

          // third
          //inkwellbutton

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Adm_home()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 60,
                width: 320,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    border: Border.all(color: Colors.grey, width: 4)),
              ),
            ),
          ),
        ]));
  }
}
