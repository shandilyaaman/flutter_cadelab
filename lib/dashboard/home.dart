import 'package:flutter/material.dart';

import 'package:flutter_codelab/bottomnavigation/bottombarview.dart';
import './cards.dart';
import 'package:flutter_codelab/listview/listview.dart';
import 'package:flutter_codelab/rest_api_example/restapicall.dart';
import 'package:flutter_codelab/tabview/tabview.dart';

class Home extends StatelessWidget {
  final double _cardHeight = 120.0;
  final Color _cardColorBlue = Colors.blue;
  final Cards _cards = Cards();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        elevation: 5.0,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyTabView()),
                          );
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyBottomBarView(),
                              ),
                            );
                          },
                          child: _cards.card(_cardHeight, _cardColorBlue,
                              'BottomBar View', Icons.space_bar))),
                  Expanded(
                    child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RestApiExample()),
                          );
                        },
                        child: _cards.card(_cardHeight, _cardColorBlue,
                            'REST API CALL', Icons.apps)),
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
