import 'package:flutter/material.dart';
import 'package:movix/core/constants/app_colors.dart';
import 'package:movix/shared/customText.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(1.5), // border thinksness
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.purple, Colors.blue, Colors.cyan],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          // but container inside another one to make a border with 2 colors
          width: 220,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.primaryColor, //inside container color
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Center(
            child: Customtext(text: text, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
