import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/screens/dashboard/dashboard.dart';
import 'package:untitled1/screens/init_screen/signup.dart';

class Login extends StatefulWidget {

  static const String id = 'login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (contexts, constraints) =>
              Container(
                margin: EdgeInsets.only(
                    top: constraints.maxHeight*0.04,
                    bottom: constraints.maxHeight*0.01,
                    left: constraints.maxWidth*0.04,
                    right: constraints.maxWidth*0.04
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.black,
                              size: 34.0,
                            ),
                          ),//back button
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'No account? ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Color(0xFF68739B),
                                      ),
                                    ),
                                    Container(
                                      width: constraints.maxWidth*0.198,
                                      height: constraints.maxHeight*0.036,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(type:PageTransitionType.fade, child:  SignUp()));
                                        },
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                            EdgeInsets.all(0.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),//text-- no account?login
                              Container(
                                margin: EdgeInsets.only(top: constraints.maxHeight*0.003,),
                                width: constraints.maxWidth*0.451,
                                height: constraints.maxHeight*0.0022,
                                decoration: BoxDecoration(
                                  color: Color(0xFFBEBEC3),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFAB4148),
                                      Color(0xFF189DF4),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),//no account text
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: constraints.maxHeight*0.14,
                          bottom: constraints.maxHeight*0.161
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: constraints.maxWidth*0.097,
                              letterSpacing: 0.4,
                            ),
                          ),//login
                          Text(
                            'Glad to see you back!',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: constraints.maxWidth*0.045,
                            ),
                          ),//glad to see...
                          SizedBox(height: constraints.maxHeight*0.03,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal:constraints.maxHeight*0.034,),
                            margin: EdgeInsets.only(bottom: constraints.maxHeight*0.019,),
                            width: double.infinity,
                            height: constraints.maxHeight*0.088,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.2),
                              color: Color(0xFFF0F0F0),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: constraints.maxWidth*0.048,
                              ),
                              decoration: InputDecoration(
                                labelText: 'E-mail',
                                labelStyle: TextStyle(
                                  color: Color(0xFFAEAEB2),
                                  fontSize: constraints.maxWidth*0.037,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ),//email
                          Container(
                            padding: EdgeInsets.symmetric(horizontal:constraints.maxHeight*0.034,),
                            margin: EdgeInsets.only(bottom: constraints.maxHeight*0.046,),
                            width: double.infinity,
                            height: constraints.maxHeight*0.088,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.2),
                              color: Color(0xFFF0F0F0),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: constraints.maxWidth*0.048,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Color(0xFFAEAEB2),
                                  fontSize: constraints.maxWidth*0.037,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ),//password
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: constraints.maxWidth*0.41,
                                  height: constraints.maxHeight*0.036,
                                  child: TextButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                        EdgeInsets.all(0.0),
                                      ),
                                    ),
                                    child: Text(
                                      'Forgot password ?',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: constraints.maxWidth*0.041,
                                        color: Color(0xFF68739B),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.8),
                                  ),
                                  child: Container(
                                    width: constraints.maxWidth*0.18,
                                    height: constraints.maxHeight*0.08,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.8),
                                      border: Border.all(
                                        width: constraints.maxWidth*0.003,
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context, Dashboard.id);
                                      },
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                          EdgeInsets.all(0.0),
                                        ),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20.8),
                                          ),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_outlined,
                                        size: constraints.maxWidth*0.075,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),//forgot password
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.017),
                        child: Text(
                          'or login with',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: constraints.maxWidth*0.04,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.8),
                          ),
                          child: Container(
                            width: constraints.maxWidth*0.1415,
                            height: constraints.maxHeight*0.0615,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.1),
                              border: Border.all(
                                width: constraints.maxWidth*0.003,
                                color: Colors.purple.withOpacity(0.1),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(0.0),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.8),
                                  ),
                                ),
                              ),
                              child: Icon(
                                FontAwesomeIcons.google,
                                size: constraints.maxWidth*0.057,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.8),
                          ),
                          child: Container(
                            width: constraints.maxWidth*0.1415,
                            height: constraints.maxHeight*0.0615,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.1),
                              border: Border.all(
                                width: constraints.maxWidth*0.003,
                                color: Colors.purple.withOpacity(0.1),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(0.0),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.8),
                                  ),
                                ),
                              ),
                              child: Icon(
                                FontAwesomeIcons.linkedinIn,
                                size: constraints.maxWidth*0.057,
                                color: Colors.blue.shade800,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.8),
                          ),
                          child: Container(
                            width: constraints.maxWidth*0.1415,
                            height: constraints.maxHeight*0.0615,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.1),
                              border: Border.all(
                                width: constraints.maxWidth*0.003,
                                color: Colors.purple.withOpacity(0.1),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(0.0),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.8),
                                  ),
                                ),
                              ),
                              child: Icon(
                                FontAwesomeIcons.facebook,
                                size: constraints.maxWidth*0.057,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.8),
                          ),
                          child: Container(
                            width: constraints.maxWidth*0.1415,
                            height: constraints.maxHeight*0.0615,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.1),
                              border: Border.all(
                                width: constraints.maxWidth*0.003,
                                color: Colors.purple.withOpacity(0.1),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(0.0),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.8),
                                  ),
                                ),
                              ),
                              child: Icon(
                                FontAwesomeIcons.instagram,
                                size: constraints.maxWidth*0.057,
                                color: Color(0xFFFD2253),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
