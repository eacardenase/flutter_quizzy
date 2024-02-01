import 'package:flutter/material.dart';

import 'package:quizzy/screens/home_screen.dart';
import 'package:quizzy/screens/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  _QuizState(); // the constructor function its optional here, dart already provides it

  Widget? activeScreen;

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  void initState() {
    super.initState(); // generally the first statement

    // lifting state
    activeScreen = HomeScreen(onPressed: switchScreen);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.cyan.shade600, Colors.cyan.shade200],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
