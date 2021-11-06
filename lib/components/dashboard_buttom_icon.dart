import 'package:flutter/material.dart';

class ReusableBottomIcon extends StatelessWidget {

  final String name;
  final IconData iconName;
  final Color color;
  final double iconSize;

  ReusableBottomIcon({
    required this.name,
    required this.iconName,
    required this.color,
    required this.iconSize
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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