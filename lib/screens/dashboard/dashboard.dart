import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/components/dashboard_buttom_icon.dart';
import 'package:untitled1/components/dashboard_card.dart';
import 'package:untitled1/components/modal_tile.dart';
import 'package:untitled1/screens/settings/allSettings.dart';
import 'package:untitled1/screens/settings/contactUs.dart';
import '../../splash.dart';

class Dashboard extends StatefulWidget {

  static const String id = 'dashboard';
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}
enum myColor{
  exercise, settings,
}
class _DashboardState extends State<Dashboard> {

  final _kActiveColor = Colors.black;
  final _kInActiveColor = Colors.grey.shade600;
  static const _kActiveIconSize = 35.7;
  static const _kInActiveIconSize = 33.8;

  myColor touchedIcon = myColor.exercise;
  myColor touchedIconSize = myColor.exercise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: Stack(
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
                                  return _bottomModalSheet(constraints);
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
                          ),//icon for drawing bottom modal
                        ),
                        Text(
                          'Good Morning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Text(
                          'Daudu',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Container(
                          height: 52.0,
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
                              fontSize: 19.0,

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
          ),
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
                  setState(() {
                    touchedIcon = myColor.exercise;
                    touchedIconSize = myColor.exercise;
                  });
                },
                child: ReusableBottomIcon(
                  iconName: Icons.fitness_center_rounded,
                  name: 'All Exercises',
                  color: touchedIcon == myColor.exercise ? _kActiveColor : _kInActiveColor,
                  iconSize: touchedIconSize ==  myColor.exercise? _kActiveIconSize: _kInActiveIconSize,
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
                  color: touchedIcon == myColor.settings?_kActiveColor:_kInActiveColor ,
                  iconSize: touchedIconSize ==  myColor.settings? _kActiveIconSize:_kInActiveIconSize,
                ),
              ),
            ],
          ),
        )
    );
  }

}

Widget _bottomModalSheet(BoxConstraints constraints) {
  return StatefulBuilder(
    builder: (context, setState) => Container(
      height: constraints.maxHeight/2.4,
      color: Colors.deepOrangeAccent.withOpacity(0.1),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 3.0),
              height: 6,
              width: constraints.maxWidth*0.18,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 4),
                ///become a trainer
                Container(
                  width: constraints.maxWidth,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                    ),
                    child: ReusableModalListTile(
                      icon: IconlyBroken.infoSquare,
                      titleText: 'Become a trainer',
                    ),
                  ),
                ),
                ///reach out to a trainer
                Container(
                  width: constraints.maxWidth,
                  child: TextButton(
                    onPressed: () {
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                    ),
                    child: ReusableModalListTile(
                      icon: IconlyBold.graph,
                      titleText: 'Reach out to a trainer',
                    ),
                  ),
                ),
                ///report a problem
                Container(
                  width: constraints.maxWidth,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context, PageTransition(
                        type:PageTransitionType.rightToLeftWithFade, child:  ContactUs()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                    ),
                    child: ReusableModalListTile(
                      icon: IconlyBold.swap,
                      titleText: 'Report a problem',
                    ),
                  ),
                ),
                ///log out
                Container(
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
                                Navigator.of(context).pushNamedAndRemoveUntil(SplashScreen.id, (Route<dynamic>route) => false);
                              },
                              child: Text('Logout'),
                            ),
                          ],
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                    ),
                    child: ReusableModalListTile(
                      icon: IconlyBroken.logout,
                      titleText: 'Log Out',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}