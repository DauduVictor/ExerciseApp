import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'refactoredWidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  _launchURL_IG()async{
    const url = 'https://instagram.com/vdaudu';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "Check your internet connectivity and try again";
    }
  }

  _launchURL_LI()async{
    const url = 'https://linkedin.com/in/daudu-victor-580970201';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "Check your internet connectivity and try again";
    }
  }

  _launchURL_TW()async{
    const url = 'https://twitter.com';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "Check your internet connectivity and try again";
    }
  }

  _launchEmail()async{
    launch("mailto:Daudu.victor173@gmail.com?subject=Support for Exercise App");
  }

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins',),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) => Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 8.0),
                    width: double.infinity,
                    height: constraints.maxHeight*0.487,
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
                        Navigator.pop(Context);
                      },
                      child: Container(
                        width: 54.0,//constraints.maxWidth*0.138,
                        height: 54.0,//constraints.maxHeight*0.138,
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
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: constraints.maxHeight*0.014, top: constraints.maxHeight*0.01),
                child: Column(
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

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.01),
                margin: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.039,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _launchEmail();
                        });
                      },
                      child: ReuseableRoundedIcon(
                          boxColor: Colors.grey.withOpacity(0.067,),
                          boxIcon: FontAwesomeIcons.google,
                          iconColor: Colors.black,
                          width: 60.0,//constraints.maxWidth*0.064
                          height: 60.0,
                          size: 30.0
                      ),
                    ),//mail
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _launchURL_TW();
                        });
                      },
                      child: ReuseableRoundedIcon(
                          boxColor: Color(0xFFE5F7FF),
                          boxIcon: FontAwesomeIcons.twitter,
                          iconColor: Color(0xFF00A2EE),
                          width: 60.0,
                          height: 60.0,
                          size: 30.0
                      ),
                    ),//twitter
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _launchURL_LI();
                        });
                      },
                      child: ReuseableRoundedIcon(
                          boxColor: Color(0xFFECEAFF),
                          boxIcon: FontAwesomeIcons.linkedinIn,
                          iconColor: Color(0xFF551EFF),
                          width: 60.0,
                          height: 60.0,
                          size: 30.0
                      ),
                    ),//linked ln
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _launchURL_IG();
                        });
                      },
                      child: ReuseableRoundedIcon(
                          boxColor: Color(0xFFFFE7ED),
                          boxIcon: FontAwesomeIcons.instagram,
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
    return LayoutBuilder(builder: (context, constraints) => Container(
      margin: EdgeInsets.only(bottom: 7.0),
      padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10.0),
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
    ),);
  }
}
