import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'package:page_transition/page_transition.dart';

class Split extends StatefulWidget {
  const Split({Key? key}) : super(key: key);

  @override
  _SplitState createState() => _SplitState();
}

class _SplitState extends State<Split> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) =>
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.07, vertical: constraints.maxHeight*0.04),
                  child: Column(
                    children: [
                      Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight*0.085,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.2),
                          border: Border.all(
                            width: constraints.maxWidth*0.003,
                            color: Color(0xFFF0F0F0),
                          ),
                          color: Color(0xFFF0F0F0),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(Context, PageTransition(type:PageTransitionType.fade, child:  SignUp()));
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.4),
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: constraints.maxWidth*0.0507,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight*0.0178,),
                      Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight*0.085,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.2),
                          border: Border.all(
                            width: constraints.maxWidth*0.003,
                            color: Colors.purple.withOpacity(0.1),
                          ),
                        ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(Context, PageTransition(type:PageTransitionType.fade, child:  Login()));
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.4),
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: constraints.maxWidth*0.0507,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
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
        ),
      ),
    );
  }
}