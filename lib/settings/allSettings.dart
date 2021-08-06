import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'refactoredWidgets.dart';
import 'profile.dart';
import 'package:flutter/cupertino.dart';
import 'contactUs.dart';
import 'package:untitled1/dashboard/main.dart';

class AllSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins',),
      home: SafeArea(
        child: Scaffold(
          body: MyHome(),
        ),
      ),
    );
  }
}

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, top: 30.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 35.0,
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.0,bottom: 15.0,),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),//settings text
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              leading: ReuseableRoundedIcon(
                                size: 45.0,
                                height: 65.0,
                                width: 65.0,
                                boxColor: Color(0xFFF5F4F7),
                                iconColor: Color(0xFFB7BCC9),
                                boxIcon: Icons.nature_people_outlined,
                              ),
                              title: Text(
                                'David Clerisseau',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              subtitle: Text(
                                'Personal Info',
                                style: TextStyle(
                                  color: Color(0xFFB8BCC9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => Profile() ));
                            },
                            child: ReuseableBoxArrow(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ReuseableSettingsField(
                    fieldName: 'Language',
                    iconData: Icons.language_rounded,
                    boxColor: Color(0xFFFFF0E5),
                    iconColor: Color(0xFFFF6B00),
                  ),//language
                  ReuseableSettingsField(
                    fieldName: 'Notification',
                    iconData: IconlyBold.notification,
                    boxColor: Color(0xFFE5F7FF),
                    iconColor: Color(0xFF00A2EE),
                  ),//notification
                  ReuseableSettingsField(
                    fieldName: 'Dark Mode',
                    iconData: Icons.dark_mode_sharp,
                    boxColor: Color(0xFFECEAFF),
                    iconColor: Color(0xFF551EFF),
                  ),//darkmode
                  ReuseableSettingsField(
                    fieldName: 'Help',
                    iconData: Icons.support_sharp,
                    boxColor: Color(0xFFFFE7ED),
                    iconColor: Color(0xFFFD2253),
                  ),//help
                ],
              ),
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

class ReuseableSettingsField extends StatelessWidget {
  ReuseableSettingsField({required this.iconData, required this.fieldName, required this.boxColor, required this.iconColor});
  final IconData iconData;
  final String fieldName;
  final Color boxColor;
  final Color iconColor;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: ReuseableRoundedIcon(
                  size: 30.0,
                  height: 60.0,
                  width: 60.0,
                  boxColor: boxColor,
                  iconColor: iconColor,
                  boxIcon: iconData,
                ),
                title: Text(
                  fieldName,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => ContactUs()));
                },
                child: ReuseableBoxArrow()
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableBoxArrow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      child: Icon(
        Icons.chevron_right_outlined,
        color: Colors.black,
        size: 25,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
