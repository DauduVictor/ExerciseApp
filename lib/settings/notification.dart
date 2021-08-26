import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'notificationPreference.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
                              size: 31.0,
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth*0.1,),
                          Text(
                            'Notifications',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.07 ),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              IconlyBold.notification,
                              size: 138.0,
                              color: Color(0xFF00A2EE).withOpacity(0.48,),
                            ),
                            SizedBox(
                              height: constraints.maxHeight*0.04,
                            ),
                            Text(
                              'Would you like to receive notifications from the Exercise app?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 21.0,
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight*0.025,
                            ),
                            Text(
                              'Keep up to date with the latest diet recommendations, personal reminders and a lot more..',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(Context);
                        },
                        child: Center(
                          child: Text(
                            'No Thanks',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: constraints.maxHeight*0.012),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight*0.071,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.2),
                        border: Border.all(
                          width: constraints.maxWidth*0.003,
                          color: Color(0xFF00A2EE),
                        ),
                        color: Color(0xFF00A2EE),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(Context, PageTransition(type:PageTransitionType.rightToLeft, child:  NotiPreference()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: Text(
                                'Yes, Choose Notifications',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ),
                            SizedBox(width: constraints.maxWidth*0.08,),
                            Padding(
                              padding:  EdgeInsets.only(right: constraints.maxWidth*0.06),
                              child: Icon(
                                IconlyBold.arrowRight,
                                size: 20,
                              ),
                            ),
                          ],
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
