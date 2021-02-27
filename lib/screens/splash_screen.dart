import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pizzato/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    _timer = Timer(
        Duration(
          seconds: 10,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/animations/logo.json'),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Piz',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Akaya',
                  ),
                ),
                TextSpan(
                  text: 'z',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 8,
                    color: Color(0xFFFC5656),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Akaya',
                  ),
                ),
                TextSpan(
                  text: 'ato',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Akaya',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
