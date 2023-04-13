import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
const colorizeColors = [
  Colors.white,
  Colors.yellow,
  Colors.orange,
  Colors.yellow,
];
class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginScreen()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,

      body: Center(
        child:  Image.asset("assets/image/logo.png")
      ),
    );
  }
}
