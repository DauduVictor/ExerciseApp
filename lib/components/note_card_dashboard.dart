import 'package:flutter/material.dart';
import 'package:untitled1/screens/dashboard/note_player.dart';

class NoteCard extends StatelessWidget {

  final BoxConstraints? constraints;
  final String noteNumber;

  const NoteCard({
    this.constraints,
    required this.noteNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1.0,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.0),
        ),
        child: Container(
          height: 61,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Note(noteNumber: noteNumber))
              );
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.0),
              ),
              padding: const EdgeInsets.all(0),
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  'Note '+ noteNumber,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
                leading: const Icon(
                  Icons.play_circle_fill_sharp,
                  color: Color(0xFF0D47A1),
                  size: 38,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}