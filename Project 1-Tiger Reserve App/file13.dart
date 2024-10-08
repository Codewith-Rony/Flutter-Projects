import 'package:flutter/material.dart';
import 'package:sampleproj/file12.dart';
import 'package:sampleproj/file15.dart';

class ObjectThirteen extends StatelessWidget {
  const ObjectThirteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ObjectTwelve()));
          },
        ),
        title: Row(
          children: [
            Text(
              "Jungle Safari",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 145,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/img10.png"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: .2,
            ),
            Tooltip(
                message: "Icon Clicked",
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Booking Summary",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 605,
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xFF292929),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selected Date",
                        style: TextStyle(color: Color(0xFF9F9F9F)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "March 14,2024",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Package",
                        style: TextStyle(color: Color(0xFF9F9F9F)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Combo Package (Safari, Trekking, Rafting etc & including food) Jungle Safari",
                        style:
                            TextStyle(color: Color(0xFFFFFFFF), fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Select Time Slot",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ListTile(
                        tileColor: Color(0xff68D389),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "8:30 AM - 10:30 AM",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "13 Seats Available",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ListTile(
                        tileColor: Color.fromARGB(255, 235, 240, 237),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "10:45 AM - 12:45 PM",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "13 Seats Available",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ListTile(
                        tileColor: Color(0xff720000),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "12:45 PM - 2:45 PM",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Deactivated",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ListTile(
                        tileColor: Color(0xffffffff),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "8:30 AM - 10:30 AM",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "13 Seats Available",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ListTile(
                        tileColor: Color(0xffffffff),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "8:30 AM - 10:30 AM",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "13 Seats Available",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: .5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Guest Number",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Indian Adult",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 125,
                          height: 35,
                          decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "-",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Text("1", style: TextStyle(fontSize: 20)),
                              Text("+", style: TextStyle(fontSize: 20))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Indian Student",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 125,
                    height: 35,
                    decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Text("1", style: TextStyle(fontSize: 20)),
                        Text("+", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Foreign Adult",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 125,
                    height: 35,
                    decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Text("1", style: TextStyle(fontSize: 20)),
                        Text("+", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Foreign Student",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 125,
                    height: 35,
                    decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            ObjectFifteen();
                          },
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Text("1", style: TextStyle(fontSize: 20)),
                        Text("+", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bonafied Student",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 125,
                    height: 35,
                    decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Text("1", style: TextStyle(fontSize: 20)),
                        Text("+", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 120),
              child: MaterialButton(
                minWidth: 150,
                color: Color(0xff68D389),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ObjectFifteen()));
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
