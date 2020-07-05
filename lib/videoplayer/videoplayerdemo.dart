import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_codelab/commons/commonwidgets.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoPlayerScreen();
  }
}

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initVideoPlayerFuture;
  bool _isPlaying = false;
  Duration _duration = Duration();
  Duration _position = Duration();
  bool _isEnd = false;

  @override
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4');
    _initVideoPlayerFuture = _controller.initialize();
    _initVideoPlayerFuture.whenComplete(() => _controller.play());
    _controller.addListener(() {
      final bool isPlaying = _controller.value.isPlaying;
      if (isPlaying != _isPlaying) {
        setState(() {
          _isPlaying = isPlaying;
        });
      }
      Timer.run(() {
        this.setState(() {
          _position = _controller.value.position;
        });
      });
      setState(() {
        _duration = _controller.value.duration;
      });
      _duration?.compareTo(_position) == 0 ||
              _duration?.compareTo(_position) == -1
          ? this.setState(() {
              _isEnd = true;
            })
          : this.setState(() {
              _isEnd = false;
            });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.commonAppBar('Video Player'),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Align(alignment: Alignment.center, child: _videoPlayer()),
                _playerControllers()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _videoPlayer() {
    return Expanded(
        child: _isVideoControllerInitialized()
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Center(child: CircularProgressIndicator()));
  }

  Widget _playerControllers() {
    return Container(
      color: _isPlaying ? Colors.transparent : Colors.black38,
      child: Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _printDuration(_position),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 20.0,
                    width: 250.0,
                    child: Slider(
                        max: _duration?.inSeconds?.toDouble(),
                        value: _position != null
                            ? _position?.inSeconds?.toDouble()
                            : 0.0,
                        min: 0,
                        label: _position?.inSeconds?.toDouble().toString(),
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey,
                        onChanged: (double value) {
                          _controller.seekTo(Duration(seconds: value.toInt()));
                        }),
                  ),
                  Text(
                    _printDuration(_duration),
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
          Container(
              alignment: Alignment.center,
              child: IconButton(
                icon: _isPlaying
                    ? Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 50.0,
                      )
                    : Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 50.0,
                      ),
                onPressed: _playPause,
              )),
        ],
      ),
    );
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  _playPause() {
    _isPlaying ? _controller.pause() : _controller.play();
  }

  bool _isVideoControllerInitialized() => _controller.value.initialized;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
