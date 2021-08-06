import 'package:flutter/material.dart';
import 'bottomNavigationColor.dart';
import 'package:untitled1/settings/allSettings.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
enum myColor{
  today, exercise, settings,
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepOrangeAccent.withOpacity(0.2),
                          ),
                          child: Icon(
                            Icons.filter_list_rounded,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                      ReuseableText(
                        textName: 'Good Morning',
                      ),
                      ReuseableText(
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
                              ReuseableCard(
                                cardName: 'Diet Recommendation',
                                image: 'images/Eating healthy food-rafiki.png',
                              ),
                              ReuseableCard(
                                cardName: 'kagel Exercises',
                                image: 'images/Workout-amico.png',
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReuseableCard(
                                cardName: 'Meditation',
                                image: 'images/Meditation.gif',
                              ),
                              ReuseableCard(
                                cardName: 'Yoga',
                                image: 'images/Healthy habit.gif',
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
        //TODO: also do reduce the bottom navigation size and learn how to navigate some part of the screen, just like navigating without moving the actual buttom nav bar.
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
                  });
                },
                child: ReuseableButtomIcon(
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
                child: ReuseableButtomIcon(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllSettings()));
                  });
                },
                child: ReuseableButtomIcon(
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


class ReuseableButtomIcon extends StatelessWidget {
  ReuseableButtomIcon({required this.name, required this.iconName, required this.color, required this.iconSize});
  final String name;
  final IconData iconName;
  final Color color;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5.0),
      child: Container(
        width: 95.0,
        height: 60.0,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconName,
                size: iconSize,
                color: color,
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.cardName, required this.image});
  final String cardName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11.0),
      ),
      child: Container(
        width: 150.0,
        height: 184.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              cardName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableText extends StatelessWidget {
  ReuseableText({required this.textName});

  final String textName;

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 38,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.8,
      ),
    );
  }
}
