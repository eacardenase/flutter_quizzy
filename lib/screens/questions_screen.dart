import 'package:flutter/material.dart';
import 'package:quizzy/widgets/option_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "The Question",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OptionButton(
            label: "Option 1",
            handler: () {},
          ),
          OptionButton(
            label: "Option 1",
            handler: () {},
          ),
          OptionButton(
            label: "Option 1",
            handler: () {},
          ),
          OptionButton(
            label: "Option 1",
            handler: () {},
          ),
        ],
      ),
    );
  }
}
