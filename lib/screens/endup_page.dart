import 'package:flutter/material.dart';
import 'package:quiz_app/screens/startup_page.dart';
import 'package:quiz_app/utils/app_colors.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class EndPage extends StatelessWidget {
  final String name;
  final int trueAnswersCount;

  EndPage({required this.name, required this.trueAnswersCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Congratulations, $name!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'You got $trueAnswersCount correct answers!',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              CustomButton(
                buttonText: "Back to home",
                color: AppColors.mainColor,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => StartupPage()),
                    (Route<dynamic> route) => false,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
