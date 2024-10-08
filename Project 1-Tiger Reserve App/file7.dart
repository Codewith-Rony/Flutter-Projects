import 'package:flutter/material.dart';

class ObjectSeven extends StatelessWidget {
  const ObjectSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list),
        title: const Text("Here goes Title"),
      ),
      body: ListView(
        children: const [
          ListTile(
            // leading: Icon(Icons.search),
            leading: CircleAvatar(
              backgroundImage: AssetImage("img4.jpg"),
              radius: 25,
            ),
            title: (Text("Dog")),
            //subtitle: Icon(Icons.safety_check),
          ),
          Divider(
            color: Colors.red,
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text("Data"),
          )
        ],
      ),
    );
  }
}
