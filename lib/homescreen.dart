import 'package:flutter/material.dart';
import 'package:medicalapp/doctors.dart';
import 'package:medicalapp/schedule.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> list1 = [
    {
      'icon': "assets/images/Doctor Icon.png",
    },
    {
      'icon': "assets/images/Group (1).png",
    },
    {
      'icon': "assets/images/noun-medical-test-2972712 1.png",
    },
    {
      'icon': "assets/images/Group.png",
    },
  ];
  List<Map<String, dynamic>> appointments = [
    {
      "date": "12",
      "week": "Tue",
      "time": "09:30 AM",
      "name": "Dr.Mim Akhter",
      "detail": "Depression",
      "color1": Color(0xff4187C2),
      "bcolor": Color(0xff1C6BA4),
    },
    {
      "date": "12",
      "week": "Tue",
      "time": "11:30 AM",
      "name": "Dr.Shahin Alam",
      "detail": "Cardiologist",
      "color1": Color(0xffE09F1F),
      "bcolor": Color(0xffFAF0DD),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\u{1F44B} Hello!", style: TextStyle(fontSize: 19)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "John doe!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Rectangle 9.png"),
                      height: 50,
                      width: 50,
                    ),
                    Positioned(
                        right: -2,
                        child: CircleAvatar(
                          minRadius: 8,
                          backgroundColor: Colors.white,
                          child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff1c6ba4))),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffEEF6FC),
                  filled: true,
                  hintText: "Search medical...",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 18,
            ),
            child: Row(
              children: [
                Text("Services",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 7),
            child: Container(
                height: 70,
                width: 360,
                // color: Colors.yellow,
                child: ListView.builder(
                  itemCount: list1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Doctors()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        //color: Colors.black,
                        margin:
                            EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(list1[index]['icon']),
                                fit: BoxFit.cover)),
                      ),
                    );
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
            child: Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xffDCEDF9),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get the Best\nMedical Service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                            "Lorem Ipsum is simply dummy\ntext of the printing",
                            style: TextStyle(color: Colors.grey, fontSize: 13)),
                      ],
                    ),
                  ),
                  //SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                    ),
                    child: Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          // color: Colors.redAccent,
                          image: DecorationImage(
                              image: AssetImage('assets/images/Group 187.png'),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text("Upcoming Appointments",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Container(
              height: 130,
              width: 360,
              // color: Colors.redAccent,
              child: ListView.builder(
                itemCount: appointments.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: 280,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                        color: appointments[index]['bcolor'],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              offset: Offset(0.0, 3.0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                              color: appointments[index]['color1'],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(appointments[index]['date'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(appointments[index]['week'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 145),
                                  child: Icon(Icons.more_horiz,
                                      color: Colors.white),
                                ),
                                Text(appointments[index]['time'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                                SizedBox(height: 5),
                                Text(appointments[index]['name'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                SizedBox(height: 5),
                                Text(appointments[index]['detail'],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
