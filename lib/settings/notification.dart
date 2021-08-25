import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/init_screen/split_log_sin.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) =>
              Padding(
                padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: constraints.maxHeight*0.037, left: constraints.maxWidth*0.012),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(Context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.black,
                              size: 33.0,
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth*0.1,),
                          Text(
                            'Notifications',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: constraints.maxWidth*0.06
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight*0.071,
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
                          Navigator.push(Context, PageTransition(type:PageTransitionType.leftToRight, child:  Split()));
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
                                fontSize: constraints.maxWidth*0.044,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
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
