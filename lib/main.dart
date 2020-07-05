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
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: Typography.whiteRedmond,
      ),
      initialRoute: 'splash',
      title: "Code Lab",
      home: Splash(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => Home()
      },
    );
  }
}
