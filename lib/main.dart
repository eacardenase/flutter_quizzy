import 'package:flutter/material.dart';

import 'package:quizzy/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.cyan.shade600, Colors.cyan.shade200],
            ),
          ),
          child: const HomeScreen(),
        ),
      ),
    ),
  );
}
