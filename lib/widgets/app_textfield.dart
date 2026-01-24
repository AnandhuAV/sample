import 'package:flutter/material.dart';
import 'package:sample/core/constants/sizes.dart';
import 'package:sample/core/theme/colors.dart';

class AppTextField extends StatefulWidget {
  final bool isPassword;
  final TextEditingController controller;
  final String title;

  const AppTextField({
    super.key,
    required this.controller,
    this.isPassword = false,
    required this.title,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool visibility;
  @override
  void initState() {
    visibility = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scale = FontScale.scale(context);
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .start,
      children: [
        Text(widget.title, style: TextStyle(fontSize: 22 * scale)),
        AppSpacing.h12(),
        TextFormField(
          controller: widget.controller,
          obscureText: visibility,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                    icon: Icon(
                      visibility ? Icons.visibility_off : Icons.visibility,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
