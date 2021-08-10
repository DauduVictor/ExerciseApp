import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  double enabledTappedWidth = 2.6;
  double disabledTappedWidth = 0.64;
  Color enabledTappedColor = Colors.blue.shade700;
  Color disabledTappedColor = Colors.grey.withOpacity(0.1,);
  @override
  Widget build(BuildContext Context) {
    double presentWidth = disabledTappedWidth;
    Color presentColor = disabledTappedColor;
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) => Container(
            margin: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: constraints.maxHeight*0.015),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(Context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                      size: 33.0,
                    ),
                  ),
                ),//back button
                Container(
                  margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.02,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose your language',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: constraints.maxWidth*0.059,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                      TextButton(
                        onPressed: () {
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.all(0.0),
                          ),
                        ),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.black,
                          size: constraints.maxWidth*0.114,
                        ),
                      ),
                    ],
                  ),
                ),//choose your language text and mark done
                Container(
                  height: constraints.maxHeight*0.8018,
                  child: ListView(
                    children: [
                      Container(
                        height: constraints.maxHeight*0.10,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: presentWidth ,
                            color: presentColor,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              presentWidth = enabledTappedWidth;
                              print('this button was pressed ');
                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.10,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: 0.64,
                            color: Colors.grey.withOpacity(0.1,),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {

                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: Row(
                            children: [

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.10,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: 0.64,
                            color: Colors.grey.withOpacity(0.1,),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {

                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: Row(
                            children: [

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight*0.10,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: constraints.maxHeight*0.01,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.3),
                          border: Border.all(
                            width: 0.64,
                            color: Colors.grey.withOpacity(0.1,),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {

                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(0.0),
                            ),
                          ),
                          child: Row(
                            children: [

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),//different languages container
              ],
            ),
          ),),
        ),
      ),
    );
  }
}
