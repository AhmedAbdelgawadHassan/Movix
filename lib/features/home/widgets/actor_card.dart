import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActorCard extends StatelessWidget {
  final String actorName;
  final String actorImage;
  final String characterName;

  const ActorCard({
    super.key,
    required this.actorName,
    required this.actorImage,
    required this.characterName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.4, //40% of screen width
          height: 66,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                actorName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              Gap(5),
              Text(
                'As $characterName',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
        ),
          // actor image
        Positioned(
            top: 0,
            left:-MediaQuery.of(context).size.width * 0.4/4,// 1/4th of container width
          child: Container(
            padding: const EdgeInsets.all(2),// Border width
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                end: Alignment.centerLeft,
                begin: Alignment.centerRight,
                colors: [
                  Colors.purple,
                   Colors.blue, Colors.cyan
                ],
              ),
            ),
            child: CircleAvatar(radius: 30,backgroundImage: AssetImage(actorImage), ))),
      ],
    );
  }
}
