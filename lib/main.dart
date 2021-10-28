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
    "1. What is your fav color",
    "2. What is your fav food",
    "3. What is your fav game",
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
                Questions(questionList[idx]),
                Answer("Green",question),
                Answer("Mango", question),
                Answer("Crickage", question)
              ],
            )));
  }
}
