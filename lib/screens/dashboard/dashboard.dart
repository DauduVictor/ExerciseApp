import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/components/dashboard_buttom_icon.dart';
import 'package:untitled1/components/dashboard_card.dart';
import 'package:untitled1/components/modal_tile.dart';
import 'package:untitled1/screens/dashboard/yoga.dart';
import 'package:untitled1/screens/settings/allSettings.dart';
import 'package:untitled1/screens/settings/contactUs.dart';
import '../../splash.dart';
import 'diet_recommendation.dart';
import 'kegal.dart';
import 'meditation.dart';

class Dashboard extends StatefulWidget {

  static const String id = 'dashboard';
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}
enum myColor{
  exercise, settings,
}
class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {

  /// Variable to hold the greeting
  String? greeting;

  /// Function that shows greetings based on the users local time
  void greetingMessage() {

    ///Instance of [DateTime] class
    var now = DateTime.now().hour;

    if (now < 12) setState(() => greeting = 'Good Morning') ;
    else if (now < 17) setState(() => greeting = 'Good Afternoon');
    else setState(() => greeting = 'Good Evening');
  }

  /// Variable to hold the animation controller
  late AnimationController _controller;

  /// Variable to hold the tween value of the animation
  late Animation<double> _elevationAnimation;

  @override
  void initState() {
    super.initState();
    greetingMessage();
    _controller = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );

    _elevationAnimation = Tween(begin: 1.0, end: 20.0).animate(_controller);

    /// Make the [Animation_Controller] know about the new values being fired
    _controller.addListener(() {
      setState(() { });
    });

    _controller.repeat(
      reverse: true
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  final _kActiveColor = Colors.black;
  final _kInActiveColor = Colors.grey.shade600;
  static const _kActiveIconSize = 35.7;
  static const _kInActiveIconSize = 33.8;

  myColor touchedIcon = myColor.exercise;
  myColor touchedIconSize = myColor.exercise;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
      },
      child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Container(
                height: constraints.maxHeight,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.deepOrangeAccent.withOpacity(0.2),
                      height: constraints.maxHeight * 0.45,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 15, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          /// Good morning, button - show modal sheet
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    greeting != null ? greeting! : 'Good day',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                  Text(
                                    'Daudu',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
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
                              ),
                            ],
                          ),
                          /// Search
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
                          ///Exercise cards
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReusableCard(
                                    cardName: 'Diet Recommendation',
                                    image: 'assets/images/Eating healthy food-rafiki.png',
                                    route: Diet.id,
                                    heroTag: 'dietPage',
                                  ),
                                  ReusableCard(
                                    cardName: 'kagel Exercises',
                                    image: 'assets/images/Workout-amico.png',
                                    route: Kegal.id,
                                    heroTag: 'kegalPage',
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReusableCard(
                                    cardName: 'Meditation',
                                    image: 'assets/images/Meditation-rafiki.png',
                                    route: Meditation.id,
                                    heroTag: 'mediationPage',
                                  ),
                                  ReusableCard(
                                    cardName: 'Yoga',
                                    image: 'assets/images/Yoga with face masks-amico.png',
                                    route: Yoga.id,
                                    heroTag: 'yogaPage',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          ///launch map
                          AnimatedBuilder(
                            animation: _controller,
                            builder: (context, child) {
                              return Center(
                                child: SizedBox(
                                  width: constraints.maxWidth / 1.5,
                                  child: Card(
                                    elevation: _elevationAnimation.value,
                                    shadowColor: Colors.purple.withOpacity(0.45),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.ac_unit_outlined,
                                          color: Colors.blue,
                                          size: 34,
                                        ),
                                        title: Text(
                                          'Find a partner',
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.8),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                    name: 'Home',
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
      ),
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