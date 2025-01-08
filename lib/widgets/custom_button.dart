import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, bottom: 60),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: color,
          ),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Baloo 2",
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
