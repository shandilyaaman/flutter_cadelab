import 'package:flutter/material.dart';

class TabPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Tab Page 1',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
