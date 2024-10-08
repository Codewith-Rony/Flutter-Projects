import 'package:demo_project/UI/Registration.dart';
import 'package:demo_project/UI/homepg.dart';
import 'package:demo_project/block/mainbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginpg extends StatefulWidget {
  const Loginpg({super.key});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  final TextEditingController PhoneNumberController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/loginbg.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Center(
          child: BlocConsumer<MainBloc, MainState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepg()),
                );
              }
            },
            buildWhen: (previous, current) {
              return current is LoginSuccess || current is LoginFailed;
            },
            builder: (BuildContext context, state) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50.withOpacity(0.8),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 52, 144, 219),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: PhoneNumberController,
                            validator: (value) {
                              String pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
                              RegExp regExp = RegExp(pattern.toString());
                              if (value!.isEmpty) {
                                return 'Cannot be empty';
                              } else if (value.length > 10) {
                                return 'Please enter your 10 digit mobile number';
                              } else if (!regExp.hasMatch(value)) {
                                return 'Please enter valid mobile number';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            cursorColor: const Color.fromARGB(255, 12, 12, 12),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            decoration: InputDecoration(
                              labelText: "Phone Number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Password';
                                }
                                return null;
                              },
                              controller: PasswordController,
                              obscureText: _obscureText,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: const Color.fromARGB(255, 0, 0, 0),
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 170,
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<MainBloc>().add(DoLogin(
                                      phoneNumber: PhoneNumberController.text,
                                      password: PasswordController.text,
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 108, 177, 234),
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegistrationForm(),
                                ),
                              );
                            },
                            child: Text("Don't have an Account? Sign Up"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
