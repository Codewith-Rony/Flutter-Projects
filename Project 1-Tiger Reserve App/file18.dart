import 'package:flutter/material.dart';
import 'package:sampleproj/file16.dart';

class ObjectEighteen extends StatelessWidget {
  const ObjectEighteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1F1F1F),
      appBar: AppBar(
        backgroundColor: const Color(0x1F1F1F),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upload Guest ID",
              style: TextStyle(color: Colors.white),
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/img10.png"),
            )
          ],
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ObjectSixteen()));
          },
          color: const Color(0xfffffffff),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: const Color(0xff292929),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1. Indian Adult",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("1 Person",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                            ))
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("P"),
                    ),
                    title: Text(
                      "Paul Alexander",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    subtitle: Row(
                      children: [
                        Text("paulalexander@gmail.com",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 10)),
                        SizedBox(
                          width: 7,
                        ),
                        Text("+91 9999 777 333",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 10))
                      ],
                    ),
                    trailing: Icon(
                      Icons.camera_enhance,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff292929)),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2. Foreign Student",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("2 Person",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                            ))
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("A"),
                    ),
                    title: Text(
                      "Alex Alex",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    subtitle: Row(
                      children: [
                        Text("Alex@gmail.com",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 10)),
                        SizedBox(
                          width: 7,
                        ),
                        Text("+91 9999 777 333",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 10))
                      ],
                    ),
                    trailing: Icon(
                      Icons.camera_enhance,
                      size: 25,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("G"),
                    ),
                    title: Text(
                      "Gerald George",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    subtitle: Row(
                      children: [
                        Text("gerald@gmail.com",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 10)),
                        SizedBox(
                          width: 7,
                        ),
                        Text("+91 9999 777 333",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 10))
                      ],
                    ),
                    trailing: Icon(
                      Icons.camera_enhance,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: const Color(0xff292929),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "3. Indian Student",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("2 Person",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                          ))
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text("A"),
                  ),
                  title: Text(
                    "Annie Alfred",
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                  subtitle: Row(
                    children: [
                      Text("Annie@gmail.com",
                          style: TextStyle(
                              color: Color(0xffffffff), fontSize: 10)),
                      SizedBox(
                        width: 7,
                      ),
                      Text("+91 9999 777 333",
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 10))
                    ],
                  ),
                  trailing: Icon(
                    Icons.camera_enhance,
                    size: 35,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text("D"),
                  ),
                  title: Text(
                    "Dony George",
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                  subtitle: Row(
                    children: [
                      Text("gerald@gmail.com",
                          style: TextStyle(
                              color: Color(0xffffffff), fontSize: 10)),
                      SizedBox(
                        width: 7,
                      ),
                      Text("+91 9999 777 333",
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 10))
                    ],
                  ),
                  trailing: Icon(
                    Icons.camera_enhance,
                    size: 35,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff59AF73),
            minWidth: 175,
            height: 55,
          )
        ],
      ),
    );
  }
}
