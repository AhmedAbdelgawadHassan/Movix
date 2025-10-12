import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext({super.key, required this.text, this.color, this.fontWeight, this.fontSize});
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize??16,
        fontWeight:  fontWeight??FontWeight.w700,
        color: color??Colors.white,      ),
    );
  }
}