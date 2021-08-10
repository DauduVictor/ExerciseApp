import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'refactoredWidgets.dart';
import 'profile.dart';
import 'package:flutter/cupertino.dart';
import 'contactUs.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/settings/language.dart';

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
class MyHome extends StatefulWidget {

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool val = false;
  onPressedSwitch(value){
    setState(() {
      val = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:18, top: 30.0, right: 22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, PageTransition(type:PageTransitionType.leftToRightWithFade, child:  MyApp()));
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 35.0,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25.3,bottom: 11.0,),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 45.7,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),//settings text
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0,),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: ReuseableRoundedIcon(
                            size: 42.0,
                            height: 65.0,
                            width: 65.0,
                            boxColor: Color(0xFFF5F4F7),
                            iconColor: Color(0xFFB7BCC9),
                            boxIcon: IconlyBold.profile,
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
                          contentPadding: EdgeInsets.only(left: 1.5),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => Profile()));
                        },
                        child: ReuseableBoxArrow(),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ReuseableSettingsField(
                  fieldName: 'Language',
                  iconData: Icons.language_rounded,
                  boxColor: Color(0xFFFFF0E5),
                  iconColor: Color(0xFFFF6B00),
                  page: Language(),
                  titleWidget: ReuseableBoxArrow(),
                ),//language
                ReuseableSettingsField(
                  fieldName: 'Notification',
                  iconData: IconlyBold.notification,
                  boxColor: Color(0xFFE5F7FF),
                  iconColor: Color(0xFF00A2EE),
                  page: ContactUs(),
                  titleWidget: ReuseableBoxArrow(),
                ),//notification
                ReuseableSettingsField(
                  fieldName: 'Dark Mode',
                  iconData: Icons.dark_mode_sharp,
                  boxColor: Color(0xFFECEAFF),
                  iconColor: Color(0xFF551EFF),
                  page: ContactUs(),
                  titleWidget: Switch.adaptive(
                    value: val,
                    onChanged: (value){
                      onPressedSwitch(value);
                    },
                    activeColor: Color(0xFF551EFF),
                    inactiveThumbColor: Colors.white54,
                    inactiveTrackColor: Colors.black45,

                  ),
                ),//dark mode
                ReuseableSettingsField(
                  fieldName: 'Help',
                  iconData: Icons.support_sharp,
                  boxColor: Color(0xFFFFE7ED),
                  iconColor: Color(0xFFFD2253),
                  page: ContactUs(),
                  titleWidget: ReuseableBoxArrow(),
                ),//help
              ],
            ),
          ),
          SizedBox(height: 47.0),
        ],
      ),
    );
  }
}


class ReuseableSettingsField extends StatelessWidget {
  ReuseableSettingsField({required this.iconData, required this.fieldName,
    required this.boxColor, required this.iconColor, required this.page, required this.titleWidget});
  final IconData iconData;
  final String fieldName;
  final Color boxColor;
  final Color iconColor;
  final Widget page;
  final Widget titleWidget;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: ReuseableRoundedIcon(
                  size: 28.0,
                  height: 57.0,
                  width: 57.0,
                  boxColor: boxColor,
                  iconColor: iconColor,
                  boxIcon: iconData,
                ),
                title: Text(
                  fieldName,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.7,
                      fontWeight: FontWeight.w500
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 8.3,),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(type:PageTransitionType.rightToLeftWithFade, child: page));
                },
                child: titleWidget
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
      width: 57.1,
      height: 57.1,
      child: Icon(
        Icons.chevron_right_outlined,
        color: Colors.black,
        size: 24,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
