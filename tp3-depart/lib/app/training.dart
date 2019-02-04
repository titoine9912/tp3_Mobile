import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class Training extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TrainingState();
  }
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: null,
        children: List<Widget>.generate(Hiraganas.length, (index) {
          return GridTile(
            child: FittedBox(
              //child: Hiraganas,
            ),
          );
        }),
      ),
    );
  }
}
