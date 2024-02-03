import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

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
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.cyan.shade50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: onPressed,
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
