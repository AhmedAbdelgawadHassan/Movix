// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:movix/features/home/data/categoriy_movie_card_model.dart';
import 'package:movix/features/home/widgets/category_movie_card.dart';

class MoviesView extends StatelessWidget {
  MoviesView({super.key});
 List<CategoriyMovieCardModel> moviesList = [
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/Action.jpeg', title: 'Action'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/adventure.jpeg', title: 'Adventure'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/animation.jpeg', title: 'Animation'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/comdeyy.jpeg', title: 'Comedy'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/crime.jpeg', title: 'Crime'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/Drama.jpeg', title: 'Drama'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/fantasy.jpeg', title: 'Fantasy'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/Horror.jpeg', title: 'Horror'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/Hostrical.jpeg', title: 'Historical'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/Romance.jpeg', title: 'Romance'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/sci_fi.jpeg', title: 'Sci-Fi'),
  CategoriyMovieCardModel(movieImage: 'assets/images/movies_cateogries/Thriller.jpeg', title: 'Thriller'),
];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: GridView.builder(
          itemCount: moviesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: CategoryMovieCard(
               categoriyMovieCardModel: moviesList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
