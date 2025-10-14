import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/widgets/movie_card.dart';
import 'package:movix/shared/customText.dart';

class HomeCaregoriesSection extends StatelessWidget {
  const HomeCaregoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customtext(
          text: 'Categories.',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        Gap(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MovieCard(
              onTap: () {},
              category: 'Movies',
              titles: '532',
              image: 'assets/images/Movies.png',
              colorsList: [
                Color.fromARGB(255, 79, 214, 248),
                Color(0xff086CB8),
                Color(0xff0042A5),
              ],
              crossAxisAlignment: CrossAxisAlignment.end,
              leftMargin: 0,
              rightMargin: 70,
            ),
            MovieCard(
              onTap: () {},
              category: 'Anime',
              titles: '567',
              image: 'assets/images/Anime.png',
              colorsList: [
                Color(0xffFC2D2D),
                Color(0xffF24A30),
                Color(0xffDB7F36),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
              leftMargin: 70,
              rightMargin: 0,
            ),
          ],
        ),
      ],
    );
  }
}
