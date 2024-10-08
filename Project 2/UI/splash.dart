import 'dart:async';
import 'package:demo_project/UI/homepg.dart';
import 'package:demo_project/UI/loginpg.dart';
import 'package:demo_project/localstorage/localstorage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const _splashDuration = Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    decidePage();
  }

  Future<void> decidePage() async {
    var token = await LocalStorage.getToken();

    if (token != null) {
      Timer(_splashDuration, () => _navigateToHome());
    } else {
      Timer(_splashDuration, () => _navigateToLogin());
    }
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Homepg()));
  }

  void _navigateToLogin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Loginpg()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        //   child: CircularProgressIndicator(
        //     value: 2,
        //   ), // You can display a splash screen here
        // ),
        );
  }
}
