import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:medicalapp/homescreen.dart';
import 'package:medicalapp/report.dart';

class Schedule_Screen extends StatefulWidget {
  const Schedule_Screen({super.key});

  @override
  State<Schedule_Screen> createState() => _Schedule_ScreenState();
}

class _Schedule_ScreenState extends State<Schedule_Screen> {
  List<Map<String, dynamic>> time = [
    {"time": "12", "time1": "Tue"},
    {"time": "13", "time1": "Wed"},
    {"time": "14", "time1": "Thu"},
    {"time": "15", "time1": "Fri"},
    {"time": "16", "time1": "Stu"},
    {"time": "17", "time1": "Sun"},
  ];
  int selctindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Schedule",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 10),
              child: Container(
                  height: 90,
                  width: 360,
                  //color: Colors.orangeAccent,
                  child: ListView.builder(
                    itemCount: time.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selctindex = index;
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 65,
                          margin:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                          decoration: BoxDecoration(
                              color: selctindex == index
                                  ? Color(0xff1C6BA4)
                                  : Color(0xffdcedf9),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(time[index]['time'],
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: selctindex == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 3),
                              Text(time[index]['time1'],
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: selctindex == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text("12:00 PM", style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 5,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 250,
                    lineThickness: 2.0,
                    dashLength: 5.0,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.transparent,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Color(0xff1C6BA4),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade100.withOpacity(0.5),
                          blurRadius: 0.5,
                          offset: Offset(0.5, 5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            //color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 11.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("12:30 PM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                                SizedBox(height: 2),
                                Text("Dr.Zim Akhter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text("Cardiologist",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 15)),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 60, left: 50),
                              child: Row(
                                children: [
                                  Icon(Icons.more_horiz, color: Colors.grey),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text("11:00 PM", style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 5,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 250,
                    lineThickness: 2.0,
                    dashLength: 5.0,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.transparent,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Color(0xffF1E6EA),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffF1E6EA).withOpacity(0.5),
                          blurRadius: 0.5,
                          offset: Offset(0.5, 5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            //color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 12.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("11:30 PM",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                SizedBox(height: 2),
                                Text("Dr. Shahin Alam",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text("Cardiologist",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 15)),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 60, left: 30),
                              child: Row(
                                children: [
                                  Icon(Icons.more_horiz, color: Colors.grey),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text("10:00 PM", style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 5,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 250,
                    lineThickness: 2.0,
                    dashLength: 5.0,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.transparent,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Color(0xffF1E6EA),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffF1E6EA).withOpacity(0.5),
                          blurRadius: 0.5,
                          offset: Offset(0.5, 5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            //color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 13.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("10:30 PM",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                SizedBox(height: 2),
                                Text("Dr. Mim Akhter",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text("Cardiologist",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 15)),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 60, left: 30),
                              child: Row(
                                children: [
                                  Icon(Icons.more_horiz, color: Colors.grey),
                                ],
                              ),
                            )
                          ],
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
