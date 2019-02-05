import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class Learn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnState();
  }
}

class _LearnState extends State<Learn> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(Hiraganas.length, (index) => CustomCard(index)),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final int index;

  CustomCard(this.index);

  @override
  State<StatefulWidget> createState() => _CustomCardState(index);
}

class _CustomCardState extends State<CustomCard> {
  int index;

  _CustomCardState(this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: FittedBox(
              child: Text(
                Hiraganas.keys.elementAt(index),
              ),
            ),
          ),
          Text(
            Hiraganas.values.elementAt(index),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
