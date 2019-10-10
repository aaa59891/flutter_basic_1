import 'package:flutter/material.dart';
import 'package:my_app/quiz.dart';
import 'package:my_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "first question",
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'black', 'score': 20},
        {'text': 'white', 'score': 30},
      ]
    },
    {
      'questionText': "second question",
      'answers': [
        {'text': '1', 'score': 1},
        {'text': '2', 'score': 2},
        {'text': '3', 'score': 3},
        {'text': '4', 'score': 4},
        {'text': '5', 'score': 5},
      ]
    }
  ];
  var _index = 0;
  var _total = 0;
  void Function() _answer(int score) {
    return () {
      this._total += score;
      this.setState(() {
        this._index += 1;
      });
    };
  }

  void _reset() {
    this.setState(() {
      this._index = 0;
      this._total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = this._index < this._questions.length
        ? this._questions[this._index]
        : null;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: question != null
            ? Quiz(
                question: question,
                onPress: this._answer,
              )
            : Result(this._total, this._reset),
      ),
    );
  }
}
