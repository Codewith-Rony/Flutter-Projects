import 'package:flutter/material.dart';

class ObjectSix extends StatelessWidget {
  const ObjectSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightGreen,
                ),
                Image.asset(
                  "assets/img4.jpg",
                  width: 400,
                  height: 400,
                ),
                // Container(
                //   height: 80,
                //   width: 80,
                //   color: Colors.yellow,
                // ),
                //Icon(Icons.animation),
                const Positioned(
                  left: 150,
                  //right: 200,
                  bottom: 10,
                  //top:150
                  child: Text(
                    "Bruno",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 236, 233, 233),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
