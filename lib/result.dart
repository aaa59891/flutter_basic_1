import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _reset;
  Result(this._score, this._reset);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'your score: ${this._score}',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text('Restart'),
              onPressed: this._reset,
            )
          ],
        ),
      ),
    );
  }
}
