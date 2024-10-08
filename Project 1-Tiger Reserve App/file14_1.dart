import 'dart:io';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
//import 'package:sampleproj/file15.dart';

class ObjectFourteen1 extends StatefulWidget {
  const ObjectFourteen1({super.key});

  @override
  State<ObjectFourteen1> createState() => _ObjectFourteenState();
}

class _ObjectFourteenState extends State<ObjectFourteen1> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  bool? isSelected = false;
  int? isValue = 1;
  bool? variable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // MaterialButton(
              //   onPressed: () {
              //     Fluttertoast.showToast(
              //         msg: "This is Center Short Toast",
              //         toastLength: Toast.LENGTH_SHORT,
              //         gravity: ToastGravity.BOTTOM_LEFT,
              //         timeInSecForIosWeb: 1,
              //         backgroundColor: Color.fromARGB(255, 134, 191, 127),
              //         textColor: Colors.white,
              //         fontSize: 16.0);
              //   },
              //   child: Container(
              //     width: 40,
              //     decoration: BoxDecoration(color: Colors.blue),
              //     height: 20,
              //     child: Text("Data"),
              //   ),
              // ),
              // Row(
              //   children: [
              //     Text("Select"),
              //     Checkbox(
              //         activeColor: Colors.blue,
              //         value: isSelected,
              //         onChanged: (value) {
              //           setState(() {
              //             isSelected = value;
              //           });
              //         }),
              //   ],
              // ),
              // Column(
              //   children: [
              //     ListTile(
              //       title: Text("Male"),
              //       leading: Radio<int>(
              //           value: 1,
              //           groupValue: isValue,
              //           onChanged: (value) {
              //             setState(() {
              //               isValue = value;
              //             });
              //           }),
              //     ),
              //     ListTile(
              //       title: Text("Female"),
              //       leading: Radio<int>(
              //           value: 2,
              //           groupValue: isValue,
              //           onChanged: (value) {
              //             setState(() {
              //               isValue = value;
              //             });
              //           }),
              //     ),
              //     Switch(
              //         activeColor: Colors.blue,
              //         //activeTrackColor: Colors.black,
              //         value: variable!,
              //         onChanged: (value) {
              //           setState(() {
              //             variable = value;
              //           });
              //         }),
              //     Container(
              //       child: Table(
              //         border: TableBorder.all(
              //             color: Colors.blue, style: BorderStyle.solid),
              //         children: [
              //           TableRow(children: [
              //             Column(
              //               children: [
              //                 Text("Column 1"),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Text("Column 2"),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Text("Column 3"),
              //               ],
              //             )
              //           ]),
              //           TableRow(children: [
              //             Column(
              //               children: [
              //                 Text("Column 4"),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Text("Column 5"),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Text("Column 6"),
              //               ],
              //             )
              //           ]),
              //         ],
              //       ),
              //     ),
              //     MaterialButton(
              //       onPressed: () {
              //         final snackBar = SnackBar(
              //             content: Text("You Submitted"),
              //             duration: Duration(seconds: 3));
              //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
              //         // Navigator.push(
              //         //     context,
              //         //     MaterialPageRoute(
              //         //         builder: (context) => ObjectFifteen()));
              //       },
              //       child: Text("Click Here"),
              //     )
              //   ],
              // ),
              // CarouselSlider(
              //   options: CarouselOptions(
              //     height: 200.0,
              //     autoPlay: true,
              //     autoPlayAnimationDuration: Duration(seconds: 1),

              //     //autoPlayCurve: Curves.bounceIn
              //   ),
              //   items: [
              //     "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
              //     "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              //     "https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg",
              //   ].map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return Container(
              //             width: MediaQuery.of(context).size.width,
              //             margin: EdgeInsets.symmetric(horizontal: 5.0),
              //             decoration: BoxDecoration(
              //                 color: Color.fromARGB(255, 249, 249, 248)),
              //             child: Image.network(i));
              //       },
              //     );
              //   }).toList(),
              // ),
              SizedBox(
                height: 800,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
              // Center(
              //   child: (result != null)
              //       ? Text(
              //           'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
              //       : Text('Scan a code'),
              // )
            ],
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }
}
