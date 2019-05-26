import 'package:flutter/material.dart';

class TabPage1 extends StatelessWidget {
  ListView showListView(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: _getItemUi,
    );
  }

  Widget _getItemUi(context, index) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Image.network(
            'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        new Text(
          'I love food',
          style: TextStyle(
            color: Colors.white, 
            fontSize: 22,
            letterSpacing: 5.0),
          textAlign: TextAlign.left,
        ),
        new Divider(color: Colors.blue,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: showListView(context),
    );
  }
}
