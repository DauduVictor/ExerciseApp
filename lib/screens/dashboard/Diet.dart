import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) => Stack(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight*0.45,
              color: Colors.blue.withAlpha(70),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: constraints.maxHeight*0.015,horizontal: 20.0),
              child: Icon(
                Icons.arrow_back_sharp,
                size: 26,
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
