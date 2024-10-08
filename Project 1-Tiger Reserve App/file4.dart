import 'package:flutter/material.dart';

class ObjectFour extends StatelessWidget {
  const ObjectFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(31, 3, 76, 8),
        title: const Text("Sample page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 55, right: 55, bottom: 45, top: 45),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(14)),
                  child: const Text(
                    "Data1",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 55, right: 55, bottom: 45, top: 45),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 3, 3),
                      borderRadius: BorderRadius.circular(14)),
                  child: const Text(
                    "Data2",
                    style: TextStyle(
                        color: Color.fromARGB(255, 250, 251, 250),
                        fontSize: 18),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 55, right: 55, bottom: 45, top: 45),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 8, 239),
                      borderRadius: BorderRadius.circular(14)),
                  child: const Text("Data 3",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                padding:
                    const EdgeInsets.only(left: 55, right: 55, bottom: 45, top: 45),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text("Data 4",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                padding:
                    const EdgeInsets.only(left: 55, right: 55, bottom: 45, top: 45),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 25, 226, 7),
                    borderRadius: BorderRadius.circular(15)),
                child: const Text("Data 5",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            const TextField(
                //readOnly: true,
                style: TextStyle(color: Colors.blueAccent),
                //obscureText: true,
                textInputAction: TextInputAction.done,
                cursorColor: Color.fromARGB(255, 8, 252, 195),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_off),
                  suffixIcon: Icon(Icons.search),
                  labelText: 'Enter name',
                  hintText: 'Enter Your name',
                  filled: true,
                  fillColor: Color.fromARGB(86, 14, 14, 249),
                  hintStyle: TextStyle(fontSize: 8),
                )),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.lightGreen,
              elevation: 4,
              child: const Text("Text"),
            )
          ],
        ),
      ),
    );
  }
}
