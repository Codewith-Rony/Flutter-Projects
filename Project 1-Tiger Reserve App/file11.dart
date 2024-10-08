import 'package:flutter/material.dart';
import 'package:sampleproj/file10.dart';
//import 'package:sampproj/file10.dart';

class ObjectEleven extends StatefulWidget {
  const ObjectEleven({super.key});

  @override
  State<ObjectEleven> createState() => _ObjectElevenState();
}

class _ObjectElevenState extends State<ObjectEleven> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
              label: Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 17, 72, 11),
              foregroundColor: Colors.white,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Alert Dialog Title'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('This is the alert dialog content.'),
                            Text('Would you like to approve this message?'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Dismiss the dialog
                          },
                        ),
                        TextButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Dismiss the dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              }),
          drawer: Drawer(),
          appBar: AppBar(
            title: Text("Icons"),
            bottom: TabBar(
              tabs: [
                const Tab(
                  //icon: Icon(Icons.add_circle),
                  text: "Tab1",
                ),
                const Tab(
                  text: "Tab2",
                )
              ],
              labelColor: Colors.blue, labelStyle: TextStyle(fontSize: 15),
              //labelPadding: EdgeInsets.all(5),
            ),
          ),
          body: TabBarView(children: [ObjectTen(), Icon(Icons.access_alarm)])

          //Center(

          // child: Column(
          //   children: [
          //     Text("Button"),
          //     TextButton(onPressed: () {}, child: Text("Click Here")),
          //     IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          //     FloatingActionButton(
          //       onPressed: () {},
          //       child: Icon(Icons.search),
          //     )
          //   ],
          // ),
          ),
    );
    //);
  }
}
