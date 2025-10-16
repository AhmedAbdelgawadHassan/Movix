import 'package:flutter/material.dart';
import 'package:movix/features/home/widgets/movieDetails_card.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MoviedetailsCard()
      ),
    );
  }
}
