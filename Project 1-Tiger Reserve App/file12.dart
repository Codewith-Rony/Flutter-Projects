import 'package:flutter/material.dart';
import 'package:sampleproj/file10.dart';
import 'package:sampleproj/file13.dart';

class ObjectTwelve extends StatelessWidget {
  const ObjectTwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ObjectTen()));
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: const Color.fromARGB(255, 110, 108, 108),
          ),
          ListTile(
            leading: Container(
              height: 450,
              width: 70,
              child: Image.asset(
                "assets/img10.png",
                //height: 450,
                //width: 140,
                fit: BoxFit.fitHeight,
              ),
            ),
            title: Text(
              "Jungle Safari",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Booking Available",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 119, 222, 122)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 134, 234, 138),
                  ),
                  width: 370,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ObjectThirteen()));
                      },
                      child: Text(
                        "BOOK NOW",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 8),
            child: Text(
              "Package Rate",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF292929)),
              child: ListTile(
                //tileColor: Color(0xFF292929),
                title: Text("Week Days", style: TextStyle(color: Colors.white)),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" Indian",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("Foreigner",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("Children",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF292929)),
              child: ListTile(
                //tileColor: Color(0xFF292929),
                title: Text("Weekends & HoldDays",
                    style: TextStyle(color: Colors.white)),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" Indian",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("Foreigner",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("Children",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF292929)),
              child: ListTile(
                //tileColor: Color(0xFF292929),
                title: Text("Weekends & holidays",
                    style: TextStyle(color: Colors.white)),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("350 INR",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" Indian",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("Foreigner",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("Children",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
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
