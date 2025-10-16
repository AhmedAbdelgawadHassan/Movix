import 'package:flutter/material.dart';
import 'package:movix/features/home/widgets/actor_card.dart';

class ActorsGridview extends StatelessWidget {
  const ActorsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 15,
        childAspectRatio: 2.9,
      ),
      itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 50),
            child: ActorCard(
                actorName: 'Maria Espaes',
                actorImage: 'assets/images/movie 1.png',
                characterName: 'As Morbius',
              ),
          );
      },
    );
  }
}