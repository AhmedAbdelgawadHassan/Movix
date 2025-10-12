import 'package:flutter/material.dart';
import 'package:movix/core/constants/app_colors.dart';
import 'package:movix/features/onboarding/view/onboarding_view.dart';

void main()
{
  runApp(const Movix());

}
 class Movix extends StatelessWidget {
  const Movix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingView(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor
      ),
    );
  }
}