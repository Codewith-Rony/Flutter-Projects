import 'package:flutter/material.dart';
import 'package:sampleproj/file10.dart';

class ObjectNine extends StatelessWidget {
  const ObjectNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Image.asset(
                "assets/img7.png",
              ),
            ),
            const Positioned(
              top: 70,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      "PARAMBIKULAM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "TIGER RESERVE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 490,
                ),
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: (Text(
                    "Please Login to Continue",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, bottom: 25),
                  child: Container(
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.blue,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        floatingLabelStyle: TextStyle(color: Colors.white),
                        focusColor: Colors.white,
                        labelText: "Username",
                        fillColor: Color.fromARGB(255, 237, 237, 237),
                        suffixIcon: Icon(Icons.check),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          floatingLabelStyle: TextStyle(color: Colors.white),
                          labelText: "Password",
                          suffixIcon: const Icon(Icons.remove_red_eye),
                          fillColor: Colors.green,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Stack(children: [
                  Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(25))),
                  Padding(
                    padding: const EdgeInsets.only(left: 75.0, top: 3),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const ObjectTen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0,
                                  0.0); // Start the animation from the right side
                              const end = Offset.zero;
                              const curve = Curves.easeInOut;

                              final tween = Tween(begin: begin, end: end);
                              final curvedAnimation = CurvedAnimation(
                                parent: animation,
                                curve: curve,
                              );

                              return SlideTransition(
                                position: tween.animate(curvedAnimation),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
