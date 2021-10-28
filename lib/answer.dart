import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var answer;
  final VoidCallback selectHandler;
  Answer(this.answer, this.selectHandler);
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
