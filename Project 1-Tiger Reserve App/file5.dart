import 'package:flutter/material.dart';

class ObjectFive extends StatelessWidget {
  const ObjectFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMAGES"),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: EdgeInsets.only(left: 5.0, right: 100),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Image.asset("img2.jpg")),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: Image.asset(
                      "img1.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: Image.asset(
                      "img3.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: Image.asset(
                      "img4.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: Image.asset(
                      "img5.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: Image.asset(
                      "img6.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            const Card(
              color: Colors.grey,
              elevation: 10,
              child: ListTile(
                //tileColor: Colors.blue,
                leading: Icon(Icons.analytics),
                title: Text("data"),
                subtitle: Text("Data 1s"),
              ),
            ),
            const Card(
              color: Colors.orange,
              child: ListTile(
                title: Text("Sample"),
                subtitle: Text("Sample Data"),
              ),
            ),
            const Card(
              color: Colors.orange,
              child: ListTile(
                leading: Icon(Icons.search),
                title: Text("Sample"),
                subtitle: Text("Sample Data"),
              ),
            ),
            const Card(
              color: Colors.orange,
              child: ListTile(
                title: Text("Sample"),
                subtitle: Text("Sample Data"),
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.lightGreen,
                ),
                Container(
                  color: Colors.yellow,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: ObjectFive()));
