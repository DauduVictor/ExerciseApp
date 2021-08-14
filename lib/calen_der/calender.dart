import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/dashboard/main.dart';
class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) => Container(
              margin: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.057,),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: constraints.maxWidth*0.037, bottom:constraints.maxHeight*0.01, top:constraints.maxHeight*0.01,),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(type:PageTransitionType.rightToLeftWithFade, child:  MyApp()));
                        },
                        child: Container(
                          width: constraints.maxWidth*0.19,
                          height: constraints.maxHeight*0.15,
                          margin: EdgeInsets.only(right: constraints.maxWidth*0.11,),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE2E2E2).withOpacity(0.3),
                          ),
                          child: Icon(
                            IconlyBold.arrowLeft,
                            color: Colors.black,
                            size: 30.7,
                          ),
                        ),
                      ),//back icon
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: constraints.maxHeight*0.044,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),//today
                    ],
                  ),
                ),//back arrow and Today text
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'January 2021',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: constraints.maxHeight*0.029,
                              fontWeight: FontWeight.w600,
                            ),
                          ),//month and year
                          SizedBox(width: constraints.maxWidth*0.02,),
                          SizedBox(
                            width: constraints.maxWidth*0.104,
                            child: TextButton(
                              onPressed: (){

                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(0.0),
                                ),
                              ),
                              child: Icon(
                                IconlyLight.arrowUp2,
                                color: Colors.black,
                                size: constraints.maxHeight*0.037,
                              ),
                            ),
                          ),//up icon
                          SizedBox(width: constraints.maxWidth*0.023,),
                          SizedBox(
                            width: constraints.maxWidth*0.104,
                            child: TextButton(
                              onPressed: () {
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(0.0),
                                ),
                              ),
                              child: Icon(
                                IconlyLight.arrowDown2,
                                color: Colors.black,
                                size: constraints.maxHeight*0.037,
                              ),
                            ),
                          ),//down icon
                        ],
                      ),
                      Icon(
                        IconlyLight.calendar,
                        color: Colors.black,
                        size: constraints.maxHeight*0.037,
                      ),
                    ],
                  ),
                ),//name and year, up and down icon and calender
                Container(
                  margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.018),
                  height: constraints.maxHeight*0.33,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.1,),
                ),//calender numbers
                Container(
                  margin: EdgeInsets.only(bottom: constraints.maxHeight*0.009,),
                  width: constraints.maxWidth*0.75,
                  height: constraints.maxHeight*0.0035,
                  decoration: BoxDecoration(
                    color: Color(0xFFBEBEC3),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Color(0xFFBEBEC3),
                        Color(0xFFBEBEC3),
                        Colors.white,
                      ],
                    ),
                  ),
                ),//faint divider
                Container(
                  padding: EdgeInsets.only(top: constraints.maxHeight*0.012),
                  height: constraints.maxHeight*0.28,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Container(
                        height: constraints.maxHeight*0.11,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          // color: Colors.transparent,
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: 0.64,
                            color: Colors.grey.withOpacity(0.1,),
                          ),
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.11,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          // color: Colors.transparent,
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: 0.64,
                            color: Colors.grey.withOpacity(0.1,),
                          ),
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.11,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          // color: Colors.transparent,
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey.shade100,
                              Colors.white,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: 0.64,
                            color: Colors.grey.withOpacity(0.1,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),//scrollable appointment date
              ],
            ),
          ),),
        ),
      ),
    );
  }
}
