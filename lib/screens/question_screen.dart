import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/data_model.dart';
import 'package:quiz_app/data/database.dart';
import 'package:quiz_app/utils/app_colors.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class QuestionScreen extends StatefulWidget {
  final String name;
  static int currentQuestion = 0;

  const QuestionScreen({super.key, required this.name});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String _selectedOption = "";
  int correctAnswers = 0;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> questionData = jsonDecode(questionsBank);
    final List<dynamic> questionsList = questionData["questions"];
    final List<Question> questions =
        questionsList.map((e) => Question.fromJson(e)).toList();
    log(questions.toString());
    // Check if there are any questions
    if (questions.isEmpty || questions.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('No questions available'),
        ),
      );
    }

    Question question =
        questions[QuestionScreen.currentQuestion]; // Access the first question

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                    Text(question.context ?? 'No question context available'),
              ),
            ),
            SizedBox(height: 20),
            // Display each answer as a RadioListTile
            RadioListTile<String>(
              title: Text(question.answer1?.text ?? 'No answer available'),
              value: question.answer1?.isTrue.toString() ?? '',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(question.answer2?.text ?? 'No answer available'),
              value: question.answer2?.isTrue.toString() ?? '',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(question.answer3?.text ?? 'No answer available'),
              value: question.answer3?.isTrue.toString() ?? '',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(question.answer4?.text ?? 'No answer available'),
              value: question.answer4?.isTrue.toString() ?? '',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            Spacer(),
            CustomButton(
              buttonText: "Next",
              color: AppColors.mainColor,
              onPressed: () async {
                if (QuestionScreen.currentQuestion + 1 >= questions.length) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Savollar tugadi, To'g'ri javoblar soni:  $correctAnswers")));
                } else {
                  await Future.delayed(
                    Duration(seconds: 1),
                    () {
                      setState(() {
                        question =
                            questions[QuestionScreen.currentQuestion + 1];
                      });
                    },
                  );
                }
                if (_selectedOption == "true") {
                  setState(() {
                    correctAnswers++;
                  });
                }
                log("topdingiz: $correctAnswers");
                log(_selectedOption);
                log(QuestionScreen.currentQuestion.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
