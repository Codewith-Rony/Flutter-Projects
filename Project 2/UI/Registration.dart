import 'package:demo_project/UI/loginpg.dart';
import 'package:demo_project/block/mainbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  //final _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // foregroundColor: Colors.white,
        title: Text(
          "Registration From",
          style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
        ),
        backgroundColor: Color(0xffa7fbed),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/loginbg.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: BlocConsumer<MainBloc, MainState>(
          listener: (context, state) {
            if (state is RegisterSuccess) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Loginpg()));
            }
          },
          buildWhen: (previous, current) {
            return current is RegisterSuccess || current is SignupFailed;
          },
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50.withOpacity(0.8),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: firstNameController,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "First Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          controller: lastNameController,
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "Last Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: phoneNumberController,
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
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
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
                            controller: passwordController,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Password';
                            }
                            return null;
                          },
                          controller: confirmPasswordController,
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "Confirm Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: emailController,
                          validator: (value) {
                            if (emailController.text.isNotEmpty) {
                              Pattern pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regex = RegExp(pattern.toString());
                              if (!regex.hasMatch(value!)) {
                                return 'Enter Valid Email';
                              } else {
                                return null;
                              }
                            } else if (value!.isEmpty) {
                              return 'Cannot be empty';
                            }
                            return null;
                          },
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 170,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<MainBloc>().add(DoSignUp(
                                firstName: firstNameController.text,
                                lastName: lastNameController.text,
                                phoneNumber: phoneNumberController.text,
                                password: passwordController.text,
                                confirmPassword: confirmPasswordController.text,
                                email: emailController.text));
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
                    ],
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
