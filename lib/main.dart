import 'package:flutter/material.dart';
import 'package:untitled1/screens/dashboard/diet_recommendation.dart';
import 'package:untitled1/screens/dashboard/dashboard.dart';
import 'package:untitled1/screens/dashboard/kegal.dart';
import 'package:untitled1/screens/dashboard/meditation.dart';
import 'package:untitled1/components/new_addition.dart';
import 'package:untitled1/screens/dashboard/yoga.dart';
import 'package:untitled1/screens/init_screen/login.dart';
import 'package:untitled1/screens/init_screen/signup.dart';
import 'package:untitled1/screens/settings/contactUs.dart';
import 'package:untitled1/screens/settings/profile.dart';
import 'package:untitled1/splash.dart';
import 'package:untitled1/screens/init_screen/split_log_sin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Dashboard.id,
      routes: {
        SplashScreen.id:(context) => const SplashScreen(),
        Split.id:(context) => Split(),
        Login.id : (context) => const Login(),
        SignUp.id : (context) => const SignUp(),
        Dashboard.id: (context) => const Dashboard(),
        ContactUs.id: (context) => const ContactUs(),
        Profile.id: (context) => const Profile(),
        Diet.id: (context) => const Diet(),
        Kegal.id: (context) => const Kegal(),
        Meditation.id: (context) => const Meditation(),
        Yoga.id: (context) => const Yoga(),
        FloatingCard.id: (context) => const FloatingCard()
      },
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}

