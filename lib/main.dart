import 'package:flutter/material.dart';
import 'start_page.dart';
import 'quiz_page.dart';
import 'end_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return StartPage();
      },
    ),
    GoRoute(
      path: '/quiz',
      builder: (BuildContext context, GoRouterState state) {
        return QuizPage();
      },
    ),
    GoRoute(
      name:'end',
      path: '/end',
      builder: (BuildContext context, GoRouterState state) {
        return EndPage(score: state.queryParameters["score"]!,);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Football Quizzer',
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      routerConfig: _router,
      //initialRoute: '/',
      // routes: {
      //   '/': (context) => StartPage(),
      //   '/quiz': (context) => QuizPage(),
      //   '/end': (context) => EndPage(),
      // },
    );
  }
}
