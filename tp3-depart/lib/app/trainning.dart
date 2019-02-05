import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

const int MAX_OPTION_INDEX = 2;

class Training extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TrainingState();
  }
}

class _TrainingState extends State<Training> {
  Random rnd = new Random();
  String choice1;
  String choice2;
  String choice3;
  int _hiragana_index = 0;
  int _answer_index;
  int _rnd_index0;
  int _rnd_index1;
  bool _good_answer = true;
  var _hiraganas_choice_list = List.filled(3, "");
  var _picked_choice_list = List.filled(3, false);

  @override
  Widget build(BuildContext context) {

    if(_good_answer){
      initializeQuestion();
      initializePickedList();
      _good_answer=false;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: Card(
            child: FittedBox(
              child: Center(
                child: Text(
                  Hiraganas.keys.elementAt(_hiragana_index),
                  textScaleFactor: 8,
                ),
              ),
            ),
          ),
        ),
        FlatButton(
          child: Text(choice1),
          onPressed: (_picked_choice_list[0]==false?onChoice1Pressed:null),
          disabledTextColor: (_picked_choice_list[0]==true?Colors.red:Colors.black)
        ),
        FlatButton(
          child: Text(choice2),
            onPressed: (_picked_choice_list[1]==false?onChoice2Pressed:null),
            disabledTextColor: (_picked_choice_list[1]==true?Colors.red:Colors.black)
        ),
        FlatButton(
          child: Text(choice3),
            onPressed: (_picked_choice_list[2]==false?onChoice3Pressed:null),
            disabledTextColor: (_picked_choice_list[2]==true?Colors.red:Colors.black)
        )
      ],
    );
  }

  onChoice1Pressed() {
    setState(() {
      if(choice1!=Hiraganas.values.elementAt(_hiragana_index)){
        _picked_choice_list[0]=true;
      } else{
        _good_answer = true;
      }
    });
  }

  onChoice2Pressed() {
    setState(() {
      if(choice2!=Hiraganas.values.elementAt(_hiragana_index)){
        _picked_choice_list[1]=true;
      } else{
        _good_answer = true;
      }
    });
  }

  onChoice3Pressed() {
    setState(() {
      if(choice3!=Hiraganas.values.elementAt(_hiragana_index)){
        _picked_choice_list[2]=true;
      } else{
        _good_answer=true;
      }
    });
  }

  initializePickedList() {
    for(int i=0;i<3;i++){
      _picked_choice_list[i]=false;
    }
  }

  initializeQuestion() {
    _hiragana_index = 0 + rnd.nextInt(Hiraganas.length - 1);

    _answer_index = 0 + rnd.nextInt(MAX_OPTION_INDEX);
    _rnd_index0 = 0 + rnd.nextInt(Hiraganas.length - 1);
    _rnd_index1 = 0 + rnd.nextInt(Hiraganas.length - 1);

    while (_rnd_index0 == _answer_index) {
      _rnd_index0 = 0 + rnd.nextInt(Hiraganas.length - 1);
    }

    while (_rnd_index1 == _answer_index || _rnd_index1 == _rnd_index0) {
      _rnd_index1 = 0 + rnd.nextInt(Hiraganas.length - 1);
    }

    if (_answer_index == 0) {
      choice1 = Hiraganas.values.elementAt(_hiragana_index);
      choice2 = Hiraganas.values.elementAt(_rnd_index0);
      choice3 = Hiraganas.values.elementAt(_rnd_index1);
    } else if (_answer_index == 1) {
      choice2 = Hiraganas.values.elementAt(_hiragana_index);
      choice1 = Hiraganas.values.elementAt(_rnd_index0);
      choice3 = Hiraganas.values.elementAt(_rnd_index1);
    } else if (_answer_index == 2) {
      choice3 = Hiraganas.values.elementAt(_hiragana_index);
      choice1 = Hiraganas.values.elementAt(_rnd_index0);
      choice2 = Hiraganas.values.elementAt(_rnd_index1);
    }

    _hiraganas_choice_list[0]=choice1;
    _hiraganas_choice_list[1]=choice2;
    _hiraganas_choice_list[2]=choice3;
  }
}
