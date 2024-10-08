import 'package:flutter/material.dart';
//import 'package:sampleproj/file11.dart';
import 'package:sampleproj/file12.dart';
import 'package:sampleproj/file14.dart';

class ObjectTen extends StatelessWidget {
  const ObjectTen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          width: 300,
          child: ListView(children: [
            Align(
              alignment: Alignment.topLeft,
            ),
            CircleAvatar(
              radius: 15,
            ),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          bottom: TabBar(
            //physics: ScrollPhysics(),
            // tabAlignment: TabAlignment.center,
            tabs: [
              Tab(
                text: "Programs",
              ),
              Tab(
                text: "Bookings",
              ),
              Tab(
                text: "Scan Here",
                iconMargin: EdgeInsets.all(8),
                icon: Icon(Icons.qr_code_scanner),
              )
            ],
          ),
          title: Row(
            children: [
              Text("Home",
                  style: TextStyle(color: Color.fromARGB(255, 246, 244, 244))),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.qr_code_scanner),
              onPressed: () {},
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/img4.jpg"),
              radius: 20,
            ),
            SizedBox(width: 8),
          ],
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/img10.png",
                                height: 120,
                                width: 120,
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Jungle Safari",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: MaterialButton(
                                minWidth: 250,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ObjectTwelve()));
                                },
                                child: Text("Booking Available",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 65, 211, 20),
                                    )),
                              ),
                            ),
                          ]);
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text("Previous Booking",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 138, 135, 135))),
                    SizedBox(
                      width: 205,
                    ),
                    Text("View All",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 138, 135, 135))),
                    Icon(
                      Icons.chevron_right_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          "Combo Package",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Image.asset("assets/img11.png"),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Adult x 1",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 138, 135, 135)),
                                  ),
                                  Text("Student x 2",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 138, 135, 135))),
                                  Text("Indian Student x 1",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 138, 135, 135)))
                                ],
                              ),
                              Row(
                                //mainAxisSize:,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "March 12,2021",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("8:30-12:30",
                                      style: TextStyle(color: Colors.green))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 205, bottom: 455, top: 10),
            child: Container(
              // width: 15,
              // height: 25,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Column(
                children: [
                  Image.asset("assets/img10.png"),
                  SizedBox(
                    height: 5,
                  ),
                  MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ObjectTwelve()));
                      },
                      child: Text("Book Here"))
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ObjectFourteen()));
                },
                child: Icon(
                  size: 155,
                  Icons.qr_code_scanner_rounded,
                  color: Colors.white,
                ),
              ),
              Text(
                "OR Type Booking ID",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "ID Number",
                      hintText: "ID Number",
                      hintFadeDuration: Duration(seconds: 2),
                      hintTextDirection: TextDirection.ltr,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      labelStyle: TextStyle(
                        color: Color(0xff9E9E9E),
                      )),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 245,
                height: 45,
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xff68D389),
              )
            ],
          )
        ]),
      ),
    );
  }
}
