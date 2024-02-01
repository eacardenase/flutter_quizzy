import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            opacity: const AlwaysStoppedAnimation(
              0.5,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.cyan.shade50,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text(
              "Start Quiz",
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.cyan.shade50,
            ),
          )
        ],
      ),
    );
  }
}
