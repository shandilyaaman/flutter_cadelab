import 'package:flutter/material.dart';

import './cards.dart';
import './listview.dart';

class Home extends StatelessWidget {
  final double _cardHeight = 120.0;
  final Color _cardColorBlue = Colors.blue;

//  final Color _cardColorYellow = Colors.amber;
  final Cards _cards = Cards();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: <Widget>[
          new Icon(Icons.access_alarm),
          new Icon(Icons.access_alarm)
        ],
        elevation: 3.0,
      ),
      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: IntrinsicHeight(
                  child: new Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: new GestureDetector(
                          onTap: () {
                            print('First pressed');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyListView()),
                            );
                          },
                          child: _cards.card(_cardHeight, _cardColorBlue,
                              'List View', Icons.list))),
                  Expanded(
                    child: new GestureDetector(
                        onTap: () {
                          print('button pressed');
                        },
                        child: _cards.card(_cardHeight, _cardColorBlue,
                            'Tab View', Icons.tab)),
                  )
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: IntrinsicHeight(
                  child: new Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: new GestureDetector(
                          onTap: () {
                            print('button pressed');
                          },
                          child: _cards.card(_cardHeight, _cardColorBlue,
                              'BottomBar View', Icons.space_bar))),
                  Expanded(
                    child: new GestureDetector(
                        onTap: () {
                          print('button pressed');
                        },
                        child: _cards.card(_cardHeight, _cardColorBlue,
                            'Appbar View', Icons.apps)),
                  )
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: IntrinsicHeight(
                  child: new Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: new GestureDetector(
                          onTap: () {
                            print('button pressed');
                          },
                          child: _cards.card(_cardHeight, _cardColorBlue,
                              'Registration Form', Icons.pregnant_woman))),
                  Expanded(
                    child: new GestureDetector(
                        onTap: () {
                          print('button pressed');
                        },
                        child: _cards.card(_cardHeight, _cardColorBlue,
                            'Map View', Icons.map)),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
