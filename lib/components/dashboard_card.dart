import 'package:flutter/material.dart';
import 'package:untitled1/screens/dashboard/diet_recommendation.dart';

class ReusableCard extends StatefulWidget {

  final String cardName;
  final String image;
  final String heroTag;
  final String route;

  ReusableCard({
    required this.cardName,
    required this.image,
    required this.heroTag,
    required this.route
  });


  @override
  _ReusableCardState createState() => _ReusableCardState();
}
class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, widget.route);
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16))),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.0),
        ),
        child: Container(
          width: 154.0,
          height: 190.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  flex: 1,
                  child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex: 0,
                child: Text(
                  widget.cardName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}