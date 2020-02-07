import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_codelab/commons/commonwidgets.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State {
  VideoPlayerController _controller;
  Future<void> _initVideoPlayerFuture;
  bool _isPlaying = false;
  Duration _duration;
  Duration _position;
  bool _isEnd = false;

  @override
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4');
    _initVideoPlayerFuture = _controller.initialize();
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
    return MaterialApp(
      title: _position.toString(),
      home: Scaffold(
        appBar: CommonWidgets.commonAppBar("Video Sample"),
        body: _createVideoPlayerWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: _controller.value.isPlaying
              ? _controller.pause
              : _controller.play,
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  Widget _createVideoPlayerWidget() {
    return Container(
      width: double.infinity,
      height: 500.0,
      child: Column(children: <Widget>[
        _controller.value.initialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(
                width: double.infinity,
                height: 500.0,
                child: CircularProgressIndicator(),
              ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(_position?.inHours.toString() +
                ':' +
                _position?.inMinutes.toString() +
                ':' +
                _position?.inSeconds.toString()),
            Slider(
              max: _duration?.inSeconds?.toDouble(),
              value: _position?.inSeconds?.toDouble(),
              min: 0,
              activeColor: Colors.blue,
              inactiveColor: Colors.black,
              onChanged: (double value) {
                _controller.seekTo(Duration(seconds: value.toInt()));
              },
            ),
            Text(_duration?.inHours.toString() +
                ':' +
                _duration?.inMinutes.toString() +
                ':' +
                _duration?.inSeconds.toString())
          ],
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
