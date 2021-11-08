import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

  final String label;
  final String fieldName;
  final IconData iconName;

  ReusableTextField({
    required this.label,
    required this.fieldName,
    required this.iconName
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 10.0),
      height: 101.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF0D47A1),
              fontSize: 13.8,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            height: 57.87,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: const Color(0xFF1E88E5),
                width: 1.45,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  iconName,
                  color: const Color(0xFF0D47A1),
                  size: 24.0,
                ),
                const SizedBox(width: 20.0,),
                Text(
                  fieldName,
                  style: const TextStyle(
                    color: Color(0xFF0D47A1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}