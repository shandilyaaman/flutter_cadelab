import 'package:flutter/material.dart';

class Cards {
  Card card(_cardHeight, cardColor, cardName, cardIcon) {
    return Card(
      child: new Container(
        child: Column(
          children: [
            Icon(
              cardIcon,
              color: Colors.white,
            ),
            Text(
              cardName,
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        height: _cardHeight,
        margin: EdgeInsets.all(20),
      ),
      elevation: 3.0,
      color: cardColor,
      borderOnForeground: true,
    );
  }
}
