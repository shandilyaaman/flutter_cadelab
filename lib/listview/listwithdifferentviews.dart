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
    Widget widget;
    if (value == 0) {
      widget = Text('TextView');
    } else if (value > 0 && value < 2) {
      widget = ListTile(
        title: Text('ListTile at value $value'),
        subtitle: Text('Subtitle for ListTile'),
      );
    } else if (value >= 2 && value < 10) {
      widget = Row(
        children: <Widget>[
          Image.asset(
            'assets/delhi.jpeg',
            height: 50.0,
            width: 50.0,
          ),
          Text('Delhi')
        ],
      );
    }
    return GestureDetector(
      child: widget,
      onTap: () {
        _showSnackBar(context, widget.toStringShort());
      },
    );
  }

  _showSnackBar(BuildContext context, String string) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("Item Clicked : " + string),
      backgroundColor: Colors.amber,
    );
    Scaffold.of(context).showSnackBar(objSnackbar);
  }
}
