import 'package:flutter/material.dart';
import 'package:quiz_app/utils/app_colors.dart';

class AnswerButton extends StatelessWidget {
  final String? answerText;
  final String value;
  final String selectedOption;
  final ValueChanged<String> onChanged;

  const AnswerButton({
    super.key,
    this.answerText,
    required this.value,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedOption == value;

    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Container(
        // height: 55,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: isSelected ? AppColors.secondaryColor : Colors.white),
        child: RadioListTile<String>(
          title: Text(
            answerText ?? "",
            style: TextStyle(
                color: isSelected ? AppColors.mainColor : Colors.black),
          ),
          value: value,
          groupValue: selectedOption,
          onChanged: (value) {
            onChanged(value!);
          },
        ),
      ),
    );
  }
}
