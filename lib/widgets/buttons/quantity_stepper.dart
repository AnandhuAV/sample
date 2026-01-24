import 'package:flutter/material.dart';
import 'package:sample/core/constants/sizes.dart';
import 'package:sample/core/theme/colors.dart';

class QuantityStepper extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantityStepper({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: AppRadius.br6(),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _iconButton(Icons.remove, onDecrement),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              quantity.toString(),
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          _iconButton(Icons.add, onIncrement),
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Icon(icon, size: 18, color: AppColors.white),
      ),
    );
  }
}
