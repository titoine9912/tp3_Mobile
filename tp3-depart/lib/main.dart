import 'package:flutter/material.dart';
import 'package:tp3/app/app.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP3',
      home: Home(),
    );
  }
}