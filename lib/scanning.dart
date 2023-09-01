import 'package:flutter/material.dart';
import 'package:medicalapp/pharmacylocation.dart';

class Scanning extends StatefulWidget {
  const Scanning({super.key});

  @override
  State<Scanning> createState() => _ScanningState();
}

class _ScanningState extends State<Scanning> {
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
                        builder: (BuildContext context) =>
                            Pharmacy_Location()));
              },
              child: Container(
                height: 756,
                width: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/AR Scanning.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.clear, color: Colors.white, size: 28),
                      ),
                      SizedBox(height: 400),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F6E8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Scan",
                                    style: TextStyle(
                                        color: Color(0xff1C6BA4), fontSize: 15),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              "Face",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white),
                                gradient: LinearGradient(colors: [
                                  Color(0xff1B6CA6),
                                  Color(0xff1970AE)
                                ])),
                            child: Center(
                                child: Text(
                              "Hair",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color(0xff1B6CA6),
                                  Color(0xff1970AE)
                                ])),
                            child: Center(
                                child: Text(
                              "Nose",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
