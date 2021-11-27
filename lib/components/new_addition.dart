import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled1/utils/size_config.dart';

class FloatingCard extends StatefulWidget {

  static const String id = 'floatingCard';
  const FloatingCard({Key? key}) : super(key: key);

  @override
  State<FloatingCard> createState() => _FloatingCardState();
}

class _FloatingCardState extends State<FloatingCard> {

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
      duration: Duration(milliseconds: 400),
      curve: Curves.decelerate,
      height: 14,
      width: 14,
      decoration: BoxDecoration(
        color: _isActive ? Colors.black.withOpacity(0.73) : Colors.black12,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
            width: SizeConfig.screenWidth,
            margin: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: SizeConfig.blockSizeHorizontal! * 25,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.transparent,
                    ),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      padEnds: false,
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.08),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Exercise tips',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.cancel,
                                      color: Colors.black,
                                      size: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.08),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 18,
                  height: 60,//SizeConfig.blockSizeVertical! * 20,
                  color: Colors.grey.withOpacity(0.34),
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _buildPageIndicator(),
                  ),
                ),
              ],
            ),
          );
  }
}
