import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

int main() {
  runApp(HomePage());
  return 0;
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  var questionList = [
    {
      'questionText': 'What is your fav color',
      'answer': ['red', 'black', 'yello', 'blue', 'orange']
    },
    {
      'questionText': 'What is your fav sports',
      'answer': ['Cricket', 'Fotball', 'Chess', 'hocky']
    },
  ];

  int idx = 0;
  void question() {
    setState(() {
      idx = (++idx) % 3;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Questions App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Questions App"),
            ),
            body: Column(
              children: [
                Questions(questionList[idx]['questionText'] as String),
                ...(questionList[idx]['answer'] as List<String>).map((answer) {
                  return Answer(question, answer);
                }).toList()
              ],
            )));
  }
}
