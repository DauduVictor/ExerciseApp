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



