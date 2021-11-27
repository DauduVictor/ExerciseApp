import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LikeButton extends StatefulWidget {

  final int noLikes;

  const LikeButton({
    required this.noLikes,
    Key? key
  }) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> with SingleTickerProviderStateMixin {

  /// Variable to hold the controller for the to and from animation of the heart icon
  late AnimationController _controller;

  /// Variable to hold the controller for the color animation [grey] to [red]
  late Animation<Color?> _colorAnimation;

  /// Variable to hold the controller for the size animation from size [28-48-28]
  late Animation<double> _sizeAnimation;

  /// Variable to specify the [Animation_Curve] for the [Like] icon
  late Animation<double> _curve;

  /// A variable to hold the current status of the heart icon
  bool _isFav = false;

  /// A variable to hold the current no of likes
  late int _noOfLikes ;

  @override
  void initState() {
    super.initState();
    _noOfLikes = widget.noLikes;
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    /// Variable to hold the animation curve
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeInCubic);

    /// Variable to animate between the given tween sequences
    _sizeAnimation = TweenSequence(
        <TweenSequenceItem<double>> [
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 28, end: 48),
            weight: 50,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 48, end: 28),
            weight: 50,
          ),
        ]
    ).animate(_curve);


    /// A tween [_colorAnimation] which changes color from grey to red in the specifies time frame of the values of [_controller]
    _colorAnimation = ColorTween(begin: Colors.grey.shade400, end: Colors.red).animate(_controller);

    /// Make the [Animation_Controller] know about the new values being fired
    _controller.addListener(() {
      setState(() { });
    });

    /// Function to listen to the current state of the controller and update its value
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isFav = true;
          _noOfLikes += 1;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          _isFav = false;
          _noOfLikes -= 1;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return Container(
              width: 30,
              height: 30,
              child: IconButton(
                iconSize: _sizeAnimation.value,
                padding: const EdgeInsets.all(0),
                splashRadius: 15,
                icon: Icon(
                  IconlyBold.heart,
                  color: _colorAnimation.value,
                ),
                onPressed: () {
                  _isFav == false ? _controller.forward() : _controller.reverse();
                },
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.5),
          child: Text(
            '$_noOfLikes Likes',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
