import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample/core/constants/sizes.dart';
import 'package:sample/core/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isLoading;
  final IconData? icon;
  final Color backgroundColor;
  final Color textColor;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isLoading = false,
    this.icon,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final height = HeightScale.button(context);
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: AppRadius.br6()),
          backgroundColor: backgroundColor,
        ),
        child: isLoading
            ? SpinKitThreeBounce(color: AppColors.white, size: 10)
            : Row(
                mainAxisAlignment: .center,
                children: [
                  Text(title, style: TextStyle(color: textColor)),
                  if (icon != null) AppSpacing.w12(),
                  if (icon != null)
                    Icon(Icons.shopping_cart_outlined, color: textColor),
                ],
              ),
      ),
    );
  }
}
