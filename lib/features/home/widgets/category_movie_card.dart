import 'package:flutter/material.dart';
import 'package:movix/features/home/data/categoriy_movie_card_model.dart';
import 'package:movix/shared/customText.dart';

class CategoryMovieCard extends StatelessWidget {
    final CategoriyMovieCardModel categoriyMovieCardModel;

  const CategoryMovieCard({super.key, required this.categoriyMovieCardModel});



  @override
  Widget build(BuildContext context) {
    return Stack(
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        categoriyMovieCardModel.movieImage,
        fit: BoxFit.cover,
      ),
    ),
    // تدرّج في الأسفل
    Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:35,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 30, 28, 28),
              Color.fromARGB(137, 0, 0, 0),
            ],
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        child: Customtext(text: categoriyMovieCardModel.title),
      ),
    ),
   
  ],
);

  }
}
