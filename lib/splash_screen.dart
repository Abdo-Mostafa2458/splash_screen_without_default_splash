import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(title: "Splash_Task")),
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer to avoid accessing unmounted context
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe2840a),
      body: Center(
        child: Lottie.asset('assets/animation/logo.json',
            repeat: false, fit: BoxFit.contain, frameRate: FrameRate(60)),
      ),
    );
  }
}
