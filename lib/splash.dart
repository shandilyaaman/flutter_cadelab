import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<Splash> {
  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/Home');
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }


  @override
  void dispose() {
    print('disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              foregroundDecoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              padding: EdgeInsets.all(10),
              child: Text(
                'CODE LAB',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, letterSpacing: 6),
              ),
              decoration: ShapeDecoration(
                shape: BeveledRectangleBorder(
                  side: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
