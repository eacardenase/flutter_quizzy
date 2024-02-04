import 'package:flutter/material.dart';

import 'package:quizzy/data/questions.dart';
import 'package:quizzy/screens/home_screen.dart';
import 'package:quizzy/screens/questions_screen.dart';
import 'package:quizzy/screens/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // _QuizState(); // the constructor function its optional here, dart already provides it

  final List<String> selectedAnswers = [];
  var activeScreen = "home-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(onPressed: switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(onSelectAnswer: selectAnswer);
    }

    if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(
        selectedAnswers: selectedAnswers,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
