import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/data/movie_model.dart';
import 'package:movix/shared/customText.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  movieModel.imageUrl,
                ),
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.white, blurRadius: 12)],
            ),
          ),
          Gap(10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35, // Take the same width as the image
            child: Customtext(
              text: movieModel.movieName,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              maxLines: 1,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16,fontWeight: FontWeight.bold,),
              Gap(7),
              Customtext(
                text: movieModel.rating.toString(),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
