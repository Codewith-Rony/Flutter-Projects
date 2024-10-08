import 'package:flutter/material.dart';

class ObjectThree extends StatelessWidget {
  const ObjectThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.android),
              ),
              Align(
                alignment: Alignment.center,
              ),
              SizedBox(width: 6),
              Icon(Icons.battery_1_bar)
            ],
            leading: const Icon(Icons.admin_panel_settings_outlined),
            title: const Text("Text Heading",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
                textAlign: TextAlign.center)),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello World", textAlign: TextAlign.center),
                  Text("Text1")
                ],
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rony Thomas",
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.bold),
                  ),
                  Text("IT",
                      style: TextStyle(color: Color.fromARGB(255, 215, 31, 44)))
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  //border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      "data:image/jpeg;base64,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"),
                ),
              )
            ],
          ),
        )
        //  Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Center(
        //     //child: Container(
        //     //alignment: Alignment.center,
        //     //height: 200,
        //     //width: 200,
        //     //decoration: BoxDecoration(
        //     //  border: Border.all(),
        //     //color: Colors.blue,
        //     //borderRadius: BorderRadius.circular(20)),
        //     //child: Text(
        //     //"Square",
        //     //style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     child: Image.asset(
        //       'img1.jpg',
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
        );
    //);
    //);
  }
}
