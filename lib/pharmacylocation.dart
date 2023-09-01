import 'package:flutter/material.dart';

import 'messages.dart';

class Pharmacy_Location extends StatefulWidget {
  const Pharmacy_Location({super.key, this.image, this.location});

  final image;
  final location;

  @override
  State<Pharmacy_Location> createState() => _Pharmacy_LocationState();
}

class _Pharmacy_LocationState extends State<Pharmacy_Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Messages()));
              },
              child: Container(
                height: 756,
                width: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/ar 1.png"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 310,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(widget.image),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Near California",
                                        style: TextStyle(color: Colors.grey)),
                                    SizedBox(height: 8),
                                    Text(widget.location,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.black12)),
                                            child: Icon(
                                              Icons.location_on,
                                              size: 12,
                                            )),
                                        SizedBox(width: 5),
                                        Text("10.5",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        SizedBox(width: 3),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, top: 3),
                                          child: Text("Km",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.black12),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(
                                              Icons.access_time,
                                              size: 12,
                                            )),
                                        SizedBox(width: 5),
                                        Text("30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        SizedBox(width: 3),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, top: 3),
                                          child: Text("Min",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
