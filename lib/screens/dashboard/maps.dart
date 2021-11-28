import 'package:flutter/material.dart';

class Maps extends StatefulWidget {

  static const String id = 'maps';
  const Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                  height: constraints.maxHeight,
                  child: const Center(
                    child: Text(
                      'MAPS',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black
                      ),
                    ),
                  )
              ),
              Positioned(
                left: 34,
                top: 50,
                child: Material(
                  elevation: 7,
                  shadowColor: Colors.black,
                  shape: const CircleBorder(),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
