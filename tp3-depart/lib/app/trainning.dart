import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class Training extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TrainingState();
  }
}

class _TrainingState extends State<Training>{

  Random rnd = new Random();
  int _hiragana_index = 0;
  int _min_index_hiragana = 0;
  int _max_index_hiragana = Hiraganas.length;

  @override
  Widget build(BuildContext context) {
    
    _hiragana_index = _min_index_hiragana + rnd.nextInt(_max_index_hiragana);

    return Column(
      children: <Widget>[
        AspectRatio(aspectRatio: 1,
          child:Card(
            child: Padding (
              padding: EdgeInsets.all(8),
              child:Center(
                child: Text(
                  Hiraganas.keys.elementAt(_hiragana_index),
                  textScaleFactor: 8,
                ),
              ),
            ),
          ),
        ),
        ListView(
          children: <Widget>[
            ListTile(
              title:Text('choix1'),
            ),
            ListTile(
              title: Text('choix2'),
            ),
            ListTile(
              title: Text('choix3'),
            )
          ],
        )
      ],
    );
  }
}