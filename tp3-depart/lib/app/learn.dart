import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class Learn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnState();
  }
}

class _LearnState extends State<Learn> {
  var list = Hiraganas.values.toList();
  var index = -1;

  //List cards = List.generate(2, (index) => new customCard());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          customCard(index++),
        ],
      ),
    );
  }
}

Widget customCard(int index) {
  return Card(
    child: Column(
      //mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          Hiraganas.keys.elementAt(index),
          textScaleFactor: 6,
        ),
        Text(
          Hiraganas.values.elementAt(index),
          textScaleFactor: 1.5,
        ),
      ],
    ),
  );
}
