import 'package:flutter/material.dart';
import 'package:quiz/summary.dart';

import 'data/questions.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, this.restart, {super.key});
  final List<String> selectedAnswers;
  final void Function() restart;
  List<Map<String, Object>> get getSummaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    int numOfCorrectAnswer = getSummaryData
        .where((element) => element['user_answer'] == element['correct_answer'])
        .length;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'you answered $numOfCorrectAnswer out of ${questions.length}questions',
            style: TextStyle(
                color: Colors.purple[900],
                fontSize: 24,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Summary(getSummaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
              onPressed: restart,
              icon: Icon(
                Icons.restart_alt_outlined,
                color: Colors.purple[900],
              ),
              label: Text('Restart Quiz!!',
                  style: TextStyle(
                    color: Colors.purple[900],
                  )))
        ],
      ),
    );
  }
}
