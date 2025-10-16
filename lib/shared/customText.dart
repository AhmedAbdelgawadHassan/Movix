import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext({super.key, required this.text, this.color, this.fontWeight, this.fontSize, this.maxLines});
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final int? maxLines;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines??1,
      softWrap: false,
      textAlign: TextAlign.start,
      style: TextStyle(
      
    overflow: TextOverflow.ellipsis,
        fontSize: fontSize??16,
        fontWeight:  fontWeight??FontWeight.w700,
        color: color??Colors.white,      ),
    );
  }
}