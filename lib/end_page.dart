import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  final String score;
  EndPage({required this.score});
  @override
  Widget build(BuildContext context) {
    //final int score = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Ended'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Ended!',
              style: TextStyle(fontSize: 24),
            ),
            // Display the score here
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
