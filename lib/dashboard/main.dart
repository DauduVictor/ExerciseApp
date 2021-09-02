import 'package:flutter/material.dart';
import 'bottomNavigationColor.dart';
import 'package:untitled1/settings/allSettings.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled1/dashboard/reuseable_widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/calen_der/calender.dart';
import 'package:untitled1/init_screen/split_log_sin.dart';
import 'package:untitled1/settings/contactUs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
enum myColor{
  today, exercise, settings,
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext Context) {
    return  MaterialApp(
      routes: {
        '/split_log_sin.dart':(context) => Split(),
      },
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        child: MyMain(),
      ),
    );
  }
}

class MyMain extends StatefulWidget {

  @override
  _MyMainState createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  myColor touchedIcon = myColor.exercise;
  myColor touchedIconSize = myColor.exercise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.deepOrangeAccent.withOpacity(0.2),
                  height: 365.0,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,bottom: 20.0, left: 300.0,),
                        child: GestureDetector(
                          onTap: (){
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                              ),
                              context: context,
                              builder: (context){
                                  return ModalBottomSheet();
                                },
                            );
                          },
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrangeAccent.withOpacity(0.41),
                            ),
                            child: Icon(
                              Icons.filter_list_rounded,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),//icon for drawing buttom modal
                      ),
                      ReusableText(
                        textName: 'Good Morning',
                      ),
                      ReusableText(
                        textName: 'Daudu',
                      ),
                      Container(
                        height: 53.0,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 28.0, horizontal: 20.0),
                        padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                            ),
                            hintText: 'Search',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8,
                            fontSize: 20.0,

                          ),
                        ),
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReusableCard(
                                cardName: 'Diet Recommendation',
                                image: 'images/Eating healthy food-rafiki.png',
                              ),
                              ReusableCard(
                                cardName: 'kagel Exercises',
                                image: 'images/Workout-amico.png',
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReusableCard(
                                cardName: 'Meditation',
                                image: 'images/Meditation-rafiki.png',
                              ),
                              ReusableCard(
                                cardName: 'Yoga',
                                image: 'images/Yoga with face masks-amico.png',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 68.5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width:0.1, color: Colors.black,),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState((){
                    touchedIcon = myColor.today;
                    touchedIconSize =  myColor.today;
                    Navigator.push(context, PageTransition(type:PageTransitionType.leftToRightWithFade, child:  Calender()));
                  });
                },
                child: ReusableBottomIcon(
                  iconName: IconlyBold.calendar,
                  name: 'Today',
                  color: touchedIcon == myColor.today? kActiveColor : kInActiveColor,
                  iconSize: touchedIconSize ==  myColor.today? kActiveIconSize:kInActiveIconSize,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    touchedIcon = myColor.exercise;
                    touchedIconSize = myColor.exercise;
                  });
                },
                child: ReusableBottomIcon(
                  iconName: Icons.fitness_center_rounded,
                  name: 'All Exercises',
                  color: touchedIcon == myColor.exercise ? kActiveColor : kInActiveColor,
                  iconSize: touchedIconSize ==  myColor.exercise? kActiveIconSize:kInActiveIconSize,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    touchedIcon = myColor.settings;
                    touchedIconSize =  myColor.settings;
                    Navigator.push(context, PageTransition(type:PageTransitionType.rightToLeftWithFade, child:  AllSettings()));
                  });
                },
                child: ReusableBottomIcon(
                  iconName: IconlyBold.setting,
                  name: 'Settings',
                  color: touchedIcon == myColor.settings?kActiveColor:kInActiveColor ,
                  iconSize: touchedIconSize ==  myColor.settings? kActiveIconSize:kInActiveIconSize,
                ),
              ),
            ],
          ),
        )
    );
  }
}
class ModalBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext Context) {
    return LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight*0.611,
          color: Colors.deepOrangeAccent.withOpacity(0.1),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 3.0),
                  height: constraints.maxHeight*0.013,
                  width: constraints.maxWidth*0.18,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Container(
                height: constraints.maxHeight*0.575,
                child: Padding(
                  padding:  EdgeInsets.only(top: constraints.maxHeight*0.015,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //height: constraints.maxHeight*0.137,
                        width: constraints.maxWidth,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: ReusableModalListTile(
                            icon: IconlyBroken.infoSquare,
                            titleText: 'Become a trainer',
                          ),
                        ),
                      ),//become a trainer
                      Container(
                        //height: constraints.maxHeight*0.137,
                        width: constraints.maxWidth,
                        child: TextButton(
                          onPressed: () {
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: ReusableModalListTile(
                            icon: IconlyBold.graph,
                            titleText: 'Reach out to a trainer',
                          ),
                        ),
                      ),//reach out to a trainer
                      Container(
                        //height: constraints.maxHeight*0.137,
                        width: constraints.maxWidth,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context, PageTransition(
                                type:PageTransitionType.rightToLeftWithFade, child:  ContactUs()));
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: ReusableModalListTile(
                            icon: IconlyBold.swap,
                            titleText: 'Report a problem',
                          ),
                        ),
                      ),//report a problem
                      Container(
                        //height: constraints.maxHeight*0.137,
                        width: constraints.maxWidth,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Do you want to logout of your account?',),
                                content: Row(
                                  children: [
                                    Text('Click '),
                                    Text('cancel', style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text(' to stay...'),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: (){
                                      //SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                                      Navigator.pop(context);
                                      Navigator.of(Context).pushNamedAndRemoveUntil('/split_log_sin.dart', (Route<dynamic>route) => false);
                                    },
                                    child: Text('Logout'),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: ReusableModalListTile(
                            icon: IconlyBroken.logout,
                            titleText: 'Log Out',
                          ),
                        ),
                      ),//log out
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
