import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/components/round_box_icon.dart';

class ReusableSettingsField extends StatelessWidget {

  ReusableSettingsField({
    required this.iconData,
    required this.fieldName,
    required this.boxColor,
    required this.iconColor,
    required this.page,
    required this.titleWidget
  });

  final IconData iconData;
  final String fieldName;
  final Color boxColor;
  final Color iconColor;
  final Widget page;
  final Widget titleWidget;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: ReusableRoundedIcon(
                  size: 28.0,
                  height: 57.0,
                  width: 57.0,
                  boxColor: boxColor,
                  iconColor: iconColor,
                  boxIcon: iconData,
                ),
                title: Text(
                  fieldName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.7,
                    fontWeight: FontWeight.w500
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8.3),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(type:PageTransitionType.rightToLeftWithFade, child: page));
                },
                child: titleWidget
            ),
          ],
        ),
      ),
    );
  }
}