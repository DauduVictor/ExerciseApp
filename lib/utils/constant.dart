import 'package:flutter/material.dart';

final kFormContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.2),
);

final kFormTextStyle = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
);

final kFormInputDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: Color(0xFFAEAEB2),
    fontSize: 16,
  ),
  filled: true,
  fillColor: const Color(0xFFF0F0F0),
  focusColor: Colors.blueAccent,
  contentPadding: EdgeInsets.fromLTRB(21.0, 14.0, 21.0, 14.0),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.deepPurple, width: 1.5, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(8.2),
  ),
  enabledBorder: InputBorder.none,
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 1.0, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(8.2),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 1.5, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(8.2),
  ),
);

final loginBottomContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(21.1),
  border: Border.all(
    width: 1.3,
    color: Colors.purple.withOpacity(0.1),
  ),
);

final loginBottomTButtonDecoration = TextButton.styleFrom(
  padding: const EdgeInsets.all(0.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.8),
  ),
);