import 'package:flutter/material.dart';

class ReusableModalListTile extends StatelessWidget {

  final IconData icon;
  final String titleText;

  ReusableModalListTile({
    required this.icon,
    required this.titleText
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.deepOrangeAccent.withOpacity(0.7),
        size: 30.0,
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          color: Colors.black,
          letterSpacing: 0.30,
          fontSize: 19.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}