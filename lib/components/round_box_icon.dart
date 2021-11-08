import 'package:flutter/material.dart';

class ReusableRoundedIcon extends StatelessWidget {

  ReusableRoundedIcon({
    required this.boxColor,
    required this.boxIcon,
    required this.iconColor,
    this.width,
    this.height,
    required this.size
  });

  final Color boxColor;
  final IconData boxIcon;
  final Color iconColor;
  final double? width;
  final double? height;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? 60,
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
}