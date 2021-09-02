import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) =>
                Container(
                  margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.04, horizontal: constraints.maxWidth*0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(Context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.black,
                                size: 34.0,
                              ),
                            ),//back button
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Have an account?',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: constraints.maxWidth*0.038,
                                        color: Color(0xFF68739B),
                                      ),
                                    ),
                                    Container(
                                      width: constraints.maxWidth*0.176,
                                      height: constraints.maxHeight*0.036,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(Context, PageTransition(type:PageTransitionType.fade, child:  Login()));

                                        },
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                            EdgeInsets.all(0.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: constraints.maxWidth*0.049,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),//text-- no account?login
                                Container(
                                  margin: EdgeInsets.only(top: constraints.maxHeight*0.003,),
                                  width: constraints.maxWidth*0.49,
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
                        margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: constraints.maxWidth*0.097,
                                letterSpacing: 0.4,
                              ),
                            ),//login
                            Text(
                              'Glad you\'re here to join us!',
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
                                  labelText: 'Name',
                                  labelStyle: TextStyle(
                                    color: Color(0xFFAEAEB2),
                                    fontSize: constraints.maxWidth*0.037,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
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
                            ),
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
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
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
                                          Navigator.push(Context, PageTransition(type:PageTransitionType.fade, child:  Login()));
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
