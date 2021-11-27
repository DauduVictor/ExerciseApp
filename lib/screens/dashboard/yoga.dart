import 'package:flutter/material.dart';
import 'package:untitled1/components/like_button.dart';
import 'package:untitled1/components/note_card_dashboard.dart';

import '../../components/play_all.dart';

class Yoga extends StatefulWidget {

  static const String id = 'yoga';
  const Yoga({Key? key}) : super(key: key);

  @override
  _YogaState createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: LayoutBuilder(builder: (context, constraints) => Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: 'yogaPage',
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*0.45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Yoga with face masks-amico.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                PlayAll(
                  posHeight: 0,
                ),
              ],
            ),
            SizedBox(height: constraints.maxHeight * 0.02),
            Container(
              padding: const EdgeInsets.only(left: 18, right: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Yoga',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.5),
                        child: Text(
                          'Total mins: 1.4 Hrs',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  LikeButton(noLikes: 215),
                ],
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.1),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NoteCard(
                        constraints: constraints,
                        noteNumber: 'I',
                      ),
                      const SizedBox(width: 3),
                      NoteCard(
                        constraints: constraints,
                        noteNumber: 'II',
                      ),
                    ],
                  ),
                  SizedBox(height: 11),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NoteCard(
                        constraints: constraints,
                        noteNumber: 'III',
                      ),
                      const SizedBox(width: 3),
                      NoteCard(
                        constraints: constraints,
                        noteNumber: 'IV',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
