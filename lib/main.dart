import 'package:flutter/material.dart';
import 'package:movix/core/constants/app_colors.dart';
import 'package:movix/features/onboarding/view/splash_view.dart';

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
      home: SplashView(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor  //background color For all Screens
      ),
    );
  }
}