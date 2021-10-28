import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var answer;
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
