import 'package:flutter/material.dart';

class ObjectTwo extends StatelessWidget {
  const ObjectTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const Icon(Icons.abc_outlined),
        title: const Text(
          "Sample Text",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
          child: Container(
        alignment: Alignment.center,
        height: 205,
        width: 205,
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(),
            borderRadius: BorderRadius.circular(25)),
        child: const Text("Square",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      )
          //Icon(
          //Icons.mail,
          //size: 30,
          //color: Colors.purple,
          //),
          //child: Text(
          //"Text",
          //style: TextStyle(
          //  color: Colors.deepOrange,
          //fontSize: 20,
          //fontWeight: FontWeight.bold),
          ),
    );
    //);
  }
}
