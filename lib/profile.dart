import 'package:flutter/material.dart';
import 'package:medicalapp/videocall.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C6BA4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff1C6BA4),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ))),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff1C6BA4),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        VideoCall()));
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Rectangle 9.png"),
                            fit: BoxFit.fitHeight),
                        borderRadius: BorderRadius.circular(20))),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Shahin Alam",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                SizedBox(height: 5),
                Text("Designer", style: TextStyle(color: Colors.white)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
              child: Column(
                children: [
                  TextField(
                      autofocus: false,
                      style: TextStyle(backgroundColor: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings, color: Color(0xff4A545E)),
                        ),
                        hintText: "Account Settings",
                        hintStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  SizedBox(height: 20),
                  TextField(
                      style: TextStyle(backgroundColor: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon:
                            Icon(Icons.privacy_tip, color: Color(0xff4A545E)),
                        hintText: "Privacy Policy ",
                        hintStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  SizedBox(height: 20),
                  TextField(
                      style: TextStyle(backgroundColor: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.settings_applications,
                            color: Color(0xff4A545E)),
                        hintText: "App Settings",
                        hintStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  SizedBox(height: 20),
                  TextField(
                      style: TextStyle(backgroundColor: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon:
                            Icon(Icons.payment, color: Color(0xff4A545E)),
                        hintText: "Payment Settings",
                        hintStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      )),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    color: Color(0xffBECADA),
                    size: 25,
                  )),
              Text("Log Out",
                  style: TextStyle(color: Color(0xffBECADA), fontSize: 20)),
            ]),
          ],
        ),
      ),
    );
  }
}
