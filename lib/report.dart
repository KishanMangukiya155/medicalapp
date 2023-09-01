import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  List<Map<String, dynamic>> report = [
    {
      "image": "assets/images/file1.png",
      "name": "General Health",
      "name1": "8 files",
    },
    {
      "image": "assets/images/file2.png",
      "name": "General Health",
      "name1": "8 files",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Report",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              child: Container(
                height: 180,
                width: 360,
                decoration: BoxDecoration(
                  color: Color(0xffDCEDF9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image(
                        image: AssetImage("assets/images/Group 164.png"),
                        height: 120,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 135,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Color(0xffF5E1E9),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/Vector.png")),
                              SizedBox(height: 10),
                              Text("Blood Group",
                                  style: TextStyle(fontSize: 15)),
                              SizedBox(height: 10),
                              Text("A + ",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.more_horiz, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 135,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Color(0xffFAF0DB),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/noun-weight-4686184 1.png"),
                                  height: 30,
                                  width: 40),
                              SizedBox(height: 10),
                              Text("Weight", style: TextStyle(fontSize: 15)),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text("80 ",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("kg",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 25),
                          Column(
                            children: [
                              Icon(Icons.more_horiz, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  Text(
                    " Lattest Report",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 180,
                width: 360,
                //  decoration: BoxDecoration(color: Colors.grey),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: report.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      width: 360,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      //decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Row(
                              children: [
                                Container(
                                    height: 50,
                                    width: 45,
                                    //color: Colors.black,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                report[index]['image']),
                                            fit: BoxFit.fill))),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(report[index]['name'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5),
                                    Text(report[index]['name1'],
                                        style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                                SizedBox(width: 120),
                                Column(
                                  children: [
                                    Icon(Icons.more_vert, color: Colors.grey),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
