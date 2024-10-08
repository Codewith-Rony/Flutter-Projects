import 'package:flutter/material.dart';
import 'package:sampleproj/file15.dart';
import 'package:sampleproj/file18.dart';

class ObjectSixteen extends StatelessWidget {
  const ObjectSixteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x1F1F1F),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ObjectFifteen()));
            },
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Online Booked Ticket",
                style: TextStyle(color: Colors.white),
              ),
              // SizedBox(
              //   width: 90,
              // ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/img10.png"),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(
                        color: Color(0xff141414),
                      ),
                      Container(
                          width: 736,
                          color: const Color(0xff292929),
                          child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Ticket Booked By",
                                        style: TextStyle(
                                          color: Color(0xffBEBEBE),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 85,
                                      ),
                                      Text(
                                        "Total Persons",
                                        style: TextStyle(
                                          color: Color(0xffBEBEBE),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Paul Alexander",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 75,
                                      ),
                                      Text(
                                        "5",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "Selected Date",
                                        style: TextStyle(
                                          color: Color(0xffBEBEBE),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 85,
                                      ),
                                      Text(
                                        "Selected Slot",
                                        style: TextStyle(
                                          color: Color(0xffBEBEBE),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "March 14, 2021",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 45,
                                      ),
                                      Text(
                                        "08:30 AM - 10:30 AM",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text("Package",
                                      style: TextStyle(
                                        color: Color(0xffBEBEBE),
                                      )),
                                  Text(
                                    "Combo Package (Safari, Trekking, Rafting etc & including food) Jungle Safari",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ))),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 500,
                        height: 60,
                        //height: 350,
                        decoration: BoxDecoration(color: Color(0xff292929)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Upload Guest ID",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Indian Adult X 1",
                                    style: TextStyle(color: Colors.white)),
                                Text("Foreign Student X 2",
                                    style: TextStyle(color: Colors.white)),
                                Text("Indian Student X 2",
                                    style: TextStyle(color: Colors.white)),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: Color(0xff292929),
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: const Text("Bill Summary",
                                  style: TextStyle(
                                    color: Color(0xffBEBEBE),
                                  )),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 5.0, top: 5, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Indian Adult x 1",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "3000",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 5.0, top: 5, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Foreign Student X 2",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "4000",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 5.0, top: 5, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Indian Student X 2",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "4000",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Color(0xffCCCCCC),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0, top: 5),
                              child: const Text("Total",
                                  style: TextStyle(
                                    color: Color(0xffBEBEBE),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, bottom: 5),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5 Persons",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "11800 INR",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xff069B56),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ObjectEighteen()));
                                  },
                                  child: Text(
                                    "  Amount paid Online",
                                    style: TextStyle(color: Color(0xff069B56)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ]))));
  }
}
