import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{

  var questions = [
    {'question': "Select clothes",
      'answer': ['T-Shirt', 'Jeans']
    },
    {'question': "Select color",
      'answer': ['Black', 'Blue', 'Green', 'White']
    },
    {'question': "Select size",
      'answer': ['M', 'L', 'XL']
    },
  ];
  var _questionIndex = 0;

  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "181007 Lab2 - MIS",
      home: Scaffold(
        appBar: AppBar(
          title: Text("181007 Lab2 - MIS"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question'] as String), SizedBox(height: 30,),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}