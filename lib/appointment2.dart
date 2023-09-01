import 'package:flutter/material.dart';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:medicalapp/payment.dart';

class Appointment2_Screen extends StatefulWidget {
  const Appointment2_Screen({super.key});

  @override
  State<Appointment2_Screen> createState() => _Appointment2_ScreenState();
}

class _Appointment2_ScreenState extends State<Appointment2_Screen> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38, left: 20, right: 20),
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
                  SizedBox(width: 50),
                  Text("Appointment",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            DatePicker(
              initialDate: DateTime.now(),
              minDate: DateTime(2021, 1, 1),
              maxDate: DateTime(2023, 12, 31),
              onDateChanged: (value) {},
            ),
            Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xff1C6BA4),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 20,
                      spacing: 10,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff1C6BA4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Text(
                            "09:30 AM",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffE09F1F),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Text(
                            "10:30 AM",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff1C6BA4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Text(
                            "11:00 AM",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff1C6BA4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Text(
                            "11:30 AM",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff1C6BA4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Text(
                            "12:00 AM",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff1C6BA4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                              child: Text(
                            "12:30 AM",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Payment_Method()));
                        },
                        child: Container(
                          height: 65,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Make Appointment",
                            style: TextStyle(
                                color: Color(0xff1C6BA4), fontSize: 18),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
