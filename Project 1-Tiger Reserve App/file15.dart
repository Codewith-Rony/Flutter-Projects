import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sampleproj/file13.dart';
import 'package:sampleproj/file16.dart';

class ObjectFifteen extends StatefulWidget {
  const ObjectFifteen({super.key});

  @override
  State<ObjectFifteen> createState() => _ObjectFifteenState();
}

class _ObjectFifteenState extends State<ObjectFifteen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1F1F1F),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ObjectThirteen()));
          },
        ),
        title: const Row(
          children: [
            Text(
              "Jungle Safari",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 145,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/img10.png"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Color(0xff141414),
              ),
              const Text(
                "Booking Summary",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Container(
                width: 736,
                color: const Color(0xff292929),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Selected Date",
                            style: TextStyle(
                              color: Color(0xffBEBEBE),
                            ),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Text(
                            "Selected Slot",
                            style: TextStyle(
                              color: Color(0xffBEBEBE),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "March 14, 2021",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Text(
                            "08:30 AM - 10:30 AM",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text("Package",
                          style: TextStyle(
                            color: Color(0xffBEBEBE),
                          )),
                      const Text(
                        "Combo Package (Safari, Trekking, Rafting etc & including food) Jungle Safari",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      if (!_isExpanded) ...[
                        const Text("Total",
                            style: TextStyle(
                              color: Color(0xffBEBEBE),
                            )),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "5 Persons",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "11800 INR",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                      if (_isExpanded) ...[
                        const Text("Bill Summary",
                            style: TextStyle(
                              color: Color(0xffBEBEBE),
                            )),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 5, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Indian Adult x 1",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "3000",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 5, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Foreign Student X 2",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "4000",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 5, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Indian Student X 2",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "4000",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const Text("Total",
                            style: TextStyle(
                              color: Color(0xffBEBEBE),
                            )),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "5 Persons",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "11800 INR",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 125.0),
                          child: Row(
                            children: [
                              Text(
                                _isExpanded ? 'View Less' : 'View More',
                                style:
                                    const TextStyle(color: Color(0xffC4C4C4)),
                              ),
                              Icon(
                                  _isExpanded
                                      ? Icons.expand_less
                                      : Icons.expand_more,
                                  color: const Color(0xffC4C4C4)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Add More Guest Details",
                  style: TextStyle(
                      color: Color(0xffFFFFFF), fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1.Indian Adult",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold)),
                  Text("1 Person",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    color: const Color(0xffFFFFFF),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      inputFormatters: [CapitalizeFirstLetterFormatter()],
                      decoration: const InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(color: Color(0xff9E9E9E)),
                        fillColor: Color(0xffffffff),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    color: const Color(0xffFFFFFF),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Color(0xff9E9E9E)),
                        fillColor: Color(0xffffffff),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    color: const Color(0xffFFFFFF),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone number",
                        labelStyle: TextStyle(color: Color(0xff9E9E9E)),
                        fillColor: Color(0xffffffff),
                      ),
                    ),
                  ),
                  const Text("ID Proof",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold)),
                  Container(
                    color: const Color(0xffFFFFFF),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Upload ID Proof",
                          style: TextStyle(color: Color(0xff9E9E9E)),
                        ),
                        MaterialButton(
                            onPressed: () {}, child: const Icon(Icons.upload))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70.0, right: 70, top: 10, bottom: 10),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 150,
                      color: const Color.fromARGB(255, 245, 248, 246),
                      textColor: Colors.white, // Text color
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xff3E3E3E),
                    height: .5,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "2.  Foreign Student",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Text(
                          "2 Person",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Color(0xff3E3E3E),
                height: .5,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "3.  Indian Student",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Text(
                          "2 Person",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 80.0, right: 70, top: 10, bottom: 10),
                child: Container(
                  width: 550,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ObjectSixteen()));
                    },
                    //minWidth: 150,
                    color: const Color(0xff68D389),
                    textColor: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CapitalizeFirstLetterFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    String text = newValue.text;
    String capitalized = text[0].toUpperCase() + text.substring(1);

    return newValue.copyWith(
      text: capitalized,
      selection: TextSelection.collapsed(offset: capitalized.length),
    );
  }
}
