import 'package:flutter/material.dart';
import 'package:flutter_codelab/bottomnavigation/bottombarview.dart';
import 'package:flutter_codelab/commons/commonwidgets.dart';
import 'package:flutter_codelab/listview/listviewtypes.dart';
import 'package:flutter_codelab/rest_api_example/restapicall.dart';
import 'package:flutter_codelab/sqlite/mainpage.dart';
import 'package:flutter_codelab/tabview/tabview.dart';
import 'package:flutter_codelab/videoplayer/videoplayerdemo.dart';
import 'package:flutter_codelab/viewpager/viewpager.dart';

class Home extends StatelessWidget {
  final double _cardHeight = 120.0;
  final Color _cardColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.commonAppBar('Dashboard'),
      body: SingleChildScrollView(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListViewTypes()),
                          );
                        },
                        child: CommonWidgets.card(_cardHeight, _cardColor,
                            'List View', Icons.list))),
                Expanded(
                  child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyTabView()),
                        );
                      },
                      child: CommonWidgets.card(_cardHeight, _cardColor,
                          'Tab View', Icons.table_chart)),
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
                        child: CommonWidgets.card(_cardHeight, _cardColor,
                            'BottomBar View', Icons.border_bottom))),
                Expanded(
                  child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestApiExample()),
                        );
                      },
                      child: CommonWidgets.card(_cardHeight, _cardColor,
                          'REST API CALL', Icons.web)),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SqlitePage()),
                          );
                        },
                        child: CommonWidgets.card(_cardHeight, _cardColor,
                            'SQLite', Icons.data_usage))),
                Expanded(
                  child: new GestureDetector(
                      onTap: () {
                        print('button pressed');
                      },
                      child: CommonWidgets.card(
                          _cardHeight, _cardColor, 'Map View', Icons.map)),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewPagerSample()),
                          );
                        },
                        child: CommonWidgets.card(_cardHeight, _cardColor,
                            'ViewPager', Icons.view_carousel))),
                Expanded(
                  child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoPlayerDemo()),
                        );
                      },
                      child: CommonWidgets.card(_cardHeight, _cardColor,
                          'Video Player', Icons.music_video)),
                )
              ],
            )),
          )
        ],
      )),
    );
  }
}
