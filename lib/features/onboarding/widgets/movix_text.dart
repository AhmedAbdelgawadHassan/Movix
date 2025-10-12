import 'package:flutter/material.dart';
import 'package:movix/shared/customText.dart';

class MovixText extends StatelessWidget {
  const MovixText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [Colors.purple, Colors.cyan, Colors.purple],
        ).createShader(bounds),
        child: Customtext(text: 'Movix', fontSize: 45),
      ),
    );
  }
}
