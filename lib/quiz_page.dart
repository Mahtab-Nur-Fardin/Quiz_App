import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  List<QuizQuestion> _quizQuestions = [
    QuizQuestion(
      question: 'Which country won the 2018 FIFA World Cup?',
      options: ['France', 'Germany', 'Brazil', 'Spain'],
      correctAnswer: 'France',
    ),
    QuizQuestion(
      question: 'Who is the all-time leading goal scorer for Brazil?',
      options: ['Pele', 'Ronaldo', 'Romario', 'Neymar'],
      correctAnswer: 'Pele',
    ),
    QuizQuestion(
      question: 'Which club has won the most UEFA Champions League titles?',
      options: ['Real Madrid', 'Barcelona', 'Bayern Munich', 'Liverpool'],
      correctAnswer: 'Real Madrid',
    ),
  ];

  void checkAnswer(String selectedOption) {
    if (selectedOption == _quizQuestions[_currentQuestionIndex].correctAnswer) {
      _score++;
    }

    setState(() {
      if (_currentQuestionIndex < _quizQuestions.length - 1) {
        _currentQuestionIndex++;
      } else {
        //Navigator.pushReplacementNamed(context, '/end', arguments: _score);
          context.goNamed('end', queryParameters: {"score": _score.toString()}  );
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _quizQuestions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Football Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            ...currentQuestion.options.map((option) {
              return ElevatedButton(
                onPressed: () {
                  checkAnswer(option);
                },
                child: Text(option),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}
