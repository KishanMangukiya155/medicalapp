import 'package:flutter/material.dart';
import 'package:medicalapp/profile.dart';

class Payment_Method extends StatefulWidget {
  const Payment_Method({
    super.key,
  });

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
  List<Map<String, dynamic>> card = [
    {
      "image": "assets/images/visa.png",
      "name": "Available balance",
      "bal": "\$3,578.99",
      "color": Color(0xff1C6BA4),
    },
    {
      "image": "assets/images/mastcard.png",
      "name": "Available balance",
      "bal": "\$5,856.99",
      "color": Color(0xffE09F1F),
    }
  ];
  List<Map<String, dynamic>> payment = [
    {
      "image": "assets/images/pay.png",
    },
    {
      "image": "assets/images/payo.png",
    },
    {
      "image": "assets/images/visa2.png",
    },
  ];
  int selcteindex = 0;
  bool isChecked = false;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                Text("Payment Method",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
            child: Container(
              height: 190,
              width: 360,
              //color: Colors.redAccent,
              child: PageView.builder(
                itemCount: 2,
                onPageChanged: (value) {
                  setState(() {
                    selcteindex = value;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 190,
                        width: 300,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            color: card[index]['color'],
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    card[index]['name'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    card[index]['bal'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ],
                              ),
                              Container(
                                height: 70,
                                width: 90,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(card[index]['image']))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    pageController.animateToPage(index,
                        duration: Duration(seconds: 2),
                        curve: Curves.decelerate);
                  },
                  child: CircleAvatar(
                      maxRadius: 5,
                      backgroundColor: selcteindex == index
                          ? Color(0xff1C6BA4)
                          : Colors.blue.shade100),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Select Option",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 200,
              width: 360,
              margin: EdgeInsets.zero,
              // color: Colors.grey,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: payment.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 60,
                      width: 360,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 0.9, strokeAlign: 0.9),
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          // Container(
                          //     height: 30,
                          //     width: 30,
                          //     decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius: BorderRadius.circular(10),
                          //         border: Border.all(color: Colors.black))),
                          SizedBox(width: 20),
                          Image(
                              image: AssetImage(payment[index]['image']),
                              height: 100,
                              width: 120),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 70),
            child: Container(
                height: 55,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}
