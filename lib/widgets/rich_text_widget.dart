import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sample/core/theme/colors.dart';

class AuthRichText extends StatelessWidget {
  final String questionText;
  final String actionText;
  final VoidCallback onTap;

  const AuthRichText({
    super.key,
    required this.questionText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: questionText,
        style: TextStyle(color: AppColors.black),
        children: [
          TextSpan(
            text: " $actionText",
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
