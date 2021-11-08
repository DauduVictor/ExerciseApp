import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled1/components/contact_text_field.dart';
import 'package:untitled1/components/round_box_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {

  static const String id = 'contactUs';
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  /// Function to navigate user to the link provided
  _launchUrl(String link) async{
    String url = link;
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "Check your internet connectivity and try again";
    }
  }

  /// Function to navigate user to mail
  _launchEmail() async{
    launch("mailto:Daudu.victor173@gmail.com?subject=Support for Exercise App");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) => Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  width: double.infinity,
                  height: constraints.maxHeight*0.487,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Mention.gif'),
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
                      child: const Icon(
                        IconlyLight.arrowLeft2,
                        color: Colors.white,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0D47A1),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF0D47A1),
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
              margin: const EdgeInsets.only(bottom: 14, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableTextField(
                    label: 'Email',
                    fieldName: 'Daudu.victor173@gmail.com',
                    iconName: IconlyBold.message,
                  ),
                  ReusableTextField(
                    label: 'Contact',
                    fieldName: '(+234) 8082734235',
                    iconName: IconlyBold.call,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              margin: const EdgeInsets.symmetric(vertical: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _launchEmail();
                      });
                    },
                    child: ReusableRoundedIcon(
                      boxColor: Colors.grey.withOpacity(0.067,),
                      boxIcon: FontAwesomeIcons.google,
                      iconColor: Colors.black,
                      size: 30.0
                    ),
                  ),//mail
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://twitter.com');
                      });
                    },
                    child: ReusableRoundedIcon(
                      boxColor: const Color(0xFFE5F7FF),
                      boxIcon: FontAwesomeIcons.twitter,
                      iconColor: const Color(0xFF00A2EE),
                      size: 30.0
                    ),
                  ),//twitter
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _launchUrl('https://linkedin.com/in/daudu-victor-580970201');
                      });
                    },
                    child: ReusableRoundedIcon(
                      boxColor: const Color(0xFFECEAFF),
                      boxIcon: FontAwesomeIcons.linkedinIn,
                      iconColor: const Color(0xFF551EFF),
                      size: 30.0
                    ),
                  ),//linked ln
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://instagram.com/vdaudu');
                      });
                    },
                    child: ReusableRoundedIcon(
                      boxColor: const Color(0xFFFFE7ED),
                      boxIcon: FontAwesomeIcons.instagram,
                      iconColor: const Color(0xFFFD2253),
                      size: 30.0
                    ),
                  ),//instagram
                ],
              ),
            ),
            Center(
              child: const Text(
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
    );
  }
}
