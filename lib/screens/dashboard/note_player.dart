import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Note extends StatefulWidget {

  final String noteNumber;

  const Note({
    required this.noteNumber,
    Key? key,
  }) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {

  /// Variable to hold the player state when initialized
  late PlayerState _playerState;

  bool _isPlayerReady = false;

  /// Variable to convert the youtube [link] to [id] used by the player
  String? videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");

  /// Variable to hold the controller for the youtube player
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    ///Initializing the settings of the youtube player controller
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        loop: true,
        enableCaption: true,
        controlsVisibleAtStart: false,
      ),
    )..addListener(listener);
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    // _seekToController.dispose();
    super.dispose();
  }

  /// Variabe to show appbar if user scrolls towards the bottom of the screen
  bool _showAppBar = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: _showAppBar == true ? AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title: Text(
            'Note ' + widget.noteNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          ) : null,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: double.maxFinite,
              color: Colors.white,
              child: NotificationListener<UserScrollNotification>(
                onNotification: (UserScrollNotification notification) {
                  setState(() {
                    if(notification.metrics.pixels <= notification.metrics.maxScrollExtent - constraints.maxHeight * 0.47){
                      _controller.pause();
                    }
                    if(notification.direction == ScrollDirection.forward) _showAppBar = true;
                    else if (notification.direction == ScrollDirection.reverse) _showAppBar = false;
                  });
                  return true;
                },
                child: Scrollbar(
                  radius: Radius.circular(20.0),
                  interactive: true,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(13, 10, 13, 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notifications are for delete, discounts, expenses, Inventory out of stock and so on. You also get a notification when'
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                                ' Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              wordSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 22),
                          YoutubePlayerBuilder(
                            onExitFullScreen: () {
                              /// The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
                              SystemChrome.setPreferredOrientations(DeviceOrientation.values);
                            },
                            onEnterFullScreen: () {
                              SystemChrome.setPreferredOrientations(DeviceOrientation.values);
                            },
                            player: YoutubePlayer(
                              controller: _controller,
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.orange,
                              topActions: [
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Text(
                                    _controller.metadata.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  onPressed: () {
                                    log('Settings Tapped!');
                                  },
                                ),
                              ],
                              onReady: () {
                                _isPlayerReady = true;
                              },
                              onEnded: (data) {
                                _controller.reset();
                              },
                            ),
                            builder: (context , player ) {
                              return player;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}