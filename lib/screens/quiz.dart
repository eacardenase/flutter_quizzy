import 'package:flutter/material.dart';

import 'package:quizzy/screens/home_screen.dart';
import 'package:quizzy/screens/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // _QuizState(); // the constructor function its optional here, dart already provides it

  var activeScreen = "home-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(onPressed: switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = const QuestionsScreen();
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
