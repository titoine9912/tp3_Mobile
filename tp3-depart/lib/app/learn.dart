import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class Learn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnState();
  }
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: Hiraganas.length,
        children: itemList
            .map(
              (Item) => ItemList(item: Item),
        )
            .toList(),
        ),
      ),
    );
  }

  ItemList({item}) { Hiraganas.addAll(item);}
}
