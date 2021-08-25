import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/settings/contactUs.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/init_screen/split_log_sin.dart';

class ModalBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (
            context, constraints) => Container(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: constraints.maxHeight*0.137,
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
                            height: constraints.maxHeight*0.137,
                            width: constraints.maxWidth,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, PageTransition(type:PageTransitionType.fade, child:  Split()));
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
                            height: constraints.maxHeight*0.137,
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
                            height: constraints.maxHeight*0.137,
                            width: constraints.maxWidth,
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text('Do you want to exit this application?',),
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
                                          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                                        },
                                        child: Text('Leave'),
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
                  ],
                ),
        ));
  }
}

class ReusableModalListTile extends StatelessWidget {
  ReusableModalListTile({required this.icon, required this.titleText});
  final IconData icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.deepOrangeAccent.withOpacity(0.7),
        size: 30.0,
      ),
      title: Text(
        titleText,
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 0.30,
          fontSize: 19.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ReusableBottomIcon extends StatelessWidget {
  ReusableBottomIcon({required this.name, required this.iconName, required this.color, required this.iconSize});
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardName, required this.image});
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

class ReusableText extends StatelessWidget {
  ReusableText({required this.textName});

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