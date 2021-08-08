import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
                  margin: EdgeInsets.only(left: constraints.maxWidth*0.067, bottom:constraints.maxHeight*0.01, top:constraints.maxHeight*0.02,),
                  child: Row(
                    children: [
                      Container(
                        width: constraints.maxWidth*0.22,
                        height: constraints.maxHeight*0.18,
                        margin: EdgeInsets.only(right: constraints.maxWidth*0.13,),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE2E2E2).withOpacity(0.3),
                        ),
                        child: Icon(
                          IconlyBold.arrowLeft,
                          color: Colors.black,
                          size: 34.0,
                        ),
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: constraints.maxHeight*0.045,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
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
                          ),
                          SizedBox(width: constraints.maxWidth*0.023,),
                          Icon(
                            IconlyLight.arrowUp2,
                            color: Colors.black,
                            size: constraints.maxHeight*0.037,
                          ),
                        ],
                      ),
                      Icon(
                        IconlyLight.calendar,
                        color: Colors.black,
                        size: constraints.maxHeight*0.037,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.018),
                  height: constraints.maxHeight*0.33,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.1,),
                ),
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
                ),
                Container(
                  padding: EdgeInsets.only(top: constraints.maxHeight*0.012),
                  height: constraints.maxHeight*0.36,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Container(
                        height: constraints.maxHeight*0.13,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          color: Colors.grey
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.13,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                            color: Colors.grey
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.13,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                            color: Colors.grey
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.13,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                            color: Colors.grey
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.13,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),),
        ),
      ),
    );
  }
}
