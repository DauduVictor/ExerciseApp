import 'package:flutter/material.dart';

class NotiPreference extends StatefulWidget {

  @override
  _NotiPreferenceState createState() => _NotiPreferenceState();
}

class _NotiPreferenceState extends State<NotiPreference> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) =>
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: constraints.maxHeight * 0.037,
                          left: constraints.maxWidth * 0.012),
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
                          SizedBox(width: constraints.maxWidth * 0.1,),
                          Text(
                            'Notification Preference',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),//back arrow and notification preference text
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(
                          top: constraints.maxHeight * 0.012),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.071,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.2),
                        border: Border.all(
                          width: constraints.maxWidth * 0.003,
                          color: Color(0xFF00A2EE),
                        ),
                        color: Color(0xFF00A2EE),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 16,
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

