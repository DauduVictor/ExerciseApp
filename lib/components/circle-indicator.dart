import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoActivityIndicator(radius: 16)
        : CircularProgressIndicator(
      strokeWidth: 3.2,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
    );
  }
}