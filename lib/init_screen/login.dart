import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) =>
            Container(
              margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.04, horizontal: 15.0),
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
                                  'No account? ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: constraints.maxWidth*0.0445,
                                  ),
                                ),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: constraints.maxWidth*0.047,
                                  ),
                                ),
                              ],
                            ),//text-- no account?login
                            Container(
                              margin: EdgeInsets.only(top: constraints.maxHeight*0.006,),
                              width: constraints.maxWidth*0.451,
                              height: constraints.maxHeight*0.0027,
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.14),
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
                    ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:constraints.maxHeight*0.034,),
                          margin: EdgeInsets.only(bottom: constraints.maxHeight*0.05,),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Forgot password ?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: constraints.maxWidth*0.041,
                                  ),
                                ),
                              ),
                              Container(
                                width: constraints.maxWidth*0.18,
                                height: constraints.maxHeight*0.08,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.8),
                                  border: Border.all(
                                      width: constraints.maxWidth*0.003,
                                  ),
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0xFFAB4148),
                                  //     Color(0xFF189DF4),
                                  //   ],
                                  // )
                                ),
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  size: constraints.maxWidth*0.10,
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
