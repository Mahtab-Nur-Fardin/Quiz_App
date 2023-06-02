import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football Quizzer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Do You Love Football?',
              style: TextStyle(fontSize: 25),
            ),
            Text('If You Are A Football Maniac Play The Quiz Game And Show Us How Good You Are!',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () => context.go('/quiz'),
              child: const Text('KICK OFF'),
            ),
          ],
        ),
      ),
    );
  }
}
