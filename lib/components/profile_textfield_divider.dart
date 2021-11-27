import 'package:flutter/material.dart';

class ReusableDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 80,
      endIndent: 10,
      thickness: 0.4,

    );
  }
}