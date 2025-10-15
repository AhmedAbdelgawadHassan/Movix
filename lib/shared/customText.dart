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
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.center,
      style: TextStyle(
    overflow: TextOverflow.ellipsis,
        fontSize: fontSize??16,
        fontWeight:  fontWeight??FontWeight.w700,
        color: color??Colors.white,      ),
    );
  }
}