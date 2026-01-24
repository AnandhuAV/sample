import 'package:flutter/material.dart';
import 'package:sample/core/constants/sizes.dart';
import 'package:sample/widgets/app_textfield.dart';
import 'package:sample/widgets/buttons/primary_button.dart';
import 'package:sample/widgets/buttons/quantity_stepper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.p16,
        child: Column(
          mainAxisAlignment: .center,
          children: [
            // AppTextField(controller: TextEditingController(), title: "Email"),
            // AppSpacing.h24(),
            // AppTextField(
            //   controller: TextEditingController(),
            //   title: "Password",
            //   isPassword: true,
            // ),
            // AppSpacing.h24(),
            // PrimaryButton(title: "Login", onTap: () {}),
            QuantityStepper(quantity: 1, onIncrement: () {
              
            }, onDecrement: () {
              
            },)
          ],
        ),
      ),
    );
  }
}
