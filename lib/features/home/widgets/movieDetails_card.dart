import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/widgets/actors_gridView.dart';
import 'package:movix/features/home/widgets/movieDetails_attribute.dart';
import 'package:movix/features/home/widgets/movieDetails_image.dart';
import 'package:movix/features/onboarding/widgets/onboarding_button.dart';
import 'package:movix/shared/customText.dart';

class MoviedetailsCard extends StatelessWidget {
  const MoviedetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviedetailsImage(
            movieImage: 'assets/images/movie 1.png',
          ), // Movie Image
          Gap(20),
          Column(
            children: [
              MoviedetailsAttribute(
                // Movie Attribute like MovieName,author name , rating , year, total users
                movieName: 'Morbius',
                year: '2022',
                rating: 7.2,
                authorName: 'Marvel Studios',
                totalUsers: 342,
              ),
              Gap(25),
              Customtext(
                text:
                    'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor incididunt\n ut labore et dolore magna aliqua. Ut enim ad\n minim veniam, quis nostrud exercitation ullamco\n laboris nisi ut aliquip ex...',
                maxLines: 5,
                color: Colors.white70,
              ),
              Gap(20),
             ActorsGridview(),
              Gap(20),
              OnboardingButton(onTap: (){}, text: 'Watch Now'),
              Gap(20)
            ],
          ),
        ],
      ),
    );
  }
}
