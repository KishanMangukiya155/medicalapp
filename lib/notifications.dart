import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Map<String, dynamic>> notifications = [
    {
      "image": "assets/images/Vector-1.png",
      "name": "14 Messages",
      "name1": "Check your schedule Today",
      "color": Color(0xffFEE1E6),
    },
    {
      "image": "assets/images/Vector-2.png",
      "name": "3 Schedules!",
      "name1": "Check your schedule Today",
      "color": Color(0xffDCEDF9),
    },
    {
      "image": "assets/images/vector-3.png",
      "name": "Medicine",
      "name1": "Check your schedule Today",
      "color": Color(0xffFAF0DB),
    },
    {
      "image": "assets/images/Vector-4.png",
      "name": "Vaccine Update",
      "name1": "Check your schedule Today",
      "color": Color(0xffD6F6FF),
    },
    {
      "image": "assets/images/Vector-5.png",
      "name": "App Update",
      "name1": "Check your schedule Today",
      "color": Color(0xffF2E3E9),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
          Container(
              height: 610,
              width: 360,
              // color: Colors.grey,
              child: ListView.builder(
                itemCount: notifications.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: Container(
                      height: 100,
                      width: 360,
                      margin:
                          EdgeInsets.symmetric(vertical: 0.5, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.grey),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              blurStyle: BlurStyle.normal,
                              offset: Offset.infinite),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: notifications[index]['color'],
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          notifications[index]['image']))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(notifications[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  SizedBox(height: 8),
                                  Text(notifications[index]['name1'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
