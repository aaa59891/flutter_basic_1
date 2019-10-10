import 'package:flutter/material.dart';
import 'package:my_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final void Function() Function(int) onPress;
  Quiz({@required this.question, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(this.question['questionText']),
          ...(this.question['answers'] as List<Map<String, Object>>)
              .map((answer) =>
                  Answer(answer['text'], this.onPress(answer['score'])))
              .toList()
        ],
      ),
    );
  }
}
