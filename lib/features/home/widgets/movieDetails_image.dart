import 'package:flutter/material.dart';

class MoviedetailsImage extends StatelessWidget {
  const MoviedetailsImage({super.key, required this.movieImage});
  final String movieImage ;

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45, // 45% of screen height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                image: DecorationImage(
                  image: AssetImage(movieImage),
                  fit: BoxFit.fill,
                ),
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 20)],
              ),
            );
  }
}