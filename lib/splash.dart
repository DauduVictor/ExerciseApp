import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/screens/init_screen/split_log_sin.dart';

class SplashScreen extends StatefulWidget {

  static const String id = 'splashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void _navigate() {
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacementNamed(context, Split.id));
  }

  @override
  void initState() {
    super.initState();
    _navigate();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Center(
          child: Text(
            'Exercise App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    );
  }
}
