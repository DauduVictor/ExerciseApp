import 'package:flutter/material.dart';

class ReusableBoxArrow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57.1,
      height: 57.1,
      child: const Icon(
        Icons.chevron_right_outlined,
        color: Colors.black,
        size: 24,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}