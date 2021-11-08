import 'package:flutter/material.dart';
import 'package:untitled1/components/round_box_icon.dart';
import 'refactoredWidgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins',),
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left:25, top: 30.0, right: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        width: 60.0,
                        height: 60.0,
                        child: Icon(
                          Icons.done_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFF01B8FF),
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF91B8FF),
                                blurRadius: 1.0,
                              )
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 45.7,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),//account text
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Photo',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.7,
                              ),
                            ),
                            SizedBox(width: 73,),
                            Column(
                              children: [
                                ReusableRoundedIcon(
                                  size: 50.0,
                                  height: 90.0,
                                  width: 90.0,
                                  boxColor: Color(0xFFF5F4F7),
                                  iconColor: Color(0xFFB7BCC9),
                                  boxIcon: IconlyBold.profile,
                                ),
                                SizedBox(height: 22.5,),
                                Text(
                                  'Upload Image',
                                  style: TextStyle(
                                    color: Color(0xFF01B8FF),
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),//photo
                      Container(
                        child: Column(
                          children: [
                            ReuseableField(
                              fieldTitle: 'Name',
                              fieldLeading: 'David Clerisseau',
                            ),
                            SizedBox(height: 10.0,),
                            ReuseableDivider(),
                          ],
                        ),
                      ),//name
                      Row(
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 53,),
                          Row(
                            children: [
                              ReusableRoundedIcon(
                                size: 30.0,
                                height: 60.0,
                                width: 60.0,
                                boxColor: Color(0xFF551EFE),
                                iconColor: Colors.white,
                                boxIcon: Icons.male_sharp,
                              ),
                              SizedBox(width: 20.0,),
                              ReusableRoundedIcon(
                                size: 30.0,
                                height: 60.0,
                                width: 60.0,
                                boxColor: Color(0xFFF6F5F8),
                                iconColor: Color(0xFFB7BCC9),
                                boxIcon: Icons.female_sharp,
                              ),
                            ],
                          ),
                        ],
                      ),//gender
                      Container(
                        child: Column(
                          children: [
                            ReuseableField(
                              fieldTitle: 'Age',
                              fieldLeading: '   28',
                            ),
                            SizedBox(height: 10.0,),
                            ReuseableDivider(),
                          ],
                        ),
                      ), //age
                      Container(
                        child: Column(
                          children: [
                            ReuseableField(
                              fieldTitle: 'Email',
                              fieldLeading: 'clerisseau@gmail.com',
                            ),
                            SizedBox(height: 10.0,),
                            ReuseableDivider(),
                          ],
                        ),
                      ), //email
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
