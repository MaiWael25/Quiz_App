import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data/questions.dart';
import 'answer_button.dart';

class Qustions extends StatefulWidget {
  const Qustions(this.onSelectedAnswer,{super.key});
  final void Function(String) onSelectedAnswer;

  @override
  State<Qustions> createState() => _QustionsState();
}

class _QustionsState extends State<Qustions> {
  var currentQuestionIndex = 0;
  void answerQuestion(String answer)
  {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex ];
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
                color: Colors.purple[900], fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          // (...) --> [[1,2,3],4] --->[1,2,3,4]
          ...currentQuestion.getShuffledAnswers().map(
            (e) {
              return Container(
                  margin: const EdgeInsets.all(5),
                  child: AnswerButton(answerText: e, onPressed: (){
                    answerQuestion(e);
                  }

                    ,));
            },
          ),
        ],
      ),
    );
  }
}
