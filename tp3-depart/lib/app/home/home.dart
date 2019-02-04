import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Learn'),
    Text('Index 1: Trainning')
  ];

  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon:Icon(Icons.book), title: Text('Apprendre')),
            BottomNavigationBarItem(icon: Icon(Icons.create), title: Text('Entraînement'))
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.red,
          onTap: _onItemTapped,),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
