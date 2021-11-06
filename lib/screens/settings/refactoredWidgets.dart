import 'package:flutter/material.dart';

class ReuseableDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 80,
      endIndent: 10,
      thickness: 0.4,

    );
  }
}//Divider

class ReuseableRoundedIcon extends StatelessWidget {
  ReuseableRoundedIcon({required this.boxColor, required this.boxIcon, required this.iconColor, required this.width, required this.height, required this.size });
  final Color boxColor;
  final IconData boxIcon;
  final Color iconColor;
  final double width;
  final double height;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Icon(
        boxIcon,
        color: iconColor,
        size: size, // icon size
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: boxColor,
      ),
    );
  }
}//Icon

class ReuseableField extends StatelessWidget {
  ReuseableField({required this.fieldTitle, required this.fieldLeading});
  final String fieldTitle;
  final String fieldLeading;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          fieldTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.8,
          ),
        ),
        SizedBox(width: 73,),
        Text(
          fieldLeading,
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
      ],
    );
  }
}//name, gender... field



