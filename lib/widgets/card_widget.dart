import 'package:flutter/material.dart';
import 'package:sample/core/constants/sizes.dart';
import 'package:sample/core/theme/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadius.br12(),
        color: AppColors.backgroundColor,
      ),
      child: Column(children: [

        ],
      ),
    );
  }
}
