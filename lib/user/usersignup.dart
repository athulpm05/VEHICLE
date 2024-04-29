// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/login1.dart';
import 'package:google_fonts/google_fonts.dart';

class Usignup extends StatefulWidget {
  const Usignup({super.key});

  @override
  State<Usignup> createState() => _UsignupState();
}

class _UsignupState extends State<Usignup> {
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

      //body

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sign up",

                        //google_font

                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))))
              ],
            ),
            //sizedbox
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 60,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),

                      //label text
                      label: Text(
                        "User Name",textAlign: TextAlign.start,
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(fontSize: 19)),
                      )),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 60,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),

                      //label text
                      label: Text(
                        "Email",
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(fontSize: 19)),
                      )),
                ),
              ),
            ),
            //3erd 4th
            //sizedbox
            Padding(
              padding: const EdgeInsets.only(top: 40),
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
                      label: Text(
                        " Password",
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(fontSize: 19)),
                      )),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
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
                      label: Text(
                        "Confirm Password",
                        style: GoogleFonts.inknutAntiqua(
                            textStyle: TextStyle(fontSize: 18)),
                      )),
                ),
              ),
            ),
            //inkwell button
            InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login1()));
              },
               child: Padding(
                 padding: const EdgeInsets.only(top: 70),
                 child: Container(
                  height: 60,
                  width:320,
                  child: Center(
                    child: Text("Sigin Up",style: GoogleFonts.inknutAntiqua(
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
