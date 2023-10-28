import 'package:quiz/models/QuizQustion.dart';

const List<QuizQustion> questions = [
  QuizQustion(
    'Which of the following is not a feature of Dart programming language?',
    [
      ' Multithreading',
      'Garbage collection',
      'Functional programming support',
      'Asynchronous programming support '
    ],
  ),
  QuizQustion(
    'Which of the following is the correct syntax for defining a variable in Dart?',
    ['var x = 5;', 'x = 5;', 'int x = 5;', ' variable x = 5;'],
  ),
  QuizQustion(
    'What is the purpose of the “const” keyword in Dart?',
    [
      'To define a constant variable',
      'To define a variable that cannot be changed after its initial assignment',
      'To define a variable that can only be accessed within its scope',
      'To define a variable that can be accessed from any scope'
    ],
  ),
  QuizQustion(
    'What is the purpose of the “final” keyword in Dart?',
    [
      'To define a variable that cannot be changed after its initial assignment',
      'To define a constant variable',
      'To define a variable that can only be accessed within its scope',
      'To define a variable that can be accessed from any scope'
    ],
  ),
  QuizQustion('Which of the following is not a feature of Dart?',
      [
         'Block-level scope',
          'Asynchronous programming',
          'Garbage collection',
          'Type inference'
      ])
];
