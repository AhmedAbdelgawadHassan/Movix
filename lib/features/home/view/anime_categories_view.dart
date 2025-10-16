// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:movix/features/home/data/categoriy_movie_card_model.dart';
import 'package:movix/features/home/widgets/category_movie_card.dart';

class AnimeCategoriesView extends StatelessWidget {
  AnimeCategoriesView({super.key});     
  List<CategoriyMovieCardModel> animeList = [ // List of anime categories with images and titles in the same model (CategoriyMovieCardModel)
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime action.jpeg',title: 'Action',),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime adventure.jpeg',title: 'Adventure'),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime comdy.jpeg',title: 'Comedy'),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime drama.jpeg',title: 'Drama',),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime fantasy.jpeg',title: 'Fantasy',),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime horror.jpeg',title: 'Horror',),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime hostrical.jpeg',title: 'Historical',),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime mystry.jpeg',title: 'Mystery'),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime romance.jpeg',title: 'Romance'),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime sci fi.jpeg',title: 'Sci-Fi'),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime sports.jpeg',title: 'Sports'),
    CategoriyMovieCardModel(movieImage: 'assets/images/anime_categories/anime thriller.jpeg', title: 'Thriller'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            itemCount: animeList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: CategoryMovieCard(
                  categoriyMovieCardModel: animeList[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
