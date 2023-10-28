//import 'dart:math';


import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:quiz/quistions.dart';
import 'package:quiz/result.dart';
import 'data/questions.dart';
import 'home.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];
  Widget? activeScreen ;
  void chooseAnswer(String answer)
  {
    print(answer);
    selectedAnswers.add(answer);
    if(selectedAnswers.length== questions.length)
    {
     setState(() {

       activeScreen =   Result(selectedAnswers,restart);

     });
    }
    log(selectedAnswers.toString());

  }
  void restart()
  {
    setState(() {
      selectedAnswers = [];
      activeScreen =  Home(switchScreen);

    });


  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeScreen =  Home(switchScreen);
  }
  void switchScreen()
  {
    setState(() {
      activeScreen= Qustions(chooseAnswer);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepOrangeAccent, Colors.purple])),
          child: activeScreen,
        ),
      ),
    );
  }
}
