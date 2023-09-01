import 'package:flutter/material.dart';
import 'package:medicalapp/appointment.dart';

import 'medicine_search.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  List<Map<String, dynamic>> image = [
    {
      "image": "assets/images/doc-1.jpg",
      "color": Color(0xff1C6BA4),
    },
    {
      "image": "assets/images/doc-3.jpg",
      "color": Color(0xff008A5E),
    },
    {
      "image": "assets/images/doc-2.jpg",
      "color": Color(0xff008A5E),
    },
  ];
  List<Map<String, dynamic>> dr = [
    {
      "image": "assets/images/dr1.png",
      "name": "Dr. Mim Akhter",
      "detail": "Cardiologist in apollo hospital",
    },
    {
      "image": "assets/images/doc-1.jpg",
      "name": "Dr. Jon Sina",
      "detail": "Cardiologist in apollo hospital",
    },
    {
      "image": "assets/images/doc-2.jpg",
      "name": "Dr.Sanjay Sina",
      "detail": "Cardiologist in apollo hospital",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 20, right: 15),
            child: Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back))),
                SizedBox(width: 80),
                Text("Doctors",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffEEF6FC),
                  filled: true,
                  hintText: "Search doctors...",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Medicine_Search()));
                      },
                      icon: Icon(Icons.tune),
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                Text("Live Doctors",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 20),
            child: Container(
                height: 100,
                width: 360,
                // decoration: BoxDecoration(color: Colors.orangeAccent),
                child: ListView.builder(
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(image[index]['image']),
                              ),
                              Positioned(
                                right: 2,
                                child: CircleAvatar(
                                  minRadius: 8,
                                  backgroundColor: Colors.white,
                                  child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff1c6ba4))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Doctors",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text("See All",
                    style: TextStyle(color: Color(0xff1c6ba4), fontSize: 15)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
                height: 350,
                width: 360,
                //color: Colors.orangeAccent,
                child: ListView.builder(
                  itemCount: dr.length,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Appointment_Screen(
                                          image: dr[index]['image'].toString(),
                                          name: dr[index]['name'].toString(),
                                          detail:
                                              dr[index]['detail'].toString(),
                                        )));
                          },
                          child: Container(
                            height: 110,
                            width: 320,
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            // decoration: BoxDecoration(color: Colors.grey),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    //color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(dr[index]['image']),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(dr[index]['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 9),
                                      Text(dr[index]['detail'],
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(height: 9),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xffE09F1F)),
                                          SizedBox(width: 2),
                                          Text("4.5",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          SizedBox(width: 4),
                                          Text(
                                            "(17 reviews)",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                    color: Color(0xff1C6BA4),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff1C6BA4),
                          blurRadius: 10,
                          offset: Offset(0.5, 0.3),
                          blurStyle: BlurStyle.outer)
                    ]),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Medicine_Search()));
                  },
                  child: Text(
                    "Apply",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}
