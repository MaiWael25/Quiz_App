import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key, required this.answerText, required this.onPressed,
  });
  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
        style: ElevatedButton.styleFrom(foregroundColor: Colors.white,
            backgroundColor: Colors.purple[600],
             padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
        child: Text(answerText,textAlign: TextAlign.center,),

    );
  }
}
