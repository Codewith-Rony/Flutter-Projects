import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sampleproj/file9.dart';

class ObjectSeventeen extends StatefulWidget {
  const ObjectSeventeen({super.key});

  @override
  State<ObjectSeventeen> createState() => _ObjectSeventeenState();
}

class _ObjectSeventeenState extends State<ObjectSeventeen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ObjectNine()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Center(child: Image.asset("assets/img7.png")),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 600),
                  Text(
                    "PARAMBIKULAM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "TIGER RESERVE",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
