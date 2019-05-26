import 'package:flutter/material.dart';
import 'package:flutter_codelab/commons/commonwidgets.dart';

class ListWithDynamicViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.commonAppBar('List with different views'),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: _renderitems,
        padding: EdgeInsets.all(8.0),
      ),
    );
  }

  Widget _renderitems(BuildContext context, int index) {
    int value = index % 3;
    if (value == 0) {
      return Text('Text at Value $value');
    } else if (value > 0 && value < 2) {
      return ListTile(
        title: Text('ListTile at value $value'),
        subtitle: Text('Subtitle for ListTile'),
      );
    } else if (value >= 2 && value < 10) {
      return Row(
        children: <Widget>[
          Image.asset(
            'assets/delhi.jpeg',
            height: 100.0,
            width: 100.0,
          ),
          Text('Delhi')
        ],
      );
    }
  }
}
