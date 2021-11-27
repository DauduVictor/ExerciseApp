import 'dart:async';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'package:page_transition/page_transition.dart';

class Split extends StatefulWidget {

  static const String id = 'split';

  @override
  _SplitState createState() => _SplitState();
}

class _SplitState extends State<Split> with TickerProviderStateMixin{

  /// A variable to hold the total number of pages that will be slided to and from
  final int _numPages = 3;

  /// Controller to help in the page built
  final PageController _pageController = PageController(initialPage: 0);

  /// A variable to hold the index of the current page with a default of 0
  int _currentPage = 0;

  /// List of the indicator Widget that gets built
  List<Widget> _buildPageIndicator () {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++){
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  /// Widget to identify the current page if true with help of [AnimatedContainer]
  Widget _indicator(bool _isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 900),
      curve: Curves.decelerate,
      margin: const EdgeInsets.only(right: 8.0),
      height: 10,
      width: _isActive ? 26.0 : 16.0,
      decoration: BoxDecoration(
        color: _isActive ? Colors.black.withOpacity(0.73) : Colors.black12,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  /// Function to change the page view automatically
  void _changePageAutomatically() {
    int i = 0;
    while (i <= 2){
      Timer(
        Duration(seconds: 4), () =>
        _pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOutQuint),
      );
      i += 1;
    }
  }

  @override
  void initState() {
    super.initState();
    _changePageAutomatically();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) =>
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.015),
                    Colors.black.withOpacity(0.028),
                    Colors.black.withOpacity(0.15),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: PageView(
                      physics: BouncingScrollPhysics(),
                      padEnds: false,
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        PageViewContent(
                          constraints: constraints,
                          image: 'assets/images/Mental health-rafiki.png',
                          heading: 'Welcome,\niRecommend',
                          subheading: 'We recommend the best exercises for you and also expose you to exercises of other kinds',
                        ),
                        PageViewContent(
                          constraints: constraints,
                          image: 'assets/images/Yoga with face masks-amico.png',
                          heading: 'Meet up with your peers,\nenjoying sessions together',
                          subheading: 'You can choose to link up with friends in your enviroment for more ginger!',
                          textPadding: 9,
                        ),
                        PageViewContent(
                          constraints: constraints,
                          image: 'assets/images/International day of Yoga-pana.png',
                          heading: 'Motivation?\nenter make we ginger you',
                          subheading: 'You\'re a step away from discovering true magic in well routined exercises and recommendations!',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26.0, 0.0, 26.0, 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildPageIndicator(),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 12,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight*0.085,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.2),
                            border: Border.all(
                              width: constraints.maxWidth*0.003,
                              color: Color(0xFFF0F0F0),
                            ),
                            color: Color(0xFFF0F0F0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(type:PageTransitionType.fade, child:  SignUp()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.4),),
                            ),
                            child: const Center(
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                    fontSize: 20.5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight*0.085,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.2),
                            border: Border.all(
                              width: constraints.maxWidth*0.003,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, PageTransition(type:PageTransitionType.fade, child:  Login()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.4)),
                            ),
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 20.5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }

}

class PageViewContent extends StatefulWidget {

  final BoxConstraints constraints;
  final String image;
  final String heading;
  final String subheading;
  final double? textPadding;

  const PageViewContent({
    required this.constraints,
    required this.image,
    required this.heading,
    required this.subheading,
    this.textPadding,
    Key? key,
  }) : super(key: key);

  @override
  State<PageViewContent> createState() => _PageViewContentState();
}

class _PageViewContentState extends State<PageViewContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: widget.constraints.maxWidth,
          height: widget.constraints.maxHeight/1.9,
          image: AssetImage(widget.image),
          fit: BoxFit.cover,
        ),
        SizedBox(height: widget.textPadding ?? 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Text(
            widget.heading,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 27,
                color: Colors.black
            ),
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Text(
            widget.subheading,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 19,
                color: Colors.black
            ),
          ),
        ),
      ],
    );
  }
}
