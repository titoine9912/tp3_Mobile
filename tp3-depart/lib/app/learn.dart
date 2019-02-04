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
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      Hiraganas.keys.elementAt(index),
                      textScaleFactor: 6,
                      textAlign: TextAlign.center,
                  ),
                  Text(
                      Hiraganas.values.elementAt(index),
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
