import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final TextStyle? style;
  final TextAlign textAlign;

  const LinkButton({
    super.key,
    required this.text,
    required this.onTap,
    this.style,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text, textAlign: textAlign, style: style),
    );
  }
}
