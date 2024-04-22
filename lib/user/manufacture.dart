// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:ui';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/user/timeshedule.dart';

class Manufacture extends StatefulWidget {
  const Manufacture({super.key});

  @override
  State<Manufacture> createState() => _ManufactureState();
}

class _ManufactureState extends State<Manufacture> {
  String dropvalue = 'Bmw';
  List Vehiclename = ["Bmw", "Audi", "Unicorn", "Ape"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 40,
              color: Colors.white,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 20),
            child: Container(
              height: 140,
              width: 149,
              decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          "asset/e430e9688cf4c7e4504321c11c6713e5.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 500,
              width: 420,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),

              //deatils of vehicle
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 86, top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.construction_outlined,
                          size: 30,
                        ),
                        Text(
                          "  Manufacture",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.directions_car_filled,
                          size: 38,
                        ),
                        Text(
                          "  Vehicle name",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),

                        //dropdown button

                        // DropdownButton(
                        //     iconSize: 55,
                        //     padding: EdgeInsets.only(left: 70),
                        //     value: dropvalue,
                        //     items: Vehiclename.map((String option) {
                        //       return DropdownMenuItem(
                        //           value: option, child: Text(option));
                        //     }).toList(),
                        //     onChanged: (String? newValue) {
                        //       setState(() {
                        //         dropvalue = newValue!;
                        //       });
                        //       print(dropvalue);
                        //     }),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  //2nd
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.format_list_numbered_rtl_rounded,
                            size: 38,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Registration number",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "   Eg : KL11 AF 1283",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  //3rd

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.speed_rounded,
                            size: 38,
                          ),
                          Text(
                            "  Kilometers",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ]),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  //4th
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.crib_sharp,
                            size: 38,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Manufacture type",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "   Eg : 2018",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  //5th
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 38,
                          ),
                          Text(
                            "  Discribe your complaint",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),

          //inkwell
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return sheduletime();
                }));
              },
              child: Container(
                height: 80,
                width: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[400],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    "Book",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
