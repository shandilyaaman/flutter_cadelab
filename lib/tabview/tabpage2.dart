import 'package:flutter/material.dart';

class TabPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                new Image.network(
                    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                new Text(
                  'I love food',
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, letterSpacing: 5.0),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
