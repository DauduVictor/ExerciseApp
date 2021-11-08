import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled1/components/round_box_icon.dart';
import 'package:untitled1/components/settings_arrow_nav.dart';
import 'package:untitled1/components/settings_field.dart';
import 'package:untitled1/screens/dashboard/dashboard.dart';
import 'language.dart';
import 'profile.dart';
import 'package:flutter/cupertino.dart';
import 'contactUs.dart';
import 'package:page_transition/page_transition.dart';
import 'notification.dart';

class AllSettings extends StatefulWidget {

  @override
  State<AllSettings> createState() => _AllSettingsState();
}

class _AllSettingsState extends State<AllSettings> {

  bool val = false;

  /// Function to hold the state of the dark mode toggle button
  onPressedSwitch(value){
    setState(() {
      val = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => Container(
            padding: const EdgeInsets.fromLTRB(18, 30.0, 22.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(type:PageTransitionType.leftToRightWithFade, child:  Dashboard()));
                  },
                  child: const Icon(
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
                        margin: const EdgeInsets.only(top: 25.3, bottom: 11.0,),
                        child: const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),//settings text
                      const Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Row(
                          children: [
                            /// profile
                            Expanded(
                              child: ListTile(
                                leading: ReusableRoundedIcon(
                                  size: 42.0,
                                  height: 65.0,
                                  width: 65.0,
                                  boxColor: const Color(0xFFF5F4F7),
                                  iconColor: const Color(0xFFB7BCC9),
                                  boxIcon: IconlyBold.profile,
                                ),
                                title: Text(
                                  'Daudu Victor',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                subtitle: const Text(
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
                              child: ReusableBoxArrow(),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      /// language
                      ReusableSettingsField(
                        fieldName: 'Language',
                        iconData: Icons.language_rounded,
                        boxColor: const Color(0xFFFFF0E5),
                        iconColor: const Color(0xFFFF6B00),
                        page: Language(),
                        titleWidget: ReusableBoxArrow(),
                      ),
                      /// notification
                      ReusableSettingsField(
                        fieldName: 'Notification',
                        iconData: IconlyBold.notification,
                        boxColor: const Color(0xFFE5F7FF),
                        iconColor: const Color(0xFF00A2EE),
                        page: Notifications(),
                        titleWidget: ReusableBoxArrow(),
                      ),
                      /// dark mode
                      ReusableSettingsField(
                        fieldName: 'Dark Mode',
                        iconData: Icons.dark_mode_sharp,
                        boxColor: const Color(0xFFECEAFF),
                        iconColor: const Color(0xFF551EFF),
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
                      ),
                      /// help
                      ReusableSettingsField(
                        fieldName: 'Help',
                        iconData: Icons.support_sharp,
                        boxColor: const Color(0xFFFFE7ED),
                        iconColor: const Color(0xFFFD2253),
                        page: ContactUs(),
                        titleWidget: ReusableBoxArrow(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 21.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

