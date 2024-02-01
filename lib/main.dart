import 'package:flutter/material.dart';

import 'package:quizzy/screens/home_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: HomeScreen(),
      ),
    ),
  );
}
