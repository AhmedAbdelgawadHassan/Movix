
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/data/mostSearched_movieCard_model.dart';
import 'package:movix/shared/customText.dart';

class MostsearchedMoviecard extends StatelessWidget {
  const MostsearchedMoviecard({super.key, required this.mostsearchedMoviecardModel});
  final MostsearchedMoviecardModel mostsearchedMoviecardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
         color: Colors.transparent,
        child: SizedBox(
          width: 115,
          height: 175,
          child: Column(
            children: [
              Image(image: AssetImage(mostsearchedMoviecardModel.movieImage),height: 120,),
              Gap(5),
              Customtext(text: mostsearchedMoviecardModel.movieName,fontSize: 14,),
              Gap(5),
              Customtext(text:mostsearchedMoviecardModel.year.toString(),fontSize: 13,color: Colors.grey,)
          
            ],
          ),
        ),
    );
  }
}