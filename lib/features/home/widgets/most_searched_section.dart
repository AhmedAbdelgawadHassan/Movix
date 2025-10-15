import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/data/mostSearched_movieCard_model.dart';
import 'package:movix/features/home/widgets/mostSearched_movieCard.dart';

import 'package:movix/shared/customText.dart';

class MostSearchedSection extends StatelessWidget {
  const MostSearchedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(40),
        Customtext(
          text: 'Most Searched.',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        Gap(20),
       SizedBox(
        height: 400,
         child: GridView.builder(
          itemCount: 20,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.4),
           itemBuilder: (context, index) {
          return   MostsearchedMoviecard(
                    mostsearchedMoviecardModel: MostsearchedMoviecardModel(
                      movieImage: 'assets/images/movieTest.png',
                      movieName: 'Secret Wars',
                      year: 2025,
                    ),
                  );
           },),
       ),
       Gap(20)
      ],
    );
  }
}
