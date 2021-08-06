import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'refactoredWidgets.dart';

class ContactUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins',),
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                width: double.infinity,
                height: 390.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Mention.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 24.0,
                left: 20.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 54.0,
                    height: 54.0,
                    child: Icon(
                      IconlyLight.arrowLeft2,
                      color: Colors.white,
                      size: 30,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF0D47A1),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0D47A1),
                            blurRadius: 1.0,
                          )
                        ]
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 44.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableTextField(
                      label: 'Email',
                      fieldName: 'Daudu.victor173@gmail.com',
                      iconName: IconlyBold.message,
                    ),
                    ReuseableTextField(
                      label: 'Contact',
                      fieldName: '(+234) 8082734235',
                      iconName: IconlyBold.call,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 37.9,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: ReuseableRoundedIcon(
                                boxColor: Color(0xFFFFF0E5),
                                boxIcon: Icons.language_rounded,
                                iconColor: Color(0xFFFF6B00),
                                width: 60.0,
                                height: 60.0,
                                size: 30.0
                            ),
                          ),//github
                          TextButton(
                            onPressed: (){},
                            child: ReuseableRoundedIcon(
                                boxColor: Color(0xFFE5F7FF),
                                boxIcon: Icons.facebook_rounded,
                                iconColor: Color(0xFF00A2EE),
                                width: 60.0,
                                height: 60.0,
                                size: 30.0
                            ),
                          ),//twitter
                          TextButton(
                            onPressed: () {
                            },
                            style: ButtonStyle(
                            ),
                            child: ReuseableRoundedIcon(
                                boxColor: Color(0xFFECEAFF),
                                boxIcon: Icons.facebook_rounded,
                                iconColor: Color(0xFF551EFF),
                                width: 60.0,
                                height: 60.0,
                                size: 30.0
                            ),
                          ),//linkedln
                          TextButton(
                            onPressed: (){},
                            child: ReuseableRoundedIcon(
                                boxColor: Color(0xFFFFE7ED),
                                boxIcon: Icons.language_rounded,
                                iconColor: Color(0xFFFD2253),
                                width: 60.0,
                                height: 60.0,
                                size: 30.0
                            ),
                          ),//instagram
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        'Contact Developer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          letterSpacing: 0.45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableTextField extends StatelessWidget {
  ReuseableTextField({required this.label, required this.fieldName, required this.iconName});
  final String label;
  final String fieldName;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.0),
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
      height: 101.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Color(0xFF0D47A1),
              fontSize: 13.8,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            height: 57.87,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Color(0xFF1E88E5), width: 1.45,),
            ),
            child: Row(
              children: [
                Icon(
                  iconName,
                  color: Color(0xFF0D47A1),
                  size: 24.0,
                ),
                SizedBox(width: 20.0,),
                Text(
                  fieldName,
                  style: TextStyle(
                    color: Color(0xFF0D47A1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
