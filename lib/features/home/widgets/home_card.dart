import 'package:flutter/material.dart';
import 'package:movix/shared/customText.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.colorsList, required this.image, required this.category, required this.titles, required this.onTap, required this.leftMargin, required this.rightMargin, required this.crossAxisAlignment});
  final List<Color> colorsList;
  final String image;
  final String category;
  final String titles;
  final VoidCallback onTap;
  final double leftMargin;
  final double rightMargin;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width * 0.40, //40% of screen
            height:125,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: colorsList           
              ),
              borderRadius: BorderRadius.circular(20),
              )
            ,
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Customtext(text:category ,fontSize: 20,fontWeight: FontWeight.w900,),
                Customtext(text: '$titles Titles',fontSize: 11,color: Colors.black,fontWeight: FontWeight.w700),
              ],
            ),
          ),
          Positioned(
            right: rightMargin,
            left: leftMargin,
            top: -60,
            child: Container(
              width: 120,
              height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image),)
            ),
             ))
        ],
      ),
    );
  }
}
