import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/view/home_view.dart';
import 'package:movix/features/onboarding/widgets/movix_text.dart';
import 'package:movix/features/onboarding/widgets/onboarding_button.dart';
import 'package:movix/shared/customText.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(10),
            MovixText(), // Movix text with some animation
            Image.asset('assets/images/onboarding.png', width: double.infinity),
            Gap(10),
            Customtext(
              text: 'Welcome to Movix',
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
            Gap(10),
            Customtext(
              text: 'Watch everything you want\n for free!',
              fontWeight: FontWeight.w500,
            ),
            Gap(40),
            OnboardingButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
