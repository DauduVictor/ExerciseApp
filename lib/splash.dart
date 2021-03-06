import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/screens/dashboard/dashboard.dart';
import 'package:untitled1/screens/init_screen/split_log_sin.dart';

class SplashScreen extends StatefulWidget {

  static const String id = 'splashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void _navigate() {
    Timer(const Duration(seconds: 3), ()=> Navigator.pushReplacementNamed(context, Split.id));
  }

  @override
  void initState() {
    super.initState();
    _navigate();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Center(
          child: Text(
            '░ ▒ ▓ █ เ૨εσmmεn∂ █ ▓ ▒ ░',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      )
    );
  }
}
