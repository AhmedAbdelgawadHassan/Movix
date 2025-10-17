import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/features/home/data/movie_model.dart';
import 'package:movix/features/home/view/movie_details_view.dart';
import 'package:movix/features/home/widgets/movie_card.dart';
import 'package:movix/shared/customText.dart';

class AnimesView extends StatelessWidget {
  const AnimesView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_outlined, color: Colors.white,)),
        ),
        body:Transform.translate(    // to move up the whole body  //عشان احرك  الصفحة كلها لفوق 
          offset: Offset(0, -15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Customtext(text: "$categoryName Movies", fontSize: 25, fontWeight: FontWeight.bold,),//category name come from Movies_Category_view
                Gap(20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MovieDetailsView();
                          }));
                        },
                        child: MovieCard(
                          movieModel:  MovieModel(
                          movieName: "kingdom of heaven",
                          imageUrl: "assets/images/movies_cateogries/Hostrical.jpeg",
                          rating: 4.5,
                          description: "Description of Movie $index",
                          yearofRelease: 2022,
                          usersRated: 234,
                          companyProduced: "Production Company",
                          actors_characters: {"Actor Name": "Character Name"},
                        )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
            
          
    ),
      
    );
  }
}
