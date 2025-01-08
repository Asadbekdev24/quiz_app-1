import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/data_model.dart';
import 'package:quiz_app/data/database.dart';
import 'package:quiz_app/screens/endup_page.dart';
import 'package:quiz_app/utils/app_colors.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class QuestionScreen extends StatefulWidget {
  final String name;

  const QuestionScreen({super.key, required this.name});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String _selectedOption = "";
  int correctAnswers = 0;
  int currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> questionData = jsonDecode(questionsBank);
    final List<dynamic> questionsList = questionData["questions"];

    final List<Question> questions =
        questionsList.map((e) => Question.fromJson(e)).toList();

    bool checkAnswer(Question question, String id) {
      for (var answer in [
        question.answer1,
        question.answer2,
        question.answer3,
        question.answer4
      ]) {
        if (answer?.id == id && answer!.isTrue!) {
          return true;
        }
      }
      return false;
    }

    void valueChanger(value) {
      setState(() {
        _selectedOption = value;
      });
    }

    if (questions.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('No questions available'),
        ),
      );
    }

    Question question = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${currentQuestion + 1}/${questions.length}",
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: AppColors.greyBackground,
      ),
      backgroundColor: AppColors.greyBackground,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 5.0,
                      shadowColor: Colors.grey[400],
                      child: SizedBox(
                        height: 220,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              question.context ??
                                  'No question context available',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AnswerButton(
                      selectedOption: _selectedOption,
                      answerText: question.answer1?.text.toString() ?? '',
                      value: question.answer1?.id.toString() ?? '',
                      onChanged: valueChanger,
                    ),
                    SizedBox(height: 24),
                    AnswerButton(
                      selectedOption: _selectedOption,
                      answerText: question.answer2?.text.toString() ?? '',
                      value: question.answer2?.id.toString() ?? '',
                      onChanged: valueChanger,
                    ),
                    SizedBox(height: 24),
                    AnswerButton(
                      selectedOption: _selectedOption,
                      answerText: question.answer3?.text.toString() ?? '',
                      value: question.answer3?.id.toString() ?? '',
                      onChanged: valueChanger,
                    ),
                    SizedBox(height: 24),
                    AnswerButton(
                      selectedOption: _selectedOption,
                      answerText: question.answer4?.text.toString() ?? '',
                      value: question.answer4?.id.toString() ?? '',
                      onChanged: valueChanger,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              buttonText: "Next",
              color: AppColors.mainColor,
              onPressed: () async {
                if (checkAnswer(question, _selectedOption)) {
                  setState(() {
                    correctAnswers++;
                  });
                }
                if (currentQuestion + 1 >= questions.length) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EndPage(
                            name: widget.name,
                            trueAnswersCount: correctAnswers)),
                  );
                } else {
                  await Future.delayed(
                    Duration(seconds: 0),
                    () {
                      setState(() {
                        currentQuestion++;
                      });

                      question = questions[currentQuestion];
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
