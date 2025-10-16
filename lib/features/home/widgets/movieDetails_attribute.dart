import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/shared/customText.dart';

class MoviedetailsAttribute extends StatelessWidget {
  const MoviedetailsAttribute({super.key, required this.movieName, required this.year, required this.rating, required this.authorName, required this.totalUsers});
  final String movieName ;
  final String year ;
  final double rating ;
  final String authorName ;
  final int totalUsers ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Customtext(text: movieName, fontSize: 35, fontWeight: FontWeight.bold,),
                    Gap(10),
                    Customtext(text: year, fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500,),
                    Spacer(),
                    Gap(5),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20,),
                            Gap(10),
                            Customtext(text: rating.toString(), fontSize: 18, fontWeight: FontWeight.bold,),
                          ],
                        ),
                        Customtext(text: totalUsers.toString(), fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500,),
                      ],
                    ),
                  ],
                ),
                 Customtext(text: authorName, fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500,)
              ],
            ),
          );
  }
}