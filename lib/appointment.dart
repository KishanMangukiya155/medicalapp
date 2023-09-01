import 'package:flutter/material.dart';
import 'appointment2.dart';

class Appointment_Screen extends StatefulWidget {
  const Appointment_Screen({super.key, this.image, this.name, this.detail});

  final image;
  final name;
  final detail;

  @override
  State<Appointment_Screen> createState() => _Appointment_ScreenState();
}

class _Appointment_ScreenState extends State<Appointment_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: IconButton(
                      onPressed: () {},
                      icon: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                    )),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("\$", style: TextStyle(fontSize: 10)),
                    ),
                    Text("12",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("/Ap.", style: TextStyle(fontSize: 10)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(widget.image.toString()),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Text(widget.detail.toString(),
                  style: TextStyle(color: Colors.grey)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Color(0xffE09F1F)),
                  SizedBox(
                    width: 5,
                  ),
                  Text("4.5",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(17 reviews)",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(widget.name.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                  color: Color(0xffD7DEEA),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Write your symptoms..",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 13),
            child: Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffDCEDF9),
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(Icons.watch_later,
                            color: Color(0xff1C6BA4), size: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Schedule",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                            SizedBox(height: 5),
                            Text(
                              "6 AM - 9 AM",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 79),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Appointment2_Screen()));
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Color(0xff1C6BA4)),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 13),
            child: Container(
                height: 60,
                width: 360,
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
                                Appointment2_Screen()));
                  },
                  child: Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}
