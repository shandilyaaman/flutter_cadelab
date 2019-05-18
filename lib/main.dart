import 'package:flutter/material.dart';
import 'package:flutter_codelab/dashboard/home.dart';

import './splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Code Lab",
      home: Splash(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => Home()
      },
    );
  }
}
