import 'package:flutter/material.dart';
import 'package:medicalapp/homescreen.dart';
import 'package:medicalapp/pharmacylocation.dart';

import 'appointment.dart';

class Medicine_Search extends StatefulWidget {
  const Medicine_Search({super.key});

  @override
  State<Medicine_Search> createState() => _Medicine_SearchState();
}

class _Medicine_SearchState extends State<Medicine_Search> {
  List<Map<String, dynamic>> pharmacy = [
    {
      "image": "assets/images/phar-1.png",
      "location": "Virgo Pharma",
      "km": "2km away"
    },
    {
      "image": "assets/images/phar-2.png",
      "location": "Virgo Pharma",
      "km": "2km away"
    },
    {
      "image": "assets/images/phar-1.png",
      "location": "Virgo Pharma",
      "km": "2km away"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      },
                      icon: Icon(Icons.arrow_back),
                    )),
                SizedBox(width: 30),
                Icon(Icons.location_on_rounded),
                SizedBox(width: 5),
                Text("Dhanmondi,Dhaka", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                Text("Pharmacy Nearby",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Container(
              height: 230,
              width: 360,
              //color: Colors.black12,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: pharmacy.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white24,
                        )
                      ],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Pharmacy_Location(
                                          image: pharmacy[index]['image'],
                                          location: pharmacy[index]['location'],
                                        )));
                          },
                          child: Container(
                            height: 130,
                            width: 190,
                            margin: EdgeInsets.symmetric(horizontal: 0),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(pharmacy[index]['image']),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(pharmacy[index]['location'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(height: 5),
                              Text(pharmacy[index]['km'],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Color(0xffE09F1F)),
                              SizedBox(width: 5),
                              Text("4.5")
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Upload Prescription",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "We will show the pharmacy that got\n             all the medicine.",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 180,
            width: 280,
            decoration: BoxDecoration(
              color: Color(0xffE4E9F1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 2)
                          ]),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share,
                            color: Color(0xff1C6BA4), size: 30),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Share Link"),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 2)
                          ]),
                      child: IconButton(
                        icon: Icon(Icons.upload,
                            color: Color(0xffE09F1F), size: 30),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Upload"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 13),
            child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Appointment_Screen()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}
