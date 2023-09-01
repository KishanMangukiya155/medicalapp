import 'package:flutter/material.dart';
import 'package:medicalapp/scanning.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Scanning()));
            },
            child: Container(
              height: 756,
              width: 360,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment(0.8, 2),
                      colors: [
                        Color(0xff1f005c),
                        Color(0xff5b0060),
                        Color(0xff870160),
                        Color(0xffac255e),
                        Color(0xffca485c),
                        Color(0xffe16b5c),
                        Color(0xfff39060),
                        Color(0xffffb56b),
                      ]),
                  // color: Colors.redAccent,
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic_call.png"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          // color: Colors.pink,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Rectangle 13.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 400),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Md Shahin Alam",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text("00:30:00",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Icon(
                              Icons.voice_over_off,
                              color: Color(0xff7A84B2),
                            )),
                        SizedBox(width: 20),
                        Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffF73859),
                                borderRadius: BorderRadius.circular(40)),
                            child: Icon(
                              Icons.call,
                              color: Colors.white,
                            )),
                        SizedBox(width: 20),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Icon(Icons.video_call)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
