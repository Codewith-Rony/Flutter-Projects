import 'package:flutter/material.dart';

class ObjectEight extends StatelessWidget {
  const ObjectEight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          width: 204,
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.brown),
                child: Text(
                  "Drawer",
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    minWidth: double.infinity,
                    child: const Text("Click Here"),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.security),
                title: Text("Security"),
              ),
              // Divider(
              //   color: Colors.black,
              // ),

              const ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("List & Grid View Builder"),
          //leading: Icon(Icons.list_alt_sharp),
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 4, mainAxisSpacing: 0),
          itemBuilder: (context, index) {
            return Image.asset("assets/img3.jpg");
          },
        )
        // ListView.builder(
        //   itemCount: 5,
        //   itemBuilder: (context, index) {
        //     return ListTile(title: Text("Hi"));
        //   },
        // ),
        );
  }
}
