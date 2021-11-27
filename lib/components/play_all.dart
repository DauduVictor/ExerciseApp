import 'package:flutter/material.dart';

class PlayAll extends StatelessWidget {

  final double? posHeight;
  final double? posWidth;

  const PlayAll({
    this.posHeight,
    this.posWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: posHeight ?? 30,
      right: posWidth ?? 21,
      child: Container(
        height: 74,
        width: 74,
        child: FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: Colors.green.shade800,
          foregroundColor: Colors.white,
          child: const Icon(
            Icons.play_arrow_sharp,
            size: 40,
          ),
        ),
      ),
    );
  }
}