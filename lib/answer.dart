import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _text;
  final Function _onPress;
  Answer(this._text, this._onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(this._text),
        onPressed: this._onPress,
      ),
    );
  }
}
