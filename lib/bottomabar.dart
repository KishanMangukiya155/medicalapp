import 'package:flutter/material.dart';
import 'package:medicalapp/report.dart';
import 'package:medicalapp/schedule.dart';

import 'homescreen.dart';
import 'notifications.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int home = 0;
  List screen = [HomePage(), Schedule_Screen(), Report(), Notifications()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[home],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: Colors.white,
          unselectedIconTheme: IconThemeData(color: Colors.black26),
          selectedIconTheme: IconThemeData(color: Colors.blue),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          currentIndex: home,
          onTap: (value) {
            setState(() {
              home = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, size: 30), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet, size: 30), label: "Report"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, size: 30),
                label: "Notifications"),
          ]),
    );
  }
}
