import 'package:flutter/material.dart';

final kFormContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.2),
  color: const Color(0xFFF0F0F0),
);

final kFormTextStyle = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
);

final kFormInputDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: Color(0xFFAEAEB2),
    fontSize: 18,
  ),
  fillColor: const Color(0xFFF0F0F0),
  focusColor: Colors.blueAccent,
  contentPadding: EdgeInsets.symmetric(horizontal: 21, vertical: 14.0),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.2),
  ),
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
);